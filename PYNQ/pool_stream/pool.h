#ifndef __POOL_H__
#define __POOL_H__

#include <iostream>
#include <hls_stream.h>
#include <ap_int.h>

#define MAX(A,B) ((A>B)?A:B)

#define K 8
#define POOL_2D_BUF_DEP 128

typedef ap_int<16>   dtype_dat;
typedef ap_int<16*K> dtype_bus;

typedef struct
{
	dtype_bus data;
	bool last;
}dtype_stream;

void pool(hls::stream<dtype_bus> &in,hls::stream<dtype_stream> &out,int ch_div_K,int height_in,int width_in,int height_out,int width_out,int Kx,int Ky);
void pool_1D(hls::stream<dtype_bus> &in,hls::stream<dtype_bus> &out,int ch_div_K,int height_in,int width_in,int Kx);
void pool_2D(hls::stream<dtype_bus> &in,hls::stream<dtype_bus> &out,int ch_div_K,int height_in,int width_out,int Ky);
void hs2axis(hls::stream<dtype_bus> &in,hls::stream<dtype_stream> &out,int ch_div_K,int height_out,int width_out);

#endif
