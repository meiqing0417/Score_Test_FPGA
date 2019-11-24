#include "stdio.h"
#include "conv_core.h"

#define IN_WIDTH 10
#define IN_HEIGHT 10
#define IN_CH 1
#define IN_CH_DIV_K ((IN_CH+K-1)/K)

#define KERNEL_WIDTH 5
#define KERNEL_HEIGHT 5
#define X_STRIDE 1
#define Y_STRIDE 1

#define RELU_EN  0
#define MODE     0          //0:VALID, 1:SAME
#define X_PADDING (MODE?(KERNEL_WIDTH-1)/2:0)
#define Y_PADDING (MODE?(KERNEL_HEIGHT-1)/2:0)

#define OUT_CH 1
#define OUT_CH_DIV_K ((OUT_CH+K-1)/K)
#define OUT_WIDTH ((IN_WIDTH+2*X_PADDING-KERNEL_WIDTH)/X_STRIDE+1)
#define OUT_HEIGHT ((IN_HEIGHT+2*Y_PADDING-KERNEL_HEIGHT)/Y_STRIDE+1)

int main(void)
{
	dtype_bus feature_in[IN_CH_DIV_K][IN_HEIGHT][IN_WIDTH];
	dtype_bus W[OUT_CH][KERNEL_HEIGHT][KERNEL_WIDTH][IN_CH_DIV_K];
	dtype_bus feature_out[OUT_CH_DIV_K][OUT_HEIGHT][OUT_WIDTH];

	for(int cin=0;cin<IN_CH_DIV_K;cin++)
		for(int i=0;i<IN_HEIGHT;i++)
			for(int j=0;j<IN_WIDTH;j++)
				for(int k=0;k<K;k++)
					if((cin*K+k)<IN_CH)
						feature_in[cin][i][j].range(16*k+15,16*k)=-(1<<14);//i*IN_WIDTH+j;
					else
						feature_in[cin][i][j].range(16*k+15,16*k)=0;

	for(int i=0;i<KERNEL_HEIGHT;i++)
		for(int j=0;j<KERNEL_WIDTH;j++)
			for(int cin=0;cin<IN_CH_DIV_K;cin++)
				for(int cout=0;cout<OUT_CH;cout++)
					for(int k=0;k<K;k++)
						W[cout][i][j][cin].range(16*k+15,16*k)=(1<<14);//(i*KERNEL_WIDTH+j);//(cout==0)?(i*KERNEL_WIDTH+j):0;

	for(int cout=0;cout<OUT_CH_DIV_K;cout++)
		for(int i=0;i<OUT_HEIGHT;i++)
			for(int j=0;j<OUT_WIDTH;j++)
				feature_out[cout][i][j]=0;

	printf("1234\n");

	Conv(IN_CH,IN_HEIGHT,IN_WIDTH,OUT_CH,
			KERNEL_WIDTH,KERNEL_HEIGHT,X_STRIDE,Y_STRIDE,MODE,RELU_EN,
			&feature_in[0][0][0],14,
			&W[0][0][0][0],14,
			&feature_out[0][0][0],10
		);//mode: 0:VALID, 1:SAME

	for(int i=0;i<OUT_HEIGHT;i++)
		for(int j=0;j<OUT_WIDTH;j++)
			for(int cout=0;cout<OUT_CH_DIV_K;cout++)
			{
				std::cout<<"OUT["<<cout<<"]["<<i<<"]["<<j<<"]="<<(dtype_dat)feature_out[cout][i][j].range(15,0)<<std::endl;
			}

	return 0;
}
