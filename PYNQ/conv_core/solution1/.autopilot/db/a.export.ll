; ModuleID = 'C:/Users/caiyujie/Desktop/gongkaike_hls/code/day6/conv_core/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@mode3 = internal constant [10 x i8] c"s_axilite\00"
@mode1 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@bundle4 = internal constant [1 x i8] zeroinitializer
@bundle2 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@Conv_str = internal unnamed_addr constant [5 x i8] c"Conv\00"
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str4 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"gmem\00", align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str10 = private unnamed_addr constant [12 x i8] c"hls_label_5\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i9 @llvm.part.select.i9(i9, i32, i32) nounwind readnone

declare i40 @llvm.part.select.i40(i40, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i17 @llvm.part.select.i17(i17, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare i128 @llvm.part.select.i128(i128, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak i1 @_ssdm_op_WriteResp.m_axi.i128P(i128*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i128P(i128*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.i128P(i128*, i128, i16) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i128P(i128*, i32) {
entry:
  ret i1 true
}

define weak i8 @_ssdm_op_Read.s_axilite.i8(i8) {
entry:
  ret i8 %0
}

define weak i4 @_ssdm_op_Read.s_axilite.i4(i4) {
entry:
  ret i4 %0
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i16 @_ssdm_op_Read.s_axilite.i16(i16) {
entry:
  ret i16 %0
}

define weak i1 @_ssdm_op_Read.s_axilite.i1(i1) {
entry:
  ret i1 %0
}

define weak i128 @_ssdm_op_Read.m_axi.i128P(i128*) {
entry:
  %empty = load i128* %0
  ret i128 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.select.i9(i9 %0, i32 %1, i32 %2)
  %empty_14 = trunc i9 %empty to i8
  ret i8 %empty_14
}

declare i3 @_ssdm_op_PartSelect.i3.i16.i32.i32(i16, i32, i32) nounwind readnone

define weak i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_15 = trunc i32 %empty to i28
  ret i28 %empty_15
}

define weak i25 @_ssdm_op_PartSelect.i25.i40.i32.i32(i40, i32, i32) nounwind readnone {
entry:
  %empty = call i40 @llvm.part.select.i40(i40 %0, i32 %1, i32 %2)
  %empty_16 = trunc i40 %empty to i25
  ret i25 %empty_16
}

declare i16 @_ssdm_op_PartSelect.i16.i19.i32.i32(i19, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_17 = trunc i128 %empty to i16
  ret i16 %empty_17
}

define weak i14 @_ssdm_op_PartSelect.i14.i17.i32.i32(i17, i32, i32) nounwind readnone {
entry:
  %empty = call i17 @llvm.part.select.i17(i17 %0, i32 %1, i32 %2)
  %empty_18 = trunc i17 %empty to i14
  ret i14 %empty_18
}

define weak i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_19 = trunc i16 %empty to i13
  ret i13 %empty_19
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_20 = shl i9 1, %empty
  %empty_21 = and i9 %0, %empty_20
  %empty_22 = icmp ne i9 %empty_21, 0
  ret i1 %empty_22
}

define weak i1 @_ssdm_op_BitSelect.i1.i40.i32(i40, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i40
  %empty_23 = shl i40 1, %empty
  %empty_24 = and i40 %0, %empty_23
  %empty_25 = icmp ne i40 %empty_24, 0
  ret i1 %empty_25
}

define weak i1 @_ssdm_op_BitSelect.i1.i16.i32(i16, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i16
  %empty_26 = shl i16 1, %empty
  %empty_27 = and i16 %0, %empty_26
  %empty_28 = icmp ne i16 %empty_27, 0
  ret i1 %empty_28
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_29 = zext i1 %1 to i9
  %empty_30 = shl i9 %empty, 1
  %empty_31 = or i9 %empty_30, %empty_29
  ret i9 %empty_31
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3, i4) nounwind readnone {
entry:
  %empty = zext i3 %0 to i7
  %empty_32 = zext i4 %1 to i7
  %empty_33 = shl i7 %empty, 4
  %empty_34 = or i7 %empty_33, %empty_32
  ret i7 %empty_34
}

define void @Conv(i128* %gmem, i16 %CHin_V, i16 %Hin_V, i16 %Win_V, i16 %CHout_V, i8 %Kx_V, i8 %Ky_V, i8 %Sx_V, i8 %Sy_V, i1 %mode_V, i1 %relu_en_V, i32 %feature_in_V, i4 %feature_in_precision_V, i32 %W_V, i4 %W_precision_V, i32 %feature_out_V, i4 %feature_out_precision_V) {
_ifconv1:
  %feature_out_precisio = call i4 @_ssdm_op_Read.s_axilite.i4(i4 %feature_out_precision_V)
  %feature_out_V_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %feature_out_V)
  %W_precision_V_read = call i4 @_ssdm_op_Read.s_axilite.i4(i4 %W_precision_V)
  %W_V_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %W_V)
  %feature_in_precision = call i4 @_ssdm_op_Read.s_axilite.i4(i4 %feature_in_precision_V)
  %feature_in_V_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %feature_in_V)
  %relu_en_V_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %relu_en_V)
  %mode_V_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %mode_V)
  %Sy_V_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %Sy_V)
  %Sx_V_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %Sx_V)
  %Ky_V_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %Ky_V)
  %Kx_V_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %Kx_V)
  %CHout_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %CHout_V)
  %Win_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %Win_V)
  %Hin_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %Hin_V)
  %CHin_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %CHin_V)
  %tmp = call i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32 %feature_out_V_read, i32 4, i32 31)
  %tmp_cast = zext i28 %tmp to i46
  %tmp_1 = call i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32 %W_V_read, i32 4, i32 31)
  %tmp_6_cast = zext i28 %tmp_1 to i46
  %tmp_2 = call i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32 %feature_in_V_read, i32 4, i32 31)
  %tmp_11_cast = zext i28 %tmp_2 to i47
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %gmem), !map !193
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %CHin_V), !map !199
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %Hin_V), !map !205
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %Win_V), !map !209
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %CHout_V), !map !213
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Kx_V), !map !217
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Ky_V), !map !221
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Sx_V), !map !225
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Sy_V), !map !229
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %mode_V), !map !233
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %relu_en_V), !map !237
  call void (...)* @_ssdm_op_SpecBitsMap(i4 %feature_in_precision_V), !map !241
  call void (...)* @_ssdm_op_SpecBitsMap(i4 %W_precision_V), !map !245
  call void (...)* @_ssdm_op_SpecBitsMap(i4 %feature_out_precision_V), !map !249
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @Conv_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i4 %feature_out_precision_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i4 %feature_in_precision_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %Sy_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %Kx_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %Win_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %Sx_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %Hin_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i4 %W_precision_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %relu_en_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %Ky_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %CHin_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %mode_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %CHout_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %feature_out_V, [10 x i8]* @mode3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 4294967295, [1 x i8]* @bundle4, [6 x i8]* @p_str4, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %W_V, [10 x i8]* @mode1, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 4294967295, [1 x i8]* @bundle2, [6 x i8]* @p_str4, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* %gmem, [6 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 4294967295, [5 x i8]* @p_str3, [6 x i8]* @p_str4, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %feature_in_V, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 4294967295, [1 x i8]* @bundle, [6 x i8]* @p_str4, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %lhs_V_cast = zext i16 %CHin_V_read to i17
  %r_V_1_tr = add i17 7, %lhs_V_cast
  %CHin_div_K_V = call i14 @_ssdm_op_PartSelect.i14.i17.i32.i32(i17 %r_V_1_tr, i32 3, i32 16)
  %lhs_V = zext i4 %feature_in_precision to i5
  %rhs_V = zext i4 %W_precision_V_read to i5
  %tmp_3 = zext i4 %feature_out_precisio to i5
  %r_V = add i5 %rhs_V, %lhs_V
  %out_truncate_V = sub i5 %r_V, %tmp_3
  %tmp_13_cast = zext i8 %Kx_V_read to i9
  %r_V_3_tr = add i9 -1, %tmp_13_cast
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %r_V_3_tr, i32 8)
  %p_neg1 = sub i9 1, %tmp_13_cast
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9 %p_neg1, i32 1, i32 8)
  %tmp_8 = call i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9 %r_V_3_tr, i32 1, i32 8)
  %tmp_9 = sub i8 0, %tmp_4
  %pad_x_V = select i1 %tmp_5, i8 %tmp_9, i8 %tmp_8
  %tmp_24_cast = zext i8 %Ky_V_read to i9
  %r_V_4_tr = add i9 -1, %tmp_24_cast
  %tmp_6 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %r_V_4_tr, i32 8)
  %p_neg2 = sub i9 1, %tmp_24_cast
  %tmp_11 = call i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9 %p_neg2, i32 1, i32 8)
  %tmp_12 = call i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9 %r_V_4_tr, i32 1, i32 8)
  %tmp_13 = sub i8 0, %tmp_11
  %pad_y_V = select i1 %tmp_6, i8 %tmp_13, i8 %tmp_12
  %p_1 = select i1 %mode_V_read, i8 %pad_x_V, i8 0
  %p_2 = select i1 %mode_V_read, i8 %pad_y_V, i8 0
  %r_V_5 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %p_1, i1 false)
  %r_V_5_cast = zext i9 %r_V_5 to i17
  %lhs_V_5_cast = zext i16 %Win_V_read to i17
  %r_V_6 = add i17 %lhs_V_5_cast, %r_V_5_cast
  %r_V_6_cast = zext i17 %r_V_6 to i18
  %rhs_V_3_cast = zext i8 %Kx_V_read to i18
  %r_V_7 = sub i18 %r_V_6_cast, %rhs_V_3_cast
  %r_V_7_cast = sext i18 %r_V_7 to i19
  %tmp_1_tr = zext i8 %Sx_V_read to i19
  %tmp_14 = sdiv i19 %r_V_7_cast, %tmp_1_tr
  %tmp_15 = trunc i19 %tmp_14 to i16
  %Wout_V = add i16 1, %tmp_15
  %r_V_9 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %p_2, i1 false)
  %r_V_9_cast = zext i9 %r_V_9 to i17
  %lhs_V_7_cast = zext i16 %Hin_V_read to i17
  %r_V_s = add i17 %lhs_V_7_cast, %r_V_9_cast
  %r_V_cast = zext i17 %r_V_s to i18
  %rhs_V_6_cast = zext i8 %Ky_V_read to i18
  %r_V_1 = sub i18 %r_V_cast, %rhs_V_6_cast
  %r_V_1_cast = sext i18 %r_V_1 to i19
  %tmp_4_tr = zext i8 %Sy_V_read to i19
  %tmp_16 = sdiv i19 %r_V_1_cast, %tmp_4_tr
  %tmp_17 = trunc i19 %tmp_16 to i16
  %Hout_V = add i16 1, %tmp_17
  %tmp_s = zext i8 %p_2 to i16
  %tmp_7 = zext i8 %p_1 to i16
  %rhs_V_12_cast1_cast = zext i14 %CHin_div_K_V to i22
  %rhs_V_12_cast_cast = zext i14 %CHin_div_K_V to i30
  %tmp_10 = zext i5 %out_truncate_V to i40
  %rhs_V_2_cast1 = zext i16 %Wout_V to i32
  %rhs_V_2_cast_cast = zext i16 %Wout_V to i29
  %rhs_V_5_cast = zext i16 %Hout_V to i45
  %tmp_18 = zext i8 %Sy_V_read to i16
  %tmp_19 = zext i8 %Sx_V_read to i16
  %rhs_V_1 = zext i16 %Win_V_read to i32
  %rhs_V_8_cast = zext i16 %Hin_V_read to i30
  %rhs_V_9_cast = zext i16 %Win_V_read to i45
  %rhs_V_10_cast1_cast = zext i8 %Kx_V_read to i30
  %rhs_V_10_cast_cast = zext i8 %Kx_V_read to i38
  %rhs_V_11_cast = zext i8 %Ky_V_read to i45
  %tmp_20 = zext i14 %CHin_div_K_V to i21
  %cast = zext i8 %Kx_V_read to i22
  %bound = mul i22 %cast, %rhs_V_12_cast1_cast
  %cast2 = zext i8 %Ky_V_read to i30
  %cast3 = zext i22 %bound to i30
  %bound4 = mul i30 %cast2, %cast3
  %cast4 = zext i16 %Hout_V to i32
  %bound1 = mul i32 %cast4, %rhs_V_2_cast1
  %cast5 = zext i16 %CHout_V_read to i48
  %cast6 = zext i32 %bound1 to i48
  %bound2 = mul i48 %cast5, %cast6
  %exitcond2_mid = icmp eq i16 %Wout_V, 0
  %exitcond3_mid = icmp eq i14 %CHin_div_K_V, 0
  br label %0

; <label>:0                                       ; preds = %_ifconv1, %_ifconv
  %indvar_flatten1 = phi i48 [ 0, %_ifconv1 ], [ %indvar_flatten_next2, %_ifconv ]
  %i_op_assign_s = phi i16 [ 0, %_ifconv1 ], [ %r_V_4_mid2_v_v_v_v_v, %_ifconv ]
  %indvar_flatten2 = phi i32 [ 0, %_ifconv1 ], [ %indvar_flatten_next1, %_ifconv ]
  %i_op_assign_6 = phi i16 [ 0, %_ifconv1 ], [ %i_op_assign_6_mid2, %_ifconv ]
  %i_op_assign_8 = phi i16 [ 0, %_ifconv1 ], [ %j, %_ifconv ]
  %i_op_assign_8_cast = zext i16 %i_op_assign_6 to i32
  %r_V_8 = mul i32 %i_op_assign_8_cast, %rhs_V_2_cast1
  %exitcond_flatten2 = icmp eq i48 %indvar_flatten1, %bound2
  %indvar_flatten_next2 = add i48 %indvar_flatten1, 1
  br i1 %exitcond_flatten2, label %3, label %.reset54

; <label>:1                                       ; preds = %.reset54, %.preheader.preheader
  %indvar_flatten3 = phi i30 [ 0, %.reset54 ], [ %indvar_flatten_next3, %.preheader.preheader ]
  %i_op_assign_7 = phi i8 [ 0, %.reset54 ], [ %tmp4_mid2_v_v_v_v_v_s, %.preheader.preheader ]
  %indvar_flatten = phi i22 [ 0, %.reset54 ], [ %indvar_flatten_next, %.preheader.preheader ]
  %i_op_assign_9 = phi i8 [ 0, %.reset54 ], [ %i_op_assign_9_mid2, %.preheader.preheader ]
  %p_0807_2 = phi i40 [ 0, %.reset54 ], [ %sum_V_7, %.preheader.preheader ]
  %i_op_assign = phi i14 [ 0, %.reset54 ], [ %cin, %.preheader.preheader ]
  %tmp_21 = zext i8 %i_op_assign_7 to i16
  %h_V = add i16 %tmp_21, %tmp_28_mid2
  %lhs_V_1 = sext i16 %h_V to i32
  %lhs_V_10_cast = sext i16 %h_V to i17
  %r_V_2 = mul nsw i32 %lhs_V_1, %rhs_V_1
  %slt = icmp slt i17 %lhs_V_10_cast, %lhs_V_7_cast
  %rev1 = xor i1 %slt, true
  %tmp_30 = zext i8 %i_op_assign_9 to i16
  %w_V = add i16 %tmp_30, %tmp_29
  %tmp_31 = or i16 %w_V, %h_V
  %tmp_36_cast = sext i16 %w_V to i17
  %tmp_37_cast = sext i16 %w_V to i32
  %tmp_33 = zext i8 %i_op_assign_9 to i21
  %tmp_38_cast = mul i21 %tmp_33, %tmp_20
  %tmp_34 = call i1 @_ssdm_op_BitSelect.i1.i16.i32(i16 %tmp_31, i32 15)
  %slt2 = icmp slt i17 %tmp_36_cast, %lhs_V_5_cast
  %rev2 = xor i1 %slt2, true
  %tmp2 = or i1 %rev1, %rev2
  %brmerge1 = or i1 %tmp2, %tmp_34
  %tmp3 = add i32 %r_V_2, %tmp_37_cast
  %exitcond_flatten3 = icmp eq i30 %indvar_flatten3, %bound4
  %indvar_flatten_next3 = add i30 %indvar_flatten3, 1
  br i1 %exitcond_flatten3, label %_ifconv, label %.reset6

; <label>:2                                       ; preds = %.reset6
  %lhs_V_12_cast = zext i14 %i_op_assign_mid2 to i30
  %r_V_10 = mul i30 %rhs_V_8_cast, %lhs_V_12_cast
  %lhs_V_13_cast = zext i30 %r_V_10 to i45
  %r_V_11 = mul i45 %rhs_V_9_cast, %lhs_V_13_cast
  %r_V_15_cast = zext i45 %r_V_11 to i46
  %tmp_38 = add i46 %r_V_15_cast, %tmp3_cast_mid2
  %tmp_46_cast_cast = sext i46 %tmp_38 to i47
  %feature_in_V2_sum = add i47 %tmp_46_cast_cast, %tmp_11_cast
  %feature_in_V2_sum_ca = sext i47 %feature_in_V2_sum to i64
  %gmem_addr_1 = getelementptr i128* %gmem, i64 %feature_in_V2_sum_ca
  %dat_V_req = call i1 @_ssdm_op_ReadReq.m_axi.i128P(i128* %gmem_addr_1, i32 1)
  %dat_V = call i128 @_ssdm_op_Read.m_axi.i128P(i128* %gmem_addr_1)
  %tmp_48_cast = zext i14 %i_op_assign_mid2 to i21
  %tmp5 = add i21 %tmp_48_cast, %tmp_38_cast_mid2
  %tmp5_cast = zext i21 %tmp5 to i45
  %tmp_39 = add i45 %tmp4_mid2, %tmp5_cast
  %tmp_51_cast_cast = zext i45 %tmp_39 to i46
  %W_V4_sum = add i46 %tmp_51_cast_cast, %tmp_6_cast
  %W_V4_sum_cast = zext i46 %W_V4_sum to i64
  %gmem_addr_2 = getelementptr i128* %gmem, i64 %W_V4_sum_cast
  %wt_V_req = call i1 @_ssdm_op_ReadReq.m_axi.i128P(i128* %gmem_addr_2, i32 1)
  %wt_V = call i128 @_ssdm_op_Read.m_axi.i128P(i128* %gmem_addr_2)
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %2, %.reset6
  %p_Val2_2 = phi i128 [ %wt_V, %2 ], [ 0, %.reset6 ]
  %p_Val2_1 = phi i128 [ %dat_V, %2 ], [ 0, %.reset6 ]
  %tmp_65 = trunc i128 %p_Val2_1 to i16
  %tmp_66 = trunc i128 %p_Val2_2 to i16
  %lhs_V_s = sext i16 %tmp_65 to i32
  %rhs_V_s = sext i16 %tmp_66 to i32
  %r_V_12 = mul nsw i32 %lhs_V_s, %rhs_V_s
  %p_Result_5_1 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_1, i32 16, i32 31)
  %p_Result_6_1 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_2, i32 16, i32 31)
  %lhs_V_22_1 = sext i16 %p_Result_5_1 to i32
  %rhs_V_15_1 = sext i16 %p_Result_6_1 to i32
  %r_V_29_1 = mul nsw i32 %lhs_V_22_1, %rhs_V_15_1
  %p_Result_5_2 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_1, i32 32, i32 47)
  %p_Result_6_2 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_2, i32 32, i32 47)
  %lhs_V_22_2 = sext i16 %p_Result_5_2 to i32
  %rhs_V_15_2 = sext i16 %p_Result_6_2 to i32
  %r_V_29_2 = mul nsw i32 %lhs_V_22_2, %rhs_V_15_2
  %p_Result_5_3 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_1, i32 48, i32 63)
  %p_Result_6_3 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_2, i32 48, i32 63)
  %lhs_V_22_3 = sext i16 %p_Result_5_3 to i32
  %rhs_V_15_3 = sext i16 %p_Result_6_3 to i32
  %r_V_29_3 = mul nsw i32 %lhs_V_22_3, %rhs_V_15_3
  %p_Result_5_4 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_1, i32 64, i32 79)
  %p_Result_6_4 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_2, i32 64, i32 79)
  %lhs_V_22_4 = sext i16 %p_Result_5_4 to i32
  %rhs_V_15_4 = sext i16 %p_Result_6_4 to i32
  %r_V_29_4 = mul nsw i32 %lhs_V_22_4, %rhs_V_15_4
  %p_Result_5_5 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_1, i32 80, i32 95)
  %p_Result_6_5 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_2, i32 80, i32 95)
  %lhs_V_22_5 = sext i16 %p_Result_5_5 to i32
  %rhs_V_15_5 = sext i16 %p_Result_6_5 to i32
  %r_V_29_5 = mul nsw i32 %lhs_V_22_5, %rhs_V_15_5
  %p_Result_5_6 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_1, i32 96, i32 111)
  %p_Result_6_6 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_2, i32 96, i32 111)
  %lhs_V_22_6 = sext i16 %p_Result_5_6 to i32
  %rhs_V_15_6 = sext i16 %p_Result_6_6 to i32
  %r_V_29_6 = mul nsw i32 %lhs_V_22_6, %rhs_V_15_6
  %p_Result_5_7 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_1, i32 112, i32 127)
  %p_Result_6_7 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_2, i32 112, i32 127)
  %lhs_V_22_7 = sext i16 %p_Result_5_7 to i32
  %rhs_V_15_7 = sext i16 %p_Result_6_7 to i32
  %r_V_29_7 = mul nsw i32 %lhs_V_22_7, %rhs_V_15_7
  %tmp_67_cast = sext i32 %r_V_12 to i33
  %tmp_53_1_cast = sext i32 %r_V_29_1 to i33
  %tmp_53_2_cast = sext i32 %r_V_29_2 to i33
  %tmp_53_3_cast = sext i32 %r_V_29_3 to i33
  %tmp_53_4_cast = sext i32 %r_V_29_4 to i33
  %tmp_53_5_cast = sext i32 %r_V_29_5 to i33
  %tmp_53_6_cast = sext i32 %r_V_29_6 to i33
  %tmp_53_7_cast = sext i32 %r_V_29_7 to i33
  %tmp7 = add i33 %tmp_53_1_cast, %tmp_67_cast
  %tmp7_cast = sext i33 %tmp7 to i34
  %tmp8 = add i33 %tmp_53_3_cast, %tmp_53_2_cast
  %tmp8_cast = sext i33 %tmp8 to i34
  %tmp6 = add i34 %tmp7_cast, %tmp8_cast
  %tmp6_cast = sext i34 %tmp6 to i35
  %tmp10 = add i33 %tmp_53_5_cast, %tmp_53_4_cast
  %tmp10_cast = sext i33 %tmp10 to i34
  %tmp11 = add i33 %tmp_53_7_cast, %tmp_53_6_cast
  %tmp11_cast = sext i33 %tmp11 to i34
  %tmp9 = add i34 %tmp10_cast, %tmp11_cast
  %tmp9_cast = sext i34 %tmp9 to i35
  %tmp_40 = add i35 %tmp6_cast, %tmp9_cast
  %p_cast = sext i35 %tmp_40 to i40
  %sum_V_7 = add nsw i40 %p_cast, %p_0807_2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_37)
  %cin = add i14 1, %i_op_assign_mid2
  %indvar_flatten_op = add i22 1, %indvar_flatten
  %indvar_flatten_next = select i1 %exitcond_flatten1, i22 1, i22 %indvar_flatten_op
  br label %1

.reset6:                                          ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond_flatten1 = icmp eq i22 %indvar_flatten, %bound
  %i_op_assign_9_mid = select i1 %exitcond_flatten1, i8 0, i8 %i_op_assign_9
  %ii8 = add i8 %i_op_assign_7, 1
  %tmp_21_mid1 = zext i8 %ii8 to i16
  %h_V_mid1 = add i16 %tmp_21_mid1, %tmp_28_mid2
  %h_V_mid2 = select i1 %exitcond_flatten1, i16 %h_V_mid1, i16 %h_V
  %lhs_V_1_mid1 = sext i16 %h_V_mid1 to i32
  %lhs_V_10_cast_mid1 = sext i16 %h_V_mid1 to i17
  %r_V_16_mid1 = mul nsw i32 %lhs_V_1_mid1, %rhs_V_1
  %r_V_16_mid2 = select i1 %exitcond_flatten1, i32 %r_V_16_mid1, i32 %r_V_2
  %slt3 = icmp slt i17 %lhs_V_10_cast_mid1, %lhs_V_7_cast
  %rev3 = xor i1 %slt3, true
  %tmp_42_not_mid2 = select i1 %exitcond_flatten1, i1 %rev3, i1 %rev1
  %tmp4_mid2_v_v_v_v_v_s = select i1 %exitcond_flatten1, i8 %ii8, i8 %i_op_assign_7
  %tmp4_mid2_v_v_v_v_v_1 = zext i8 %tmp4_mid2_v_v_v_v_v_s to i22
  %tmp4_mid2_v_v_v_v = mul i22 %tmp4_mid2_v_v_v_v_v_1, %rhs_V_12_cast1_cast
  %tmp4_mid2_v_v_v_cast = zext i22 %tmp4_mid2_v_v_v_v to i30
  %tmp4_mid2_v_v = mul i30 %tmp4_mid2_v_v_v_cast, %rhs_V_10_cast1_cast
  %tmp4_mid2_v = zext i30 %tmp4_mid2_v_v to i45
  %tmp4_mid2 = add i45 %r_V_13_mid2, %tmp4_mid2_v
  %tmp_34_mid = or i16 %tmp_29, %h_V_mid1
  %tmp_38_cast_mid = select i1 %exitcond_flatten1, i21 0, i21 %tmp_38_cast
  %tmp_63 = call i1 @_ssdm_op_BitSelect.i1.i16.i32(i16 %tmp_34_mid, i32 15)
  %tmp2_mid = or i1 %rev3, %rev
  %brmerge1_mid = or i1 %tmp2_mid, %tmp_63
  %brmerge1_mid3 = select i1 %exitcond_flatten1, i1 %brmerge1_mid, i1 %brmerge1
  %tmp3_mid = add i32 %r_V_16_mid1, %tmp_37_cast_mid
  %tmp3_cast_mid236_v = select i1 %exitcond_flatten1, i32 %tmp3_mid, i32 %tmp3
  %exitcond1 = icmp eq i14 %i_op_assign, %CHin_div_K_V
  %exitcond3_mid1 = select i1 %exitcond_flatten1, i1 %exitcond3_mid, i1 %exitcond1
  %jj = add i8 %i_op_assign_9_mid, 1
  %tmp_36 = or i1 %exitcond3_mid1, %exitcond_flatten1
  %i_op_assign_mid2 = select i1 %tmp_36, i14 0, i14 %i_op_assign
  %tmp_33_mid1 = zext i8 %jj to i16
  %w_V_mid1 = add i16 %tmp_33_mid1, %tmp_29
  %tmp_34_mid1 = or i16 %w_V_mid1, %h_V_mid2
  %tmp_36_cast_mid1 = sext i16 %w_V_mid1 to i17
  %tmp_37_cast_mid1 = sext i16 %w_V_mid1 to i32
  %tmp_38_mid1 = zext i8 %jj to i21
  %tmp_38_cast_mid1 = mul i21 %tmp_38_mid1, %tmp_20
  %tmp_38_cast_mid2 = select i1 %exitcond3_mid1, i21 %tmp_38_cast_mid1, i21 %tmp_38_cast_mid
  %tmp_64 = call i1 @_ssdm_op_BitSelect.i1.i16.i32(i16 %tmp_34_mid1, i32 15)
  %slt4 = icmp slt i17 %tmp_36_cast_mid1, %lhs_V_5_cast
  %rev4 = xor i1 %slt4, true
  %tmp2_mid1 = or i1 %tmp_42_not_mid2, %rev4
  %brmerge1_mid1 = or i1 %tmp2_mid1, %tmp_64
  %brmerge1_mid2 = select i1 %exitcond3_mid1, i1 %brmerge1_mid1, i1 %brmerge1_mid3
  %tmp3_mid1 = add i32 %r_V_16_mid2, %tmp_37_cast_mid1
  %tmp3_cast_mid2_v = select i1 %exitcond3_mid1, i32 %tmp3_mid1, i32 %tmp3_cast_mid236_v
  %tmp3_cast_mid2 = sext i32 %tmp3_cast_mid2_v to i46
  %i_op_assign_9_mid2 = select i1 %exitcond3_mid1, i8 %jj, i8 %i_op_assign_9_mid
  %tmp_37 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  br i1 %brmerge1_mid2, label %.preheader.preheader, label %2

_ifconv:                                          ; preds = %1
  %tmp_41 = call i1 @_ssdm_op_BitSelect.i1.i40.i32(i40 %p_0807_2, i32 39)
  %r_V_3 = and i1 %tmp_41, %relu_en_V_read
  %p_s = select i1 %r_V_3, i40 0, i40 %p_0807_2
  %r_V_13 = ashr i40 %p_s, %tmp_10
  %tmp_42 = call i25 @_ssdm_op_PartSelect.i25.i40.i32.i32(i40 %r_V_13, i32 15, i32 39)
  %icmp = icmp sgt i25 %tmp_42, 0
  %tmp_23 = icmp slt i40 %r_V_13, -32768
  %p_cast_35 = select i1 %icmp, i40 32767, i40 -32768
  %tmp_32 = or i1 %icmp, %tmp_23
  %p_0247_1 = select i1 %tmp_32, i40 %p_cast_35, i40 %r_V_13
  %tmp12 = add i32 %r_V_8_mid2, %i_op_assign_10_cast
  %tmp12_cast = zext i32 %tmp12 to i45
  %tmp_35 = add i45 %tmp12_cast, %r_V_4_mid2
  %tmp_40_cast_cast = zext i45 %tmp_35 to i46
  %loc_V = sext i40 %p_0247_1 to i128
  %feature_out_V6_sum = add i46 %tmp_40_cast_cast, %tmp_cast
  %feature_out_V6_sum_c = zext i46 %feature_out_V6_sum to i64
  %gmem_addr = getelementptr i128* %gmem, i64 %feature_out_V6_sum_c
  %p_Val2_req = call i1 @_ssdm_op_ReadReq.m_axi.i128P(i128* %gmem_addr, i32 1)
  %p_Val2_s = call i128 @_ssdm_op_Read.m_axi.i128P(i128* %gmem_addr)
  %tmp_43 = icmp ugt i7 %Lo_assign_cast_mid2_s, %Hi_assign_cast_mid2_s
  %tmp_44 = zext i7 %Lo_assign_cast_mid2_s to i8
  %tmp_45 = zext i7 %Hi_assign_cast_mid2_s to i8
  %tmp_46 = xor i8 %tmp_44, 127
  %tmp_47 = select i1 %tmp_43, i8 %tmp_44, i8 %tmp_45
  %tmp_48 = select i1 %tmp_43, i8 %tmp_45, i8 %tmp_44
  %tmp_49 = select i1 %tmp_43, i8 %tmp_46, i8 %tmp_44
  %tmp_50 = xor i8 %tmp_47, 127
  %tmp_51 = zext i8 %tmp_49 to i128
  %tmp_52 = zext i8 %tmp_48 to i128
  %tmp_53 = zext i8 %tmp_50 to i128
  %tmp_54 = shl i128 %loc_V, %tmp_51
  %tmp_55 = call i128 @llvm.part.select.i128(i128 %tmp_54, i32 127, i32 0)
  %tmp_56 = select i1 %tmp_43, i128 %tmp_55, i128 %tmp_54
  %tmp_57 = shl i128 -1, %tmp_52
  %tmp_58 = lshr i128 -1, %tmp_53
  %p_demorgan = and i128 %tmp_57, %tmp_58
  %tmp_59 = xor i128 %p_demorgan, -1
  %tmp_60 = and i128 %p_Val2_s, %tmp_59
  %tmp_61 = and i128 %tmp_56, %p_demorgan
  %p_Result_s = or i128 %tmp_60, %tmp_61
  %gmem_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i128P(i128* %gmem_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i128P(i128* %gmem_addr, i128 %p_Result_s, i16 -1)
  %gmem_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i128P(i128* %gmem_addr)
  %empty_36 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_27)
  %j = add i16 %i_op_assign_8_mid2, 1
  %indvar_flatten47_op = add i32 %indvar_flatten2, 1
  %indvar_flatten_next1 = select i1 %exitcond_flatten, i32 1, i32 %indvar_flatten47_op
  br label %0

.reset54:                                         ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond_flatten = icmp eq i32 %indvar_flatten2, %bound1
  %i_op_assign_6_mid = select i1 %exitcond_flatten, i16 0, i16 %i_op_assign_6
  %cout = add i16 1, %i_op_assign_s
  %r_V_4_mid2_v_v_v_v_v = select i1 %exitcond_flatten, i16 %cout, i16 %i_op_assign_s
  %tmp_22 = call i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16 %r_V_4_mid2_v_v_v_v_v, i32 3, i32 15)
  %r_V_4_mid2_v_v_v_cas = zext i13 %tmp_22 to i29
  %r_V_4_mid2_v_v = mul i29 %rhs_V_2_cast_cast, %r_V_4_mid2_v_v_v_cas
  %r_V_4_mid2_v = zext i29 %r_V_4_mid2_v_v to i45
  %r_V_4_mid2 = mul i45 %rhs_V_5_cast, %r_V_4_mid2_v
  %tmp_24 = trunc i16 %r_V_4_mid2_v_v_v_v_v to i3
  %Lo_assign_cast_mid2_s = call i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3 %tmp_24, i4 0)
  %Hi_assign_cast_mid2_s = or i7 %Lo_assign_cast_mid2_s, 15
  %r_V_13_mid2_v_v_v_v_s = zext i16 %r_V_4_mid2_v_v_v_v_v to i30
  %r_V_13_mid2_v_v_v_v = mul i30 %rhs_V_12_cast_cast, %r_V_13_mid2_v_v_v_v_s
  %r_V_13_mid2_v_v_v_ca = zext i30 %r_V_13_mid2_v_v_v_v to i38
  %r_V_13_mid2_v_v = mul i38 %rhs_V_10_cast_cast, %r_V_13_mid2_v_v_v_ca
  %r_V_13_mid2_v = zext i38 %r_V_13_mid2_v_v to i45
  %r_V_13_mid2 = mul i45 %rhs_V_11_cast, %r_V_13_mid2_v
  %r_V_8_mid = select i1 %exitcond_flatten, i32 0, i32 %r_V_8
  %tmp_25 = mul i16 %i_op_assign_6, %tmp_18
  %tmp_28_mid264_v = select i1 %exitcond_flatten, i16 0, i16 %tmp_25
  %exitcond = icmp eq i16 %i_op_assign_8, %Wout_V
  %exitcond2_mid1 = select i1 %exitcond_flatten, i1 %exitcond2_mid, i1 %exitcond
  %i = add i16 1, %i_op_assign_6_mid
  %tmp_26 = or i1 %exitcond2_mid1, %exitcond_flatten
  %i_op_assign_8_mid2 = select i1 %tmp_26, i16 0, i16 %i_op_assign_8
  %i_op_assign_8_cast_m = zext i16 %i to i32
  %r_V_8_mid1 = mul i32 %rhs_V_2_cast1, %i_op_assign_8_cast_m
  %r_V_8_mid2 = select i1 %exitcond2_mid1, i32 %r_V_8_mid1, i32 %r_V_8_mid
  %tmp_27_mid1 = mul i16 %tmp_18, %i
  %tmp_28_mid2_v = select i1 %exitcond2_mid1, i16 %tmp_27_mid1, i16 %tmp_28_mid264_v
  %tmp_28_mid2 = sub i16 %tmp_28_mid2_v, %tmp_s
  %i_op_assign_6_mid2 = select i1 %exitcond2_mid1, i16 %i, i16 %i_op_assign_6_mid
  %i_op_assign_10_cast = zext i16 %i_op_assign_8_mid2 to i32
  %tmp_27 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  %tmp_28 = mul i16 %tmp_19, %i_op_assign_8_mid2
  %tmp_29 = sub i16 %tmp_28, %tmp_7
  %tmp_36_cast_mid = sext i16 %tmp_29 to i17
  %tmp_37_cast_mid = sext i16 %tmp_29 to i32
  %slt1 = icmp slt i17 %tmp_36_cast_mid, %lhs_V_5_cast
  %rev = xor i1 %slt1, true
  br label %1

; <label>:3                                       ; preds = %0
  ret void
}

!opencl.kernels = !{!0, !7, !13, !13, !15, !21, !27, !27, !15, !29, !15, !15, !15, !32, !32, !34, !34, !36, !15, !15, !15, !38, !38, !40, !40, !42, !42, !15, !15, !44, !46, !13, !13, !15, !15, !48, !15, !15, !50, !15, !51, !53, !53, !15, !55, !15, !15, !44, !46, !46, !57, !57, !57, !15, !15, !15, !15, !60, !32, !32, !61, !15, !15, !63, !63, !65, !65, !65, !15, !15, !15, !67, !70, !70, !67, !76, !76, !78, !78, !15, !15, !15, !79, !81, !15, !15, !15, !32, !32, !83, !83, !85, !38, !38, !87, !89, !89, !91, !15, !15, !15, !93, !93, !89, !89, !95, !15, !15, !15, !93, !93, !38, !38, !97, !15, !99, !63, !63, !101, !32, !32, !103, !105, !105, !107, !105, !105, !38, !38, !109, !112, !15, !15, !15, !105, !105, !32, !32, !114, !115, !46, !15, !15, !15, !15, !15, !15, !117, !117, !119, !121, !15, !15, !15, !32, !32, !123, !123, !125, !15, !15, !15, !93, !93, !13, !13, !15, !78, !78, !15, !127, !127, !15, !15, !129, !131, !133, !15, !15, !15, !32, !32, !117, !117, !135, !137, !93, !93, !139, !105, !105, !141, !143, !93, !93, !32, !32, !15, !15, !145, !145, !15, !15, !147, !149, !15, !15, !15, !151, !153, !15, !15, !15, !32, !32, !93, !93, !78, !78, !155, !157, !46, !159, !159, !15, !15, !161, !163, !15, !15, !15, !165, !165, !167, !167, !168, !15, !165, !165, !15, !15, !170, !170, !172, !174, !15, !15, !15, !147, !149, !32, !32, !176, !176, !178, !180, !105, !105, !15, !15}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!182}
!axi4.master.portmap = !{!189}
!axi4.slave.bundlemap = !{!190, !191, !192}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<16>", metadata !"ap_uint<16>", metadata !"ap_uint<16>", metadata !"ap_uint<16>", metadata !"ap_uint<8>", metadata !"ap_uint<8>", metadata !"ap_uint<8>", metadata !"ap_uint<8>", metadata !"ap_uint<1>", metadata !"ap_uint<1>", metadata !"dtype_bus*", metadata !"ap_uint<4>", metadata !"dtype_bus*", metadata !"ap_uint<4>", metadata !"dtype_bus*", metadata !"ap_uint<4>"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"CHin", metadata !"Hin", metadata !"Win", metadata !"CHout", metadata !"Kx", metadata !"Ky", metadata !"Sx", metadata !"Sy", metadata !"mode", metadata !"relu_en", metadata !"feature_in", metadata !"feature_in_precision", metadata !"W", metadata !"W_precision", metadata !"feature_out", metadata !"feature_out_precision"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, true> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space"}
!17 = metadata !{metadata !"kernel_arg_access_qual"}
!18 = metadata !{metadata !"kernel_arg_type"}
!19 = metadata !{metadata !"kernel_arg_type_qual"}
!20 = metadata !{metadata !"kernel_arg_name"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!23 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"int"}
!25 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !14, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!29 = metadata !{null, metadata !22, metadata !23, metadata !30, metadata !25, metadata !31, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"const ap_int_base<32, true> &"}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!32 = metadata !{null, metadata !8, metadata !9, metadata !33, metadata !11, metadata !14, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!34 = metadata !{null, metadata !8, metadata !9, metadata !35, metadata !11, metadata !14, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &"}
!36 = metadata !{null, metadata !22, metadata !23, metadata !37, metadata !25, metadata !31, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<48, true> &"}
!38 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !14, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &"}
!40 = metadata !{null, metadata !8, metadata !9, metadata !41, metadata !11, metadata !14, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!42 = metadata !{null, metadata !8, metadata !9, metadata !43, metadata !11, metadata !14, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<40> &"}
!44 = metadata !{null, metadata !22, metadata !23, metadata !45, metadata !25, metadata !31, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, true> &", metadata !"int"}
!46 = metadata !{null, metadata !8, metadata !9, metadata !33, metadata !11, metadata !47, metadata !6}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!48 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !47, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!50 = metadata !{null, metadata !8, metadata !9, metadata !43, metadata !11, metadata !47, metadata !6}
!51 = metadata !{null, metadata !22, metadata !23, metadata !52, metadata !25, metadata !26, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"_Bool"}
!53 = metadata !{null, metadata !8, metadata !9, metadata !54, metadata !11, metadata !14, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!55 = metadata !{null, metadata !22, metadata !23, metadata !56, metadata !25, metadata !31, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<1, false> &"}
!57 = metadata !{null, metadata !8, metadata !9, metadata !58, metadata !11, metadata !59, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<256, true> &"}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!60 = metadata !{null, metadata !8, metadata !9, metadata !33, metadata !11, metadata !12, metadata !6}
!61 = metadata !{null, metadata !22, metadata !23, metadata !62, metadata !25, metadata !31, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &", metadata !"const ap_int_base<16, true> &"}
!63 = metadata !{null, metadata !8, metadata !9, metadata !64, metadata !11, metadata !14, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !59, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<128, true> &"}
!67 = metadata !{null, metadata !22, metadata !23, metadata !68, metadata !25, metadata !69, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!70 = metadata !{null, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !6}
!71 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!72 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<128, true>*", metadata !"int", metadata !"int"}
!74 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!75 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!76 = metadata !{null, metadata !71, metadata !72, metadata !77, metadata !74, metadata !75, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<256, true>*", metadata !"int", metadata !"int"}
!78 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !12, metadata !6}
!79 = metadata !{null, metadata !22, metadata !23, metadata !80, metadata !25, metadata !26, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<66, true> &", metadata !"int"}
!81 = metadata !{null, metadata !22, metadata !23, metadata !82, metadata !25, metadata !31, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<66, true> &", metadata !"const ap_int_base<32, true> &"}
!83 = metadata !{null, metadata !8, metadata !9, metadata !84, metadata !11, metadata !14, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<66, true> &"}
!85 = metadata !{null, metadata !22, metadata !23, metadata !86, metadata !25, metadata !31, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"const ap_int_base<48, true> &"}
!87 = metadata !{null, metadata !22, metadata !23, metadata !88, metadata !25, metadata !31, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<56, true> &"}
!89 = metadata !{null, metadata !8, metadata !9, metadata !90, metadata !11, metadata !14, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<56, true> &"}
!91 = metadata !{null, metadata !22, metadata !23, metadata !92, metadata !25, metadata !31, metadata !6}
!92 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<56, true> &", metadata !"const ap_int_base<8, false> &"}
!93 = metadata !{null, metadata !8, metadata !9, metadata !94, metadata !11, metadata !14, metadata !6}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!95 = metadata !{null, metadata !22, metadata !23, metadata !96, metadata !25, metadata !31, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &", metadata !"const ap_int_base<8, false> &"}
!97 = metadata !{null, metadata !8, metadata !9, metadata !98, metadata !11, metadata !47, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<128> &"}
!99 = metadata !{null, metadata !22, metadata !23, metadata !100, metadata !25, metadata !31, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"const ap_int_base<16, true> &"}
!101 = metadata !{null, metadata !22, metadata !23, metadata !102, metadata !25, metadata !31, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<32, true> &"}
!103 = metadata !{null, metadata !22, metadata !23, metadata !104, metadata !25, metadata !31, metadata !6}
!104 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &", metadata !"const ap_int_base<16, false> &"}
!105 = metadata !{null, metadata !8, metadata !9, metadata !106, metadata !11, metadata !14, metadata !6}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!107 = metadata !{null, metadata !22, metadata !23, metadata !108, metadata !25, metadata !31, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &", metadata !"const ap_int_base<16, false> &"}
!109 = metadata !{null, metadata !22, metadata !23, metadata !110, metadata !25, metadata !111, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<16, false> &"}
!111 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!112 = metadata !{null, metadata !22, metadata !23, metadata !113, metadata !25, metadata !31, metadata !6}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<16, false> &"}
!114 = metadata !{null, metadata !8, metadata !9, metadata !106, metadata !11, metadata !47, metadata !6}
!115 = metadata !{null, metadata !22, metadata !23, metadata !116, metadata !25, metadata !31, metadata !6}
!116 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &", metadata !"int"}
!117 = metadata !{null, metadata !8, metadata !9, metadata !118, metadata !11, metadata !14, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, true> &"}
!119 = metadata !{null, metadata !22, metadata !23, metadata !120, metadata !25, metadata !26, metadata !6}
!120 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, true> &", metadata !"int"}
!121 = metadata !{null, metadata !22, metadata !23, metadata !122, metadata !25, metadata !31, metadata !6}
!122 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, true> &", metadata !"const ap_int_base<32, true> &"}
!123 = metadata !{null, metadata !8, metadata !9, metadata !124, metadata !11, metadata !14, metadata !6}
!124 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, true> &"}
!125 = metadata !{null, metadata !22, metadata !23, metadata !126, metadata !25, metadata !31, metadata !6}
!126 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, true> &", metadata !"const ap_int_base<8, false> &"}
!127 = metadata !{null, metadata !8, metadata !9, metadata !128, metadata !11, metadata !14, metadata !6}
!128 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<43, true> &"}
!129 = metadata !{null, metadata !8, metadata !9, metadata !130, metadata !11, metadata !47, metadata !6}
!130 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<16> &"}
!131 = metadata !{null, metadata !22, metadata !23, metadata !132, metadata !25, metadata !26, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, true> &", metadata !"int"}
!133 = metadata !{null, metadata !22, metadata !23, metadata !134, metadata !25, metadata !31, metadata !6}
!134 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, true> &", metadata !"const ap_int_base<32, true> &"}
!135 = metadata !{null, metadata !22, metadata !23, metadata !136, metadata !25, metadata !31, metadata !6}
!136 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, true> &", metadata !"const ap_int_base<8, false> &"}
!137 = metadata !{null, metadata !22, metadata !23, metadata !138, metadata !25, metadata !31, metadata !6}
!138 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, true> &", metadata !"const ap_int_base<8, false> &"}
!139 = metadata !{null, metadata !22, metadata !23, metadata !140, metadata !25, metadata !31, metadata !6}
!140 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &", metadata !"const ap_int_base<40, true> &"}
!141 = metadata !{null, metadata !22, metadata !23, metadata !142, metadata !25, metadata !111, metadata !6}
!142 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<8, false> &"}
!143 = metadata !{null, metadata !22, metadata !23, metadata !144, metadata !25, metadata !31, metadata !6}
!144 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<8, false> &"}
!145 = metadata !{null, metadata !8, metadata !9, metadata !146, metadata !11, metadata !14, metadata !6}
!146 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, true> &"}
!147 = metadata !{null, metadata !22, metadata !23, metadata !148, metadata !25, metadata !26, metadata !6}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"int"}
!149 = metadata !{null, metadata !22, metadata !23, metadata !150, metadata !25, metadata !31, metadata !6}
!150 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"const ap_int_base<32, true> &"}
!151 = metadata !{null, metadata !22, metadata !23, metadata !152, metadata !25, metadata !26, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!153 = metadata !{null, metadata !22, metadata !23, metadata !154, metadata !25, metadata !31, metadata !6}
!154 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!155 = metadata !{null, metadata !8, metadata !9, metadata !156, metadata !11, metadata !47, metadata !6}
!156 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!157 = metadata !{null, metadata !22, metadata !23, metadata !158, metadata !25, metadata !31, metadata !6}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!159 = metadata !{null, metadata !8, metadata !9, metadata !160, metadata !11, metadata !14, metadata !6}
!160 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<6, true> &"}
!161 = metadata !{null, metadata !8, metadata !9, metadata !162, metadata !11, metadata !47, metadata !6}
!162 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!163 = metadata !{null, metadata !22, metadata !23, metadata !164, metadata !25, metadata !31, metadata !6}
!164 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"const ap_int_base<4, false> &"}
!165 = metadata !{null, metadata !8, metadata !9, metadata !166, metadata !11, metadata !14, metadata !6}
!166 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!167 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !14, metadata !6}
!168 = metadata !{null, metadata !22, metadata !23, metadata !169, metadata !25, metadata !31, metadata !6}
!169 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &", metadata !"const ap_int_base<4, false> &"}
!170 = metadata !{null, metadata !8, metadata !9, metadata !171, metadata !11, metadata !14, metadata !6}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, true> &"}
!172 = metadata !{null, metadata !22, metadata !23, metadata !173, metadata !25, metadata !26, metadata !6}
!173 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, true> &", metadata !"int"}
!174 = metadata !{null, metadata !22, metadata !23, metadata !175, metadata !25, metadata !31, metadata !6}
!175 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, true> &", metadata !"const ap_int_base<32, true> &"}
!176 = metadata !{null, metadata !8, metadata !9, metadata !177, metadata !11, metadata !14, metadata !6}
!177 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!178 = metadata !{null, metadata !22, metadata !23, metadata !179, metadata !25, metadata !26, metadata !6}
!179 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &", metadata !"int"}
!180 = metadata !{null, metadata !22, metadata !23, metadata !181, metadata !25, metadata !31, metadata !6}
!181 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &", metadata !"const ap_int_base<32, true> &"}
!182 = metadata !{metadata !183, [0 x i32]* @llvm_global_ctors_0}
!183 = metadata !{metadata !184}
!184 = metadata !{i32 0, i32 31, metadata !185}
!185 = metadata !{metadata !186}
!186 = metadata !{metadata !"llvm.global_ctors.0", metadata !187, metadata !"", i32 0, i32 31}
!187 = metadata !{metadata !188}
!188 = metadata !{i32 0, i32 0, i32 1}
!189 = metadata !{metadata !"gmem", metadata !"feature_in.V", metadata !"READONLY", metadata !"W.V", metadata !"READONLY", metadata !"feature_out.V", metadata !"READWRITE"}
!190 = metadata !{metadata !"feature_in.V", metadata !""}
!191 = metadata !{metadata !"W.V", metadata !""}
!192 = metadata !{metadata !"feature_out.V", metadata !""}
!193 = metadata !{metadata !194}
!194 = metadata !{i32 0, i32 127, metadata !195}
!195 = metadata !{metadata !196, metadata !197, metadata !198}
!196 = metadata !{metadata !"feature_in.V", metadata !187, metadata !"int128", i32 0, i32 127}
!197 = metadata !{metadata !"W.V", metadata !187, metadata !"int128", i32 0, i32 127}
!198 = metadata !{metadata !"feature_out.V", metadata !187, metadata !"int128", i32 0, i32 127}
!199 = metadata !{metadata !200}
!200 = metadata !{i32 0, i32 15, metadata !201}
!201 = metadata !{metadata !202}
!202 = metadata !{metadata !"CHin.V", metadata !203, metadata !"uint16", i32 0, i32 15}
!203 = metadata !{metadata !204}
!204 = metadata !{i32 0, i32 0, i32 0}
!205 = metadata !{metadata !206}
!206 = metadata !{i32 0, i32 15, metadata !207}
!207 = metadata !{metadata !208}
!208 = metadata !{metadata !"Hin.V", metadata !203, metadata !"uint16", i32 0, i32 15}
!209 = metadata !{metadata !210}
!210 = metadata !{i32 0, i32 15, metadata !211}
!211 = metadata !{metadata !212}
!212 = metadata !{metadata !"Win.V", metadata !203, metadata !"uint16", i32 0, i32 15}
!213 = metadata !{metadata !214}
!214 = metadata !{i32 0, i32 15, metadata !215}
!215 = metadata !{metadata !216}
!216 = metadata !{metadata !"CHout.V", metadata !203, metadata !"uint16", i32 0, i32 15}
!217 = metadata !{metadata !218}
!218 = metadata !{i32 0, i32 7, metadata !219}
!219 = metadata !{metadata !220}
!220 = metadata !{metadata !"Kx.V", metadata !203, metadata !"uint8", i32 0, i32 7}
!221 = metadata !{metadata !222}
!222 = metadata !{i32 0, i32 7, metadata !223}
!223 = metadata !{metadata !224}
!224 = metadata !{metadata !"Ky.V", metadata !203, metadata !"uint8", i32 0, i32 7}
!225 = metadata !{metadata !226}
!226 = metadata !{i32 0, i32 7, metadata !227}
!227 = metadata !{metadata !228}
!228 = metadata !{metadata !"Sx.V", metadata !203, metadata !"uint8", i32 0, i32 7}
!229 = metadata !{metadata !230}
!230 = metadata !{i32 0, i32 7, metadata !231}
!231 = metadata !{metadata !232}
!232 = metadata !{metadata !"Sy.V", metadata !203, metadata !"uint8", i32 0, i32 7}
!233 = metadata !{metadata !234}
!234 = metadata !{i32 0, i32 0, metadata !235}
!235 = metadata !{metadata !236}
!236 = metadata !{metadata !"mode.V", metadata !203, metadata !"uint1", i32 0, i32 0}
!237 = metadata !{metadata !238}
!238 = metadata !{i32 0, i32 0, metadata !239}
!239 = metadata !{metadata !240}
!240 = metadata !{metadata !"relu_en.V", metadata !203, metadata !"uint1", i32 0, i32 0}
!241 = metadata !{metadata !242}
!242 = metadata !{i32 0, i32 3, metadata !243}
!243 = metadata !{metadata !244}
!244 = metadata !{metadata !"feature_in_precision.V", metadata !203, metadata !"uint4", i32 0, i32 3}
!245 = metadata !{metadata !246}
!246 = metadata !{i32 0, i32 3, metadata !247}
!247 = metadata !{metadata !248}
!248 = metadata !{metadata !"W_precision.V", metadata !203, metadata !"uint4", i32 0, i32 3}
!249 = metadata !{metadata !250}
!250 = metadata !{i32 0, i32 3, metadata !251}
!251 = metadata !{metadata !252}
!252 = metadata !{metadata !"feature_out_precision.V", metadata !203, metadata !"uint4", i32 0, i32 3}
