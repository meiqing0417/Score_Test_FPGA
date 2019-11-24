#include "pool.h"

void pool(hls::stream<dtype_bus> &in,hls::stream<dtype_stream> &out,
		int ch_div_K,int height_in,int width_in,
		int height_out,int width_out,int Kx,int Ky)
{
	#pragma HLS INTERFACE s_axilite port=return
	#pragma HLS INTERFACE s_axilite port=Ky
	#pragma HLS INTERFACE s_axilite port=width_in
	#pragma HLS INTERFACE s_axilite port=Kx
	#pragma HLS INTERFACE s_axilite port=height_in
	#pragma HLS INTERFACE s_axilite port=height_out
	#pragma HLS INTERFACE s_axilite port=width_out
	#pragma HLS INTERFACE s_axilite port=ch_div_K

	#pragma HLS DATAFLOW
	#pragma HLS INTERFACE axis register both port=out
	#pragma HLS INTERFACE axis register both port=in

	hls::stream<dtype_bus> stream_tp;
	#pragma HLS STREAM variable=stream_tp depth=8 dim=1

	hls::stream<dtype_bus> stream_tp2;

	pool_1D(in,stream_tp,ch_div_K,height_in,width_in,Kx);
	pool_2D(stream_tp,stream_tp2,ch_div_K,height_in,width_out,Ky);
	hs2axis(stream_tp2,out,ch_div_K,height_out,width_out);
}

void hs2axis(hls::stream<dtype_bus> &in,hls::stream<dtype_stream> &out,int ch_div_K,int height_out,int width_out)
{
	#pragma HLS INTERFACE ap_stable port=height_out
	#pragma HLS INTERFACE ap_stable port=width_out
	#pragma HLS INTERFACE ap_stable port=ch_div_K

	for(int i=0;i<height_out*width_out*ch_div_K;i++)
	{
		#pragma HLS PIPELINE II=1
		#pragma HLS LOOP_TRIPCOUNT min=200 max=200 avg=200

		dtype_stream tp;
		tp.data=in.read();
		if(i==(height_out*width_out*ch_div_K-1))
			tp.last=1;
		else
			tp.last=0;
		out.write(tp);
	}
}

void pool_1D(hls::stream<dtype_bus> &in,hls::stream<dtype_bus> &out,int ch_div_K,int height_in,int width_in,int Kx)
{
//	#pragma HLS INTERFACE axis register both port=out
//	#pragma HLS INTERFACE axis register both port=in

	#pragma HLS INTERFACE ap_stable port=width_in
	#pragma HLS INTERFACE ap_stable port=Kx
	#pragma HLS INTERFACE ap_stable port=height_in
	#pragma HLS INTERFACE ap_stable port=ch_div_K

	dtype_bus in_d0,in_d1,in_d2,in_d3;

	for(int c=0;c<ch_div_K;c++)
	{
		#pragma HLS LOOP_TRIPCOUNT min=1 max=1 avg=1
		for(int i=0;i<height_in;i++)
		{
			#pragma HLS LOOP_TRIPCOUNT min=20 max=20 avg=20
			for(int j=0;j<width_in;j++)
			{
				#pragma HLS PIPELINE II=1
				#pragma HLS LOOP_TRIPCOUNT min=20 max=20 avg=20

				in_d3=in_d2;in_d2=in_d1;in_d1=in_d0;
				in_d0=in.read();

				dtype_bus tp_out;
				if((j+1)%Kx==0)//if need output
				{
					for(int k=0;k<K;k++)
					{
						dtype_dat tp_d0=in_d0.range(16*k+15,16*k);
						dtype_dat tp_d1=in_d1.range(16*k+15,16*k);
						dtype_dat tp_d2=in_d2.range(16*k+15,16*k);
						dtype_dat tp_d3=in_d3.range(16*k+15,16*k);

						switch(Kx)
						{
							case 1:{tp_out.range(16*k+15,16*k)=tp_d0;break;}
							case 2:{tp_out.range(16*k+15,16*k)=MAX(tp_d0,tp_d1);break;}
							case 3:{tp_out.range(16*k+15,16*k)=MAX(tp_d0,MAX(tp_d1,tp_d2));break;}
							case 4:{tp_out.range(16*k+15,16*k)=MAX(tp_d0,MAX(tp_d1,MAX(tp_d2,tp_d3)));break;}
						}
					}
					out.write(tp_out);
				}
			}
		}
	}
}

void pool_2D(hls::stream<dtype_bus> &in,hls::stream<dtype_bus> &out,int ch_div_K,int height_in,int width_out,int Ky)
{
//	#pragma HLS INTERFACE axis register both port=out
//	#pragma HLS INTERFACE axis register both port=in

	#pragma HLS INTERFACE ap_stable port=height_in
	#pragma HLS INTERFACE ap_stable port=Ky
	#pragma HLS INTERFACE ap_stable port=width_out
	#pragma HLS INTERFACE ap_stable port=ch_div_K

	dtype_bus buf[POOL_2D_BUF_DEP];
	//#pragma HLS ARRAY_PARTITION variable=buf complete dim=1

	int ptr=0;

	for(int c=0;c<ch_div_K;c++)
	{
		#pragma HLS LOOP_TRIPCOUNT min=1 max=1 avg=1
		for(int i=0;i<height_in;i++)
		{
			#pragma HLS LOOP_TRIPCOUNT min=20 max=20 avg=20
			for(int j=0;j<width_out;j++)
			{
				#pragma HLS PIPELINE II=1
				#pragma HLS LOOP_TRIPCOUNT min=10 max=10 avg=10

				buf[ptr]=in.read();

				if((i+1)%Ky==0)//if need output
				{
					int ptr_tp=ptr;
					dtype_bus in_d0,in_d1,in_d2,in_d3;

					in_d0=buf[ptr_tp];

					if(ptr_tp<width_out)
						ptr_tp=ptr_tp-width_out+POOL_2D_BUF_DEP;
					else
						ptr_tp=ptr_tp-width_out;
					in_d1=buf[ptr_tp];

					if(ptr_tp<width_out)
						ptr_tp=ptr_tp-width_out+POOL_2D_BUF_DEP;
					else
						ptr_tp=ptr_tp-width_out;
					in_d2=buf[ptr_tp];

					if(ptr_tp<width_out)
						ptr_tp=ptr_tp-width_out+POOL_2D_BUF_DEP;
					else
						ptr_tp=ptr_tp-width_out;
					in_d3=buf[ptr_tp];

					dtype_bus tp_out;
					for(int k=0;k<K;k++)
					{
						dtype_dat tp_d0=in_d0.range(16*k+15,16*k);
						dtype_dat tp_d1=in_d1.range(16*k+15,16*k);
						dtype_dat tp_d2=in_d2.range(16*k+15,16*k);
						dtype_dat tp_d3=in_d3.range(16*k+15,16*k);

						switch(Ky)
						{
							case 1:{tp_out.range(16*k+15,16*k)=tp_d0;break;}
							case 2:{tp_out.range(16*k+15,16*k)=MAX(tp_d0,tp_d1);break;}
							case 3:{tp_out.range(16*k+15,16*k)=MAX(tp_d0,MAX(tp_d1,tp_d2));break;}
							case 4:{tp_out.range(16*k+15,16*k)=MAX(tp_d0,MAX(tp_d1,MAX(tp_d2,tp_d3)));break;}
						}
					}
					out.write(tp_out);
				}

				if(ptr==POOL_2D_BUF_DEP-1)
					ptr=0;
				else
					ptr++;
			}
		}
	}
}

