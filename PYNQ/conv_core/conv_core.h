#ifndef __CONV_CORE_H__
#define __CONV_CORE_H__

#include <ap_int.h>
#include <iostream>

using namespace std;

#define K 8

typedef ap_int<16>   dtype_dat;
typedef ap_int<16*K> dtype_bus;

typedef ap_int<32>   dtype_mul;
typedef ap_int<32*K>   dtype_mul_bus;
typedef ap_int<40>   dtype_acc;

void Conv(ap_uint<16> CHin,ap_uint<16> Hin,ap_uint<16> Win,ap_uint<16> CHout,
		ap_uint<8> Kx,ap_uint<8> Ky,ap_uint<8> Sx,ap_uint<8> Sy,ap_uint<1> mode,ap_uint<1> relu_en,
		dtype_bus feature_in[],ap_uint<4> feature_in_precision,
		dtype_bus W[],ap_uint<4> W_precision,
		dtype_bus feature_out[],ap_uint<4> feature_out_precision
	);//mode: 0:VALID, 1:SAME

#endif
