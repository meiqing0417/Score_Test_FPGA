#include "conv_core.h"

//Feature: [C/K][H][W][K]
//kernel: [CHout][Ky][Kx][CHin/K][K]


void Conv(ap_uint<16> CHin,ap_uint<16> Hin,ap_uint<16> Win,ap_uint<16> CHout,
		ap_uint<8> Kx,ap_uint<8> Ky,ap_uint<8> Sx,ap_uint<8> Sy,ap_uint<1> mode,ap_uint<1> relu_en,
		dtype_bus feature_in[],ap_uint<4> feature_in_precision,
		dtype_bus W[],ap_uint<4> W_precision,
		dtype_bus feature_out[],ap_uint<4> feature_out_precision
	)//mode: 0:VALID, 1:SAME
{
	#pragma HLS INTERFACE s_axilite port=return
	#pragma HLS INTERFACE s_axilite port=feature_out_precision
	#pragma HLS INTERFACE s_axilite port=feature_in_precision
	#pragma HLS INTERFACE s_axilite port=Sy
	#pragma HLS INTERFACE s_axilite port=Kx
	#pragma HLS INTERFACE s_axilite port=Win
	#pragma HLS INTERFACE s_axilite port=Sx
	#pragma HLS INTERFACE s_axilite port=Hin
	#pragma HLS INTERFACE s_axilite port=W_precision
	#pragma HLS INTERFACE s_axilite port=relu_en
	#pragma HLS INTERFACE s_axilite port=Ky
	#pragma HLS INTERFACE s_axilite port=CHin
	#pragma HLS INTERFACE s_axilite port=mode
	#pragma HLS INTERFACE s_axilite port=CHout

	#pragma HLS INTERFACE m_axi depth=4294967295 port=feature_out offset=slave
	#pragma HLS INTERFACE m_axi depth=4294967295 port=W offset=slave
	#pragma HLS INTERFACE m_axi depth=4294967295 port=feature_in offset=slave


	ap_uint<8> pad_x,pad_y;
	ap_uint<16> CHin_div_K=(CHin+K-1)/K;
	ap_uint<5> out_truncate;
	out_truncate=feature_in_precision+W_precision-feature_out_precision;

	if(mode==0)
	{
		pad_x=0;pad_y=0;
	}
	else
	{
		pad_x=(Kx-1)/2;pad_y=(Ky-1)/2;
	}
	ap_uint<16> Hout,Wout;
	Wout=(Win+2*pad_x-Kx)/Sx+1;
	Hout=(Hin+2*pad_y-Ky)/Sy+1;

	for(int cout=0;cout<CHout;cout=cout+1)
	{
		#pragma HLS LOOP_TRIPCOUNT min=4 max=4 avg=4
		for(int i=0;i<Hout;i++)
		{
			#pragma HLS LOOP_TRIPCOUNT min=4 max=4 avg=4
			for(int j=0;j<Wout;j++)
			{
				#pragma HLS LOOP_TRIPCOUNT min=4 max=4 avg=4
				dtype_acc sum=0;
				for(int ii=0;ii<Ky;ii++)
				{
					#pragma HLS LOOP_TRIPCOUNT min=4 max=4 avg=4
					for(int jj=0;jj<Kx;jj++)
					{
						#pragma HLS LOOP_TRIPCOUNT min=4 max=4 avg=4
						ap_int<16> h=i*Sy-pad_y+ii;
						ap_int<16> w=j*Sx-pad_x+jj;
						{
							for(int cin=0;cin<CHin_div_K;cin=cin+1)
							{
								#pragma HLS PIPELINE
								#pragma HLS LOOP_TRIPCOUNT min=4 max=4 avg=4

								dtype_mul_bus tp;
								dtype_bus dat;
								dtype_bus wt;
								if(h>=0 && w>=0 && h<Hin && w<Win)
								{
									dat=feature_in[cin*Hin*Win+h*Win+w];
									wt=W[cout*CHin_div_K*Kx*Ky+ii*CHin_div_K*Kx+jj*CHin_div_K+cin];
									//std::cout<<"dat="<<dat<<",W="<<wt<<std::endl;
								}
								else
								{
									dat=0;
									wt=0;
								}

								for(int k=0;k<K;k++)
								{
									tp.range(k*32+31,k*32)=(dtype_dat)dat.range(k*16+15,k*16)*(dtype_dat)wt.range(k*16+15,k*16);
								}
								for(int k=0;k<K;k++)
								{
									sum+=(dtype_mul)tp.range(k*32+31,k*32);
									//std::cout<<"sum="<<sum<<std::endl;
								}
								//std::cout<<"sum="<<sum<<std::endl;
							}
						}
					}
				}

				//std::cout<<"sum="<<sum<<std::endl;

				if(relu_en & sum<0)
					sum=0;

				dtype_acc res=sum>>out_truncate;
				//std::cout<<"res="<<res<<std::endl;

				if(res>32767)
					res=32767;
				else
					if(res<-32768)
						res=-32768;

				dtype_dat res_16=res;

//				std::cout<<"res_16="<<res_16<<std::endl;
//				std::cout<<"feature_out["<<(cout/K)*Wout*Hout+i*Wout+j<<"].range("<<(cout%K)*16+15<<","<<(cout%K)*16<<")="<<res<<std::endl;
				feature_out[(cout/K)*Wout*Hout+i*Wout+j].range((cout%K)*16+15,(cout%K)*16)=res;
			}
		}
	}
}
