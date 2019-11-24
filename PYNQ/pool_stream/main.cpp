#include "pool.h"

int main(void)
{
	hls::stream<dtype_bus> in;
	hls::stream<dtype_stream> out;

	int ch_div_K=1;
	int height_in=40;
	int width_in=40;
	int Kx=1;
	int Ky=1;

	for(int c=0;c<ch_div_K;c++)
	{
		for(int i=0;i<height_in*width_in;i++)
		{
			dtype_bus tp;
			for(int j=0;j<K;j++)
				tp.range(16*j+15,16*j)=i;
			in.write(tp);
		}
	}

	pool(in,out,ch_div_K,height_in,width_in,height_in/Ky,width_in/Kx,Kx,Ky);

	for(int c=0;c<ch_div_K;c++)
	{
		for(int i=0;i<(height_in/Ky)*(width_in/Kx);i++)
		{
			dtype_stream tp=out.read();
			std::cout<<"out:"<<i/(width_in/Kx)<<","<<i%(width_in/Kx)<<":"<<tp.data.toStringUnsigned(16)<<",last="<<tp.last<<std::endl;
		}
	}
}
