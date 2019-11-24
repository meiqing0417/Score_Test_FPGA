; ModuleID = 'C:/Users/caiyujie/Desktop/gongkaike_hls/code/day5/pool_stream/pool_stream/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@stream_tp_OC_V_OC_V_s = internal unnamed_addr constant [14 x i8] c"stream_tp.V.V\00"
@stream_tp2_OC_V_OC_V = internal unnamed_addr constant [15 x i8] c"stream_tp2.V.V\00"
@pool_str = internal unnamed_addr constant [5 x i8] c"pool\00"
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str8 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str46 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str45 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str44 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str43 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str42 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str41 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str40 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str4 = private unnamed_addr constant [10 x i8] c"ap_stable\00", align 1
@p_str39 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str38 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str37 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str36 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str35 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str34 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str33 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str11 = private unnamed_addr constant [12 x i8] c"hls_label_6\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

define internal fastcc void @pool_2D(i128* %in_V_V, i128* %out_V_V, i32 %ch_div_K, i32 %height_in, i32 %width_out, i32 %Ky) {
.preheader.preheader:
  %tmp_V = alloca i128
  call void (...)* @_ssdm_op_SpecInterface(i128* %out_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str41, i32 0, i32 0, [1 x i8]* @p_str42, [1 x i8]* @p_str43, [1 x i8]* @p_str44, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str45, [1 x i8]* @p_str46)
  call void (...)* @_ssdm_op_SpecInterface(i128* %in_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str34, i32 0, i32 0, [1 x i8]* @p_str35, [1 x i8]* @p_str36, [1 x i8]* @p_str37, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str38, [1 x i8]* @p_str39)
  %Ky_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %Ky)
  %width_out_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %width_out)
  %height_in_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %height_in)
  %ch_div_K_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %ch_div_K)
  %buf_V = alloca [128 x i128], align 8
  call void (...)* @_ssdm_op_SpecInterface(i32 %height_in, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %Ky, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %width_out, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ch_div_K, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp = sub i32 128, %width_out_read
  %sel_tmp = icmp eq i32 %Ky_read, 4
  %sel_tmp2 = icmp eq i32 %Ky_read, 3
  %sel_tmp4 = icmp eq i32 %Ky_read, 2
  %sel_tmp6 = icmp eq i32 %Ky_read, 1
  %cast = zext i32 %height_in_read to i64
  %cast1 = zext i32 %width_out_read to i64
  %bound = mul i64 %cast1, %cast
  %cast2 = zext i32 %ch_div_K_read to i96
  %cast3 = zext i64 %bound to i96
  %bound4 = mul i96 %cast3, %cast2
  %tmp_5_mid = icmp sgt i32 %width_out_read, 0
  br label %0

; <label>:0                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvar_flatten1 = phi i96 [ 0, %.preheader.preheader ], [ %indvar_flatten_next1, %._crit_edge ]
  %indvar_flatten = phi i64 [ 0, %.preheader.preheader ], [ %indvar_flatten_next, %._crit_edge ]
  %i = phi i31 [ 0, %.preheader.preheader ], [ %i_mid2, %._crit_edge ]
  %ptr_tp = phi i32 [ 0, %.preheader.preheader ], [ %ptr_1, %._crit_edge ]
  %j = phi i32 [ 0, %.preheader.preheader ], [ %j_1, %._crit_edge ]
  %i_1 = add i31 %i, 1
  %exitcond_flatten1 = icmp eq i96 %indvar_flatten1, %bound4
  %indvar_flatten_next1 = add i96 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %1, label %.preheader

_ifconv:                                          ; preds = %.preheader
  %tmp_V_load = load i128* %tmp_V
  %tmp_s = icmp slt i32 %ptr_tp, %width_out_read
  %ptr_tp_3 = add i32 %tmp, %ptr_tp
  %ptr_tp_4 = sub nsw i32 %ptr_tp, %width_out_read
  %ptr_tp_5 = select i1 %tmp_s, i32 %ptr_tp_3, i32 %ptr_tp_4
  %tmp_3 = sext i32 %ptr_tp_5 to i64
  %buf_V_addr_1 = getelementptr [128 x i128]* %buf_V, i64 0, i64 %tmp_3
  %in_d1_V = load i128* %buf_V_addr_1, align 16
  %tmp_4 = icmp slt i32 %ptr_tp_5, %width_out_read
  %ptr_tp_6 = add i32 %tmp, %ptr_tp_5
  %ptr_tp_7 = sub nsw i32 %ptr_tp_5, %width_out_read
  %ptr_tp_1 = select i1 %tmp_4, i32 %ptr_tp_6, i32 %ptr_tp_7
  %tmp_7 = sext i32 %ptr_tp_1 to i64
  %buf_V_addr_2 = getelementptr [128 x i128]* %buf_V, i64 0, i64 %tmp_7
  %in_d2_V = load i128* %buf_V_addr_2, align 16
  %tmp_2 = icmp slt i32 %ptr_tp_1, %width_out_read
  %ptr_tp_8 = add i32 %tmp, %ptr_tp_1
  %ptr_tp_9 = sub nsw i32 %ptr_tp_1, %width_out_read
  %ptr_tp_2 = select i1 %tmp_2, i32 %ptr_tp_8, i32 %ptr_tp_9
  %tmp_10 = sext i32 %ptr_tp_2 to i64
  %buf_V_addr_3 = getelementptr [128 x i128]* %buf_V, i64 0, i64 %tmp_10
  %in_d3_V = load i128* %buf_V_addr_3, align 16
  %tmp_21 = trunc i128 %in_d0_V to i16
  %tmp_22 = trunc i128 %in_d1_V to i16
  %tmp_23 = trunc i128 %in_d2_V to i16
  %tmp_24 = trunc i128 %in_d3_V to i16
  %p_Result_4 = call i128 @llvm.part.set.i128.i16(i128 %tmp_V_load, i16 %tmp_21, i32 0, i32 15)
  %tmp_11 = icmp sgt i16 %tmp_21, %tmp_22
  %tmp_13 = select i1 %tmp_11, i16 %tmp_21, i16 %tmp_22
  %p_Result_5 = call i128 @llvm.part.set.i128.i16(i128 %tmp_V_load, i16 %tmp_13, i32 0, i32 15)
  %tmp_14 = icmp sgt i16 %tmp_22, %tmp_23
  %tmp_15 = select i1 %tmp_14, i16 %tmp_22, i16 %tmp_23
  %tmp_16 = icmp sgt i16 %tmp_21, %tmp_15
  %tp_d0_V_1 = select i1 %tmp_16, i16 %tmp_21, i16 %tmp_15
  %p_Result_6 = call i128 @llvm.part.set.i128.i16(i128 %tmp_V_load, i16 %tp_d0_V_1, i32 0, i32 15)
  %tmp_17 = icmp sgt i16 %tmp_23, %tmp_24
  %tmp_18 = select i1 %tmp_17, i16 %tmp_23, i16 %tmp_24
  %tmp_19 = icmp sgt i16 %tmp_22, %tmp_18
  %tp_d1_V_1 = select i1 %tmp_19, i16 %tmp_22, i16 %tmp_18
  %tmp_20 = icmp sgt i16 %tmp_21, %tp_d1_V_1
  %p_in347_ld = select i1 %tmp_20, i16 %tmp_21, i16 %tp_d1_V_1
  %p_Result_7 = call i128 @llvm.part.set.i128.i16(i128 %tmp_V_load, i16 %p_in347_ld, i32 0, i32 15)
  %sel_tmp1 = select i1 %sel_tmp, i128 %p_Result_7, i128 %tmp_V_load
  %sel_tmp3 = select i1 %sel_tmp2, i128 %p_Result_6, i128 %sel_tmp1
  %sel_tmp5 = select i1 %sel_tmp4, i128 %p_Result_5, i128 %sel_tmp3
  %p_0219_4 = select i1 %sel_tmp6, i128 %p_Result_4, i128 %sel_tmp5
  %p_Result_s = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d0_V, i32 16, i32 31)
  %p_Result_1_1 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d1_V, i32 16, i32 31)
  %p_Result_2_1 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d2_V, i32 16, i32 31)
  %p_Result_3_1 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d3_V, i32 16, i32 31)
  %p_Result_4_1 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4, i16 %p_Result_s, i32 16, i32 31)
  %tmp_13_1 = icmp sgt i16 %p_Result_s, %p_Result_1_1
  %tmp_14_1 = select i1 %tmp_13_1, i16 %p_Result_s, i16 %p_Result_1_1
  %p_Result_5_1 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4, i16 %tmp_14_1, i32 16, i32 31)
  %tmp_15_1 = icmp sgt i16 %p_Result_1_1, %p_Result_2_1
  %tmp_16_1 = select i1 %tmp_15_1, i16 %p_Result_1_1, i16 %p_Result_2_1
  %tmp_17_1 = icmp sgt i16 %p_Result_s, %tmp_16_1
  %tp_d0_V_1_1 = select i1 %tmp_17_1, i16 %p_Result_s, i16 %tmp_16_1
  %p_Result_6_1 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4, i16 %tp_d0_V_1_1, i32 16, i32 31)
  %tmp_18_1 = icmp sgt i16 %p_Result_2_1, %p_Result_3_1
  %tmp_19_1 = select i1 %tmp_18_1, i16 %p_Result_2_1, i16 %p_Result_3_1
  %tmp_20_1 = icmp sgt i16 %p_Result_1_1, %tmp_19_1
  %tp_d1_V_1_1 = select i1 %tmp_20_1, i16 %p_Result_1_1, i16 %tmp_19_1
  %tmp_21_1 = icmp sgt i16 %p_Result_s, %tp_d1_V_1_1
  %p_in347_ld_1 = select i1 %tmp_21_1, i16 %p_Result_s, i16 %tp_d1_V_1_1
  %p_Result_7_1 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4, i16 %p_in347_ld_1, i32 16, i32 31)
  %sel_tmp9 = select i1 %sel_tmp, i128 %p_Result_7_1, i128 %p_0219_4
  %sel_tmp7 = select i1 %sel_tmp2, i128 %p_Result_6_1, i128 %sel_tmp9
  %sel_tmp8 = select i1 %sel_tmp4, i128 %p_Result_5_1, i128 %sel_tmp7
  %p_0219_4_1 = select i1 %sel_tmp6, i128 %p_Result_4_1, i128 %sel_tmp8
  %p_Result_8 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d0_V, i32 32, i32 47)
  %p_Result_1_2 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d1_V, i32 32, i32 47)
  %p_Result_2_2 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d2_V, i32 32, i32 47)
  %p_Result_3_2 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d3_V, i32 32, i32 47)
  %p_Result_4_2 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_1, i16 %p_Result_8, i32 32, i32 47)
  %tmp_13_2 = icmp sgt i16 %p_Result_8, %p_Result_1_2
  %tmp_14_2 = select i1 %tmp_13_2, i16 %p_Result_8, i16 %p_Result_1_2
  %p_Result_5_2 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_1, i16 %tmp_14_2, i32 32, i32 47)
  %tmp_15_2 = icmp sgt i16 %p_Result_1_2, %p_Result_2_2
  %tmp_16_2 = select i1 %tmp_15_2, i16 %p_Result_1_2, i16 %p_Result_2_2
  %tmp_17_2 = icmp sgt i16 %p_Result_8, %tmp_16_2
  %tp_d0_V_1_2 = select i1 %tmp_17_2, i16 %p_Result_8, i16 %tmp_16_2
  %p_Result_6_2 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_1, i16 %tp_d0_V_1_2, i32 32, i32 47)
  %tmp_18_2 = icmp sgt i16 %p_Result_2_2, %p_Result_3_2
  %tmp_19_2 = select i1 %tmp_18_2, i16 %p_Result_2_2, i16 %p_Result_3_2
  %tmp_20_2 = icmp sgt i16 %p_Result_1_2, %tmp_19_2
  %tp_d1_V_1_2 = select i1 %tmp_20_2, i16 %p_Result_1_2, i16 %tmp_19_2
  %tmp_21_2 = icmp sgt i16 %p_Result_8, %tp_d1_V_1_2
  %p_in347_ld_2 = select i1 %tmp_21_2, i16 %p_Result_8, i16 %tp_d1_V_1_2
  %p_Result_7_2 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_1, i16 %p_in347_ld_2, i32 32, i32 47)
  %sel_tmp10 = select i1 %sel_tmp, i128 %p_Result_7_2, i128 %p_0219_4_1
  %sel_tmp11 = select i1 %sel_tmp2, i128 %p_Result_6_2, i128 %sel_tmp10
  %sel_tmp12 = select i1 %sel_tmp4, i128 %p_Result_5_2, i128 %sel_tmp11
  %p_0219_4_2 = select i1 %sel_tmp6, i128 %p_Result_4_2, i128 %sel_tmp12
  %p_Result_9 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d0_V, i32 48, i32 63)
  %p_Result_1_3 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d1_V, i32 48, i32 63)
  %p_Result_2_3 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d2_V, i32 48, i32 63)
  %p_Result_3_3 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d3_V, i32 48, i32 63)
  %p_Result_4_3 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_2, i16 %p_Result_9, i32 48, i32 63)
  %tmp_13_3 = icmp sgt i16 %p_Result_9, %p_Result_1_3
  %tmp_14_3 = select i1 %tmp_13_3, i16 %p_Result_9, i16 %p_Result_1_3
  %p_Result_5_3 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_2, i16 %tmp_14_3, i32 48, i32 63)
  %tmp_15_3 = icmp sgt i16 %p_Result_1_3, %p_Result_2_3
  %tmp_16_3 = select i1 %tmp_15_3, i16 %p_Result_1_3, i16 %p_Result_2_3
  %tmp_17_3 = icmp sgt i16 %p_Result_9, %tmp_16_3
  %tp_d0_V_1_3 = select i1 %tmp_17_3, i16 %p_Result_9, i16 %tmp_16_3
  %p_Result_6_3 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_2, i16 %tp_d0_V_1_3, i32 48, i32 63)
  %tmp_18_3 = icmp sgt i16 %p_Result_2_3, %p_Result_3_3
  %tmp_19_3 = select i1 %tmp_18_3, i16 %p_Result_2_3, i16 %p_Result_3_3
  %tmp_20_3 = icmp sgt i16 %p_Result_1_3, %tmp_19_3
  %tp_d1_V_1_3 = select i1 %tmp_20_3, i16 %p_Result_1_3, i16 %tmp_19_3
  %tmp_21_3 = icmp sgt i16 %p_Result_9, %tp_d1_V_1_3
  %p_in347_ld_3 = select i1 %tmp_21_3, i16 %p_Result_9, i16 %tp_d1_V_1_3
  %p_Result_7_3 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_2, i16 %p_in347_ld_3, i32 48, i32 63)
  %sel_tmp13 = select i1 %sel_tmp, i128 %p_Result_7_3, i128 %p_0219_4_2
  %sel_tmp14 = select i1 %sel_tmp2, i128 %p_Result_6_3, i128 %sel_tmp13
  %sel_tmp15 = select i1 %sel_tmp4, i128 %p_Result_5_3, i128 %sel_tmp14
  %p_0219_4_3 = select i1 %sel_tmp6, i128 %p_Result_4_3, i128 %sel_tmp15
  %p_Result_1 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d0_V, i32 64, i32 79)
  %p_Result_1_4 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d1_V, i32 64, i32 79)
  %p_Result_2_4 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d2_V, i32 64, i32 79)
  %p_Result_3_4 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d3_V, i32 64, i32 79)
  %p_Result_4_4 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_3, i16 %p_Result_1, i32 64, i32 79)
  %tmp_13_4 = icmp sgt i16 %p_Result_1, %p_Result_1_4
  %tmp_14_4 = select i1 %tmp_13_4, i16 %p_Result_1, i16 %p_Result_1_4
  %p_Result_5_4 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_3, i16 %tmp_14_4, i32 64, i32 79)
  %tmp_15_4 = icmp sgt i16 %p_Result_1_4, %p_Result_2_4
  %tmp_16_4 = select i1 %tmp_15_4, i16 %p_Result_1_4, i16 %p_Result_2_4
  %tmp_17_4 = icmp sgt i16 %p_Result_1, %tmp_16_4
  %tp_d0_V_1_4 = select i1 %tmp_17_4, i16 %p_Result_1, i16 %tmp_16_4
  %p_Result_6_4 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_3, i16 %tp_d0_V_1_4, i32 64, i32 79)
  %tmp_18_4 = icmp sgt i16 %p_Result_2_4, %p_Result_3_4
  %tmp_19_4 = select i1 %tmp_18_4, i16 %p_Result_2_4, i16 %p_Result_3_4
  %tmp_20_4 = icmp sgt i16 %p_Result_1_4, %tmp_19_4
  %tp_d1_V_1_4 = select i1 %tmp_20_4, i16 %p_Result_1_4, i16 %tmp_19_4
  %tmp_21_4 = icmp sgt i16 %p_Result_1, %tp_d1_V_1_4
  %p_in347_ld_4 = select i1 %tmp_21_4, i16 %p_Result_1, i16 %tp_d1_V_1_4
  %p_Result_7_4 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_3, i16 %p_in347_ld_4, i32 64, i32 79)
  %sel_tmp16 = select i1 %sel_tmp, i128 %p_Result_7_4, i128 %p_0219_4_3
  %sel_tmp17 = select i1 %sel_tmp2, i128 %p_Result_6_4, i128 %sel_tmp16
  %sel_tmp18 = select i1 %sel_tmp4, i128 %p_Result_5_4, i128 %sel_tmp17
  %p_0219_4_4 = select i1 %sel_tmp6, i128 %p_Result_4_4, i128 %sel_tmp18
  %p_Result_2 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d0_V, i32 80, i32 95)
  %p_Result_1_5 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d1_V, i32 80, i32 95)
  %p_Result_2_5 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d2_V, i32 80, i32 95)
  %p_Result_3_5 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d3_V, i32 80, i32 95)
  %p_Result_4_5 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_4, i16 %p_Result_2, i32 80, i32 95)
  %tmp_13_5 = icmp sgt i16 %p_Result_2, %p_Result_1_5
  %tmp_14_5 = select i1 %tmp_13_5, i16 %p_Result_2, i16 %p_Result_1_5
  %p_Result_5_5 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_4, i16 %tmp_14_5, i32 80, i32 95)
  %tmp_15_5 = icmp sgt i16 %p_Result_1_5, %p_Result_2_5
  %tmp_16_5 = select i1 %tmp_15_5, i16 %p_Result_1_5, i16 %p_Result_2_5
  %tmp_17_5 = icmp sgt i16 %p_Result_2, %tmp_16_5
  %tp_d0_V_1_5 = select i1 %tmp_17_5, i16 %p_Result_2, i16 %tmp_16_5
  %p_Result_6_5 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_4, i16 %tp_d0_V_1_5, i32 80, i32 95)
  %tmp_18_5 = icmp sgt i16 %p_Result_2_5, %p_Result_3_5
  %tmp_19_5 = select i1 %tmp_18_5, i16 %p_Result_2_5, i16 %p_Result_3_5
  %tmp_20_5 = icmp sgt i16 %p_Result_1_5, %tmp_19_5
  %tp_d1_V_1_5 = select i1 %tmp_20_5, i16 %p_Result_1_5, i16 %tmp_19_5
  %tmp_21_5 = icmp sgt i16 %p_Result_2, %tp_d1_V_1_5
  %p_in347_ld_5 = select i1 %tmp_21_5, i16 %p_Result_2, i16 %tp_d1_V_1_5
  %p_Result_7_5 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_4, i16 %p_in347_ld_5, i32 80, i32 95)
  %sel_tmp19 = select i1 %sel_tmp, i128 %p_Result_7_5, i128 %p_0219_4_4
  %sel_tmp20 = select i1 %sel_tmp2, i128 %p_Result_6_5, i128 %sel_tmp19
  %sel_tmp21 = select i1 %sel_tmp4, i128 %p_Result_5_5, i128 %sel_tmp20
  %p_0219_4_5 = select i1 %sel_tmp6, i128 %p_Result_4_5, i128 %sel_tmp21
  %p_Result_3 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d0_V, i32 96, i32 111)
  %p_Result_1_6 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d1_V, i32 96, i32 111)
  %p_Result_2_6 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d2_V, i32 96, i32 111)
  %p_Result_3_6 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d3_V, i32 96, i32 111)
  %p_Result_4_6 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_5, i16 %p_Result_3, i32 96, i32 111)
  %tmp_13_6 = icmp sgt i16 %p_Result_3, %p_Result_1_6
  %tmp_14_6 = select i1 %tmp_13_6, i16 %p_Result_3, i16 %p_Result_1_6
  %p_Result_5_6 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_5, i16 %tmp_14_6, i32 96, i32 111)
  %tmp_15_6 = icmp sgt i16 %p_Result_1_6, %p_Result_2_6
  %tmp_16_6 = select i1 %tmp_15_6, i16 %p_Result_1_6, i16 %p_Result_2_6
  %tmp_17_6 = icmp sgt i16 %p_Result_3, %tmp_16_6
  %tp_d0_V_1_6 = select i1 %tmp_17_6, i16 %p_Result_3, i16 %tmp_16_6
  %p_Result_6_6 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_5, i16 %tp_d0_V_1_6, i32 96, i32 111)
  %tmp_18_6 = icmp sgt i16 %p_Result_2_6, %p_Result_3_6
  %tmp_19_6 = select i1 %tmp_18_6, i16 %p_Result_2_6, i16 %p_Result_3_6
  %tmp_20_6 = icmp sgt i16 %p_Result_1_6, %tmp_19_6
  %tp_d1_V_1_6 = select i1 %tmp_20_6, i16 %p_Result_1_6, i16 %tmp_19_6
  %tmp_21_6 = icmp sgt i16 %p_Result_3, %tp_d1_V_1_6
  %p_in347_ld_6 = select i1 %tmp_21_6, i16 %p_Result_3, i16 %tp_d1_V_1_6
  %p_Result_7_6 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_5, i16 %p_in347_ld_6, i32 96, i32 111)
  %sel_tmp22 = select i1 %sel_tmp, i128 %p_Result_7_6, i128 %p_0219_4_5
  %sel_tmp23 = select i1 %sel_tmp2, i128 %p_Result_6_6, i128 %sel_tmp22
  %sel_tmp24 = select i1 %sel_tmp4, i128 %p_Result_5_6, i128 %sel_tmp23
  %p_0219_4_6 = select i1 %sel_tmp6, i128 %p_Result_4_6, i128 %sel_tmp24
  %p_Result_10 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d0_V, i32 112, i32 127)
  %p_Result_1_7 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d1_V, i32 112, i32 127)
  %p_Result_2_7 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d2_V, i32 112, i32 127)
  %p_Result_3_7 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %in_d3_V, i32 112, i32 127)
  %p_Result_4_7 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_6, i16 %p_Result_10, i32 112, i32 127)
  %tmp_13_7 = icmp sgt i16 %p_Result_10, %p_Result_1_7
  %tmp_14_7 = select i1 %tmp_13_7, i16 %p_Result_10, i16 %p_Result_1_7
  %p_Result_5_7 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_6, i16 %tmp_14_7, i32 112, i32 127)
  %tmp_15_7 = icmp sgt i16 %p_Result_1_7, %p_Result_2_7
  %tmp_16_7 = select i1 %tmp_15_7, i16 %p_Result_1_7, i16 %p_Result_2_7
  %tmp_17_7 = icmp sgt i16 %p_Result_10, %tmp_16_7
  %tp_d0_V_1_7 = select i1 %tmp_17_7, i16 %p_Result_10, i16 %tmp_16_7
  %p_Result_6_7 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_6, i16 %tp_d0_V_1_7, i32 112, i32 127)
  %tmp_18_7 = icmp sgt i16 %p_Result_2_7, %p_Result_3_7
  %tmp_19_7 = select i1 %tmp_18_7, i16 %p_Result_2_7, i16 %p_Result_3_7
  %tmp_20_7 = icmp sgt i16 %p_Result_1_7, %tmp_19_7
  %tp_d1_V_1_7 = select i1 %tmp_20_7, i16 %p_Result_1_7, i16 %tmp_19_7
  %tmp_21_7 = icmp sgt i16 %p_Result_10, %tp_d1_V_1_7
  %p_in347_ld_7 = select i1 %tmp_21_7, i16 %p_Result_10, i16 %tp_d1_V_1_7
  %p_Result_7_7 = call i128 @llvm.part.set.i128.i16(i128 %p_0219_4_6, i16 %p_in347_ld_7, i32 112, i32 127)
  %sel_tmp25 = select i1 %sel_tmp, i128 %p_Result_7_7, i128 %p_0219_4_6
  %sel_tmp26 = select i1 %sel_tmp2, i128 %p_Result_6_7, i128 %sel_tmp25
  %sel_tmp27 = select i1 %sel_tmp4, i128 %p_Result_5_7, i128 %sel_tmp26
  %tmp_V_2 = select i1 %sel_tmp6, i128 %p_Result_4_7, i128 %sel_tmp27
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* %out_V_V, i128 %tmp_V_2)
  store i128 %tmp_V_2, i128* %tmp_V
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ifconv, %.preheader
  %tmp_12 = icmp eq i32 %ptr_tp, 127
  %ptr = add nsw i32 %ptr_tp, 1
  %ptr_1 = select i1 %tmp_12, i32 0, i32 %ptr
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str11, i32 %tmp_1)
  %j_op = add i32 %j, 1
  %j_mid212_op = select i1 %exitcond_flatten, i32 1, i32 %j_op
  %j_1 = select i1 %tmp_5_mid1, i32 %j_mid212_op, i32 1
  %indvar_flatten_op = add i64 %indvar_flatten, 1
  %indvar_flatten_next = select i1 %exitcond_flatten, i64 1, i64 %indvar_flatten_op
  br label %0

.preheader:                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 200, i64 200, i64 200)
  %exitcond_flatten = icmp eq i64 %indvar_flatten, %bound
  %i_mid = select i1 %exitcond_flatten, i31 0, i31 %i
  %i_1_cast_mid = select i1 %exitcond_flatten, i31 1, i31 %i_1
  %tmp_5 = icmp slt i32 %j, %width_out_read
  %tmp_5_mid1 = select i1 %exitcond_flatten, i1 %tmp_5_mid, i1 %tmp_5
  %i_1_dup = add i31 %i_mid, 1
  %i_1_mid1 = add i31 %i_mid, 2
  %i_1_cast_mid2 = select i1 %tmp_5_mid1, i31 %i_1_cast_mid, i31 %i_1_mid1
  %i_1_cast_mid2_cast = zext i31 %i_1_cast_mid2 to i32
  %i_mid2 = select i1 %tmp_5_mid1, i31 %i_mid, i31 %i_1_dup
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str11)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_6 = sext i32 %ptr_tp to i64
  %in_d0_V = call i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128* %in_V_V)
  %buf_V_addr = getelementptr [128 x i128]* %buf_V, i64 0, i64 %tmp_6
  store i128 %in_d0_V, i128* %buf_V_addr, align 16
  %tmp_8 = srem i32 %i_1_cast_mid2_cast, %Ky_read
  %tmp_9 = icmp eq i32 %tmp_8, 0
  br i1 %tmp_9, label %_ifconv, label %._crit_edge

; <label>:1                                       ; preds = %0
  ret void
}

define internal fastcc void @pool_1D(i128* %in_V_V, i128* %out_V_V, i32 %ch_div_K, i32 %height_in, i32 %width_in, i32 %Kx) {
  %p_Val2_s = alloca i128
  %p_Val2_4 = alloca i128
  %p_Val2_5 = alloca i128
  %tmp_V = alloca i128
  call void (...)* @_ssdm_op_SpecInterface(i128* %out_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str34, i32 0, i32 0, [1 x i8]* @p_str35, [1 x i8]* @p_str36, [1 x i8]* @p_str37, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str38, [1 x i8]* @p_str39)
  call void (...)* @_ssdm_op_SpecInterface(i128* %in_V_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %Kx_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %Kx)
  %width_in_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %width_in)
  %height_in_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %height_in)
  %ch_div_K_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %ch_div_K)
  call void (...)* @_ssdm_op_SpecInterface(i32 %width_in, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %Kx, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %height_in, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ch_div_K, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %sel_tmp = icmp eq i32 %Kx_read, 4
  %sel_tmp2 = icmp eq i32 %Kx_read, 3
  %sel_tmp4 = icmp eq i32 %Kx_read, 2
  %sel_tmp6 = icmp eq i32 %Kx_read, 1
  %cast = zext i32 %height_in_read to i64
  %cast1 = zext i32 %width_in_read to i64
  %bound = mul i64 %cast1, %cast
  %cast2 = zext i32 %ch_div_K_read to i96
  %cast3 = zext i64 %bound to i96
  %bound4 = mul i96 %cast3, %cast2
  %tmp_13_mid = icmp sgt i32 %width_in_read, 0
  br label %1

; <label>:1                                       ; preds = %0, %._crit_edge
  %indvar_flatten2 = phi i96 [ 0, %0 ], [ %indvar_flatten_next2, %._crit_edge ]
  %indvar_flatten = phi i64 [ 0, %0 ], [ %indvar_flatten_next, %._crit_edge ]
  %j = phi i31 [ 0, %0 ], [ %j_1, %._crit_edge ]
  %p_Val2_load = load i128* %p_Val2_s
  %p_Val2_4_load = load i128* %p_Val2_4
  %p_Val2_5_load = load i128* %p_Val2_5
  %j_cast = zext i31 %j to i32
  %tmp_13 = icmp slt i32 %j_cast, %width_in_read
  %exitcond_flatten2 = icmp eq i96 %indvar_flatten2, %bound4
  %indvar_flatten_next2 = add i96 %indvar_flatten2, 1
  store i128 %p_Val2_4_load, i128* %p_Val2_5
  store i128 %p_Val2_load, i128* %p_Val2_4
  br i1 %exitcond_flatten2, label %2, label %.reset6

.preheader.0_ifconv:                              ; preds = %.reset6
  %tmp_V_load = load i128* %tmp_V
  %tmp = trunc i128 %p_Val2_6 to i16
  %tmp_29 = trunc i128 %p_Val2_load_1 to i16
  %tmp_30 = trunc i128 %p_Val2_4_load to i16
  %tmp_31 = trunc i128 %p_Val2_5_load to i16
  %p_Result_11 = call i128 @llvm.part.set.i128.i16(i128 %tmp_V_load, i16 %tmp, i32 0, i32 15)
  %tmp_s = icmp sgt i16 %tmp, %tmp_29
  %tmp_21 = select i1 %tmp_s, i16 %tmp, i16 %tmp_29
  %p_Result_12 = call i128 @llvm.part.set.i128.i16(i128 %tmp_V_load, i16 %tmp_21, i32 0, i32 15)
  %tmp_22 = icmp sgt i16 %tmp_29, %tmp_30
  %tmp_23 = select i1 %tmp_22, i16 %tmp_29, i16 %tmp_30
  %tmp_24 = icmp sgt i16 %tmp, %tmp_23
  %tp_d0_V_2 = select i1 %tmp_24, i16 %tmp, i16 %tmp_23
  %p_Result_13 = call i128 @llvm.part.set.i128.i16(i128 %tmp_V_load, i16 %tp_d0_V_2, i32 0, i32 15)
  %tmp_25 = icmp sgt i16 %tmp_30, %tmp_31
  %tmp_26 = select i1 %tmp_25, i16 %tmp_30, i16 %tmp_31
  %tmp_27 = icmp sgt i16 %tmp_29, %tmp_26
  %tp_d1_V_2 = select i1 %tmp_27, i16 %tmp_29, i16 %tmp_26
  %tmp_28 = icmp sgt i16 %tmp, %tp_d1_V_2
  %p_in353_ld = select i1 %tmp_28, i16 %tmp, i16 %tp_d1_V_2
  %p_Result_s = call i128 @llvm.part.set.i128.i16(i128 %tmp_V_load, i16 %p_in353_ld, i32 0, i32 15)
  %sel_tmp1 = select i1 %sel_tmp, i128 %p_Result_s, i128 %tmp_V_load
  %sel_tmp3 = select i1 %sel_tmp2, i128 %p_Result_13, i128 %sel_tmp1
  %sel_tmp5 = select i1 %sel_tmp4, i128 %p_Result_12, i128 %sel_tmp3
  %p_0215_4 = select i1 %sel_tmp6, i128 %p_Result_11, i128 %sel_tmp5
  %p_Result_1 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_6, i32 16, i32 31)
  %p_Result_8_1 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_load_1, i32 16, i32 31)
  %p_Result_9_1 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_4_load, i32 16, i32 31)
  %p_Result_10_1 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_5_load, i32 16, i32 31)
  %p_Result_11_1 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4, i16 %p_Result_1, i32 16, i32 31)
  %tmp_25_1 = icmp sgt i16 %p_Result_1, %p_Result_8_1
  %tmp_26_1 = select i1 %tmp_25_1, i16 %p_Result_1, i16 %p_Result_8_1
  %p_Result_12_1 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4, i16 %tmp_26_1, i32 16, i32 31)
  %tmp_27_1 = icmp sgt i16 %p_Result_8_1, %p_Result_9_1
  %tmp_28_1 = select i1 %tmp_27_1, i16 %p_Result_8_1, i16 %p_Result_9_1
  %tmp_29_1 = icmp sgt i16 %p_Result_1, %tmp_28_1
  %tp_d0_V_2_1 = select i1 %tmp_29_1, i16 %p_Result_1, i16 %tmp_28_1
  %p_Result_13_1 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4, i16 %tp_d0_V_2_1, i32 16, i32 31)
  %tmp_30_1 = icmp sgt i16 %p_Result_9_1, %p_Result_10_1
  %tmp_31_1 = select i1 %tmp_30_1, i16 %p_Result_9_1, i16 %p_Result_10_1
  %tmp_32_1 = icmp sgt i16 %p_Result_8_1, %tmp_31_1
  %tp_d1_V_2_1 = select i1 %tmp_32_1, i16 %p_Result_8_1, i16 %tmp_31_1
  %tmp_33_1 = icmp sgt i16 %p_Result_1, %tp_d1_V_2_1
  %p_in353_ld_1 = select i1 %tmp_33_1, i16 %p_Result_1, i16 %tp_d1_V_2_1
  %p_Result_14_1 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4, i16 %p_in353_ld_1, i32 16, i32 31)
  %sel_tmp9 = select i1 %sel_tmp, i128 %p_Result_14_1, i128 %p_0215_4
  %sel_tmp11 = select i1 %sel_tmp2, i128 %p_Result_13_1, i128 %sel_tmp9
  %sel_tmp13 = select i1 %sel_tmp4, i128 %p_Result_12_1, i128 %sel_tmp11
  %p_0215_4_1 = select i1 %sel_tmp6, i128 %p_Result_11_1, i128 %sel_tmp13
  %p_Result_2 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_6, i32 32, i32 47)
  %p_Result_8_2 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_load_1, i32 32, i32 47)
  %p_Result_9_2 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_4_load, i32 32, i32 47)
  %p_Result_10_2 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_5_load, i32 32, i32 47)
  %p_Result_11_2 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_1, i16 %p_Result_2, i32 32, i32 47)
  %tmp_25_2 = icmp sgt i16 %p_Result_2, %p_Result_8_2
  %tmp_26_2 = select i1 %tmp_25_2, i16 %p_Result_2, i16 %p_Result_8_2
  %p_Result_12_2 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_1, i16 %tmp_26_2, i32 32, i32 47)
  %tmp_27_2 = icmp sgt i16 %p_Result_8_2, %p_Result_9_2
  %tmp_28_2 = select i1 %tmp_27_2, i16 %p_Result_8_2, i16 %p_Result_9_2
  %tmp_29_2 = icmp sgt i16 %p_Result_2, %tmp_28_2
  %tp_d0_V_2_2 = select i1 %tmp_29_2, i16 %p_Result_2, i16 %tmp_28_2
  %p_Result_13_2 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_1, i16 %tp_d0_V_2_2, i32 32, i32 47)
  %tmp_30_2 = icmp sgt i16 %p_Result_9_2, %p_Result_10_2
  %tmp_31_2 = select i1 %tmp_30_2, i16 %p_Result_9_2, i16 %p_Result_10_2
  %tmp_32_2 = icmp sgt i16 %p_Result_8_2, %tmp_31_2
  %tp_d1_V_2_2 = select i1 %tmp_32_2, i16 %p_Result_8_2, i16 %tmp_31_2
  %tmp_33_2 = icmp sgt i16 %p_Result_2, %tp_d1_V_2_2
  %p_in353_ld_2 = select i1 %tmp_33_2, i16 %p_Result_2, i16 %tp_d1_V_2_2
  %p_Result_14_2 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_1, i16 %p_in353_ld_2, i32 32, i32 47)
  %sel_tmp17 = select i1 %sel_tmp, i128 %p_Result_14_2, i128 %p_0215_4_1
  %sel_tmp19 = select i1 %sel_tmp2, i128 %p_Result_13_2, i128 %sel_tmp17
  %sel_tmp21 = select i1 %sel_tmp4, i128 %p_Result_12_2, i128 %sel_tmp19
  %p_0215_4_2 = select i1 %sel_tmp6, i128 %p_Result_11_2, i128 %sel_tmp21
  %p_Result_3 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_6, i32 48, i32 63)
  %p_Result_8_3 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_load_1, i32 48, i32 63)
  %p_Result_9_3 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_4_load, i32 48, i32 63)
  %p_Result_10_3 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_5_load, i32 48, i32 63)
  %p_Result_11_3 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_2, i16 %p_Result_3, i32 48, i32 63)
  %tmp_25_3 = icmp sgt i16 %p_Result_3, %p_Result_8_3
  %tmp_26_3 = select i1 %tmp_25_3, i16 %p_Result_3, i16 %p_Result_8_3
  %p_Result_12_3 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_2, i16 %tmp_26_3, i32 48, i32 63)
  %tmp_27_3 = icmp sgt i16 %p_Result_8_3, %p_Result_9_3
  %tmp_28_3 = select i1 %tmp_27_3, i16 %p_Result_8_3, i16 %p_Result_9_3
  %tmp_29_3 = icmp sgt i16 %p_Result_3, %tmp_28_3
  %tp_d0_V_2_3 = select i1 %tmp_29_3, i16 %p_Result_3, i16 %tmp_28_3
  %p_Result_13_3 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_2, i16 %tp_d0_V_2_3, i32 48, i32 63)
  %tmp_30_3 = icmp sgt i16 %p_Result_9_3, %p_Result_10_3
  %tmp_31_3 = select i1 %tmp_30_3, i16 %p_Result_9_3, i16 %p_Result_10_3
  %tmp_32_3 = icmp sgt i16 %p_Result_8_3, %tmp_31_3
  %tp_d1_V_2_3 = select i1 %tmp_32_3, i16 %p_Result_8_3, i16 %tmp_31_3
  %tmp_33_3 = icmp sgt i16 %p_Result_3, %tp_d1_V_2_3
  %p_in353_ld_3 = select i1 %tmp_33_3, i16 %p_Result_3, i16 %tp_d1_V_2_3
  %p_Result_14_3 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_2, i16 %p_in353_ld_3, i32 48, i32 63)
  %sel_tmp25 = select i1 %sel_tmp, i128 %p_Result_14_3, i128 %p_0215_4_2
  %sel_tmp27 = select i1 %sel_tmp2, i128 %p_Result_13_3, i128 %sel_tmp25
  %sel_tmp28 = select i1 %sel_tmp4, i128 %p_Result_12_3, i128 %sel_tmp27
  %p_0215_4_3 = select i1 %sel_tmp6, i128 %p_Result_11_3, i128 %sel_tmp28
  %p_Result_4 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_6, i32 64, i32 79)
  %p_Result_8_4 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_load_1, i32 64, i32 79)
  %p_Result_9_4 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_4_load, i32 64, i32 79)
  %p_Result_10_4 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_5_load, i32 64, i32 79)
  %p_Result_11_4 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_3, i16 %p_Result_4, i32 64, i32 79)
  %tmp_25_4 = icmp sgt i16 %p_Result_4, %p_Result_8_4
  %tmp_26_4 = select i1 %tmp_25_4, i16 %p_Result_4, i16 %p_Result_8_4
  %p_Result_12_4 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_3, i16 %tmp_26_4, i32 64, i32 79)
  %tmp_27_4 = icmp sgt i16 %p_Result_8_4, %p_Result_9_4
  %tmp_28_4 = select i1 %tmp_27_4, i16 %p_Result_8_4, i16 %p_Result_9_4
  %tmp_29_4 = icmp sgt i16 %p_Result_4, %tmp_28_4
  %tp_d0_V_2_4 = select i1 %tmp_29_4, i16 %p_Result_4, i16 %tmp_28_4
  %p_Result_13_4 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_3, i16 %tp_d0_V_2_4, i32 64, i32 79)
  %tmp_30_4 = icmp sgt i16 %p_Result_9_4, %p_Result_10_4
  %tmp_31_4 = select i1 %tmp_30_4, i16 %p_Result_9_4, i16 %p_Result_10_4
  %tmp_32_4 = icmp sgt i16 %p_Result_8_4, %tmp_31_4
  %tp_d1_V_2_4 = select i1 %tmp_32_4, i16 %p_Result_8_4, i16 %tmp_31_4
  %tmp_33_4 = icmp sgt i16 %p_Result_4, %tp_d1_V_2_4
  %p_in353_ld_4 = select i1 %tmp_33_4, i16 %p_Result_4, i16 %tp_d1_V_2_4
  %p_Result_14_4 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_3, i16 %p_in353_ld_4, i32 64, i32 79)
  %sel_tmp29 = select i1 %sel_tmp, i128 %p_Result_14_4, i128 %p_0215_4_3
  %sel_tmp30 = select i1 %sel_tmp2, i128 %p_Result_13_4, i128 %sel_tmp29
  %sel_tmp31 = select i1 %sel_tmp4, i128 %p_Result_12_4, i128 %sel_tmp30
  %p_0215_4_4 = select i1 %sel_tmp6, i128 %p_Result_11_4, i128 %sel_tmp31
  %p_Result_5 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_6, i32 80, i32 95)
  %p_Result_8_5 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_load_1, i32 80, i32 95)
  %p_Result_9_5 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_4_load, i32 80, i32 95)
  %p_Result_10_5 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_5_load, i32 80, i32 95)
  %p_Result_11_5 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_4, i16 %p_Result_5, i32 80, i32 95)
  %tmp_25_5 = icmp sgt i16 %p_Result_5, %p_Result_8_5
  %tmp_26_5 = select i1 %tmp_25_5, i16 %p_Result_5, i16 %p_Result_8_5
  %p_Result_12_5 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_4, i16 %tmp_26_5, i32 80, i32 95)
  %tmp_27_5 = icmp sgt i16 %p_Result_8_5, %p_Result_9_5
  %tmp_28_5 = select i1 %tmp_27_5, i16 %p_Result_8_5, i16 %p_Result_9_5
  %tmp_29_5 = icmp sgt i16 %p_Result_5, %tmp_28_5
  %tp_d0_V_2_5 = select i1 %tmp_29_5, i16 %p_Result_5, i16 %tmp_28_5
  %p_Result_13_5 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_4, i16 %tp_d0_V_2_5, i32 80, i32 95)
  %tmp_30_5 = icmp sgt i16 %p_Result_9_5, %p_Result_10_5
  %tmp_31_5 = select i1 %tmp_30_5, i16 %p_Result_9_5, i16 %p_Result_10_5
  %tmp_32_5 = icmp sgt i16 %p_Result_8_5, %tmp_31_5
  %tp_d1_V_2_5 = select i1 %tmp_32_5, i16 %p_Result_8_5, i16 %tmp_31_5
  %tmp_33_5 = icmp sgt i16 %p_Result_5, %tp_d1_V_2_5
  %p_in353_ld_5 = select i1 %tmp_33_5, i16 %p_Result_5, i16 %tp_d1_V_2_5
  %p_Result_14_5 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_4, i16 %p_in353_ld_5, i32 80, i32 95)
  %sel_tmp32 = select i1 %sel_tmp, i128 %p_Result_14_5, i128 %p_0215_4_4
  %sel_tmp33 = select i1 %sel_tmp2, i128 %p_Result_13_5, i128 %sel_tmp32
  %sel_tmp34 = select i1 %sel_tmp4, i128 %p_Result_12_5, i128 %sel_tmp33
  %p_0215_4_5 = select i1 %sel_tmp6, i128 %p_Result_11_5, i128 %sel_tmp34
  %p_Result_6 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_6, i32 96, i32 111)
  %p_Result_8_6 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_load_1, i32 96, i32 111)
  %p_Result_9_6 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_4_load, i32 96, i32 111)
  %p_Result_10_6 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_5_load, i32 96, i32 111)
  %p_Result_11_6 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_5, i16 %p_Result_6, i32 96, i32 111)
  %tmp_25_6 = icmp sgt i16 %p_Result_6, %p_Result_8_6
  %tmp_26_6 = select i1 %tmp_25_6, i16 %p_Result_6, i16 %p_Result_8_6
  %p_Result_12_6 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_5, i16 %tmp_26_6, i32 96, i32 111)
  %tmp_27_6 = icmp sgt i16 %p_Result_8_6, %p_Result_9_6
  %tmp_28_6 = select i1 %tmp_27_6, i16 %p_Result_8_6, i16 %p_Result_9_6
  %tmp_29_6 = icmp sgt i16 %p_Result_6, %tmp_28_6
  %tp_d0_V_2_6 = select i1 %tmp_29_6, i16 %p_Result_6, i16 %tmp_28_6
  %p_Result_13_6 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_5, i16 %tp_d0_V_2_6, i32 96, i32 111)
  %tmp_30_6 = icmp sgt i16 %p_Result_9_6, %p_Result_10_6
  %tmp_31_6 = select i1 %tmp_30_6, i16 %p_Result_9_6, i16 %p_Result_10_6
  %tmp_32_6 = icmp sgt i16 %p_Result_8_6, %tmp_31_6
  %tp_d1_V_2_6 = select i1 %tmp_32_6, i16 %p_Result_8_6, i16 %tmp_31_6
  %tmp_33_6 = icmp sgt i16 %p_Result_6, %tp_d1_V_2_6
  %p_in353_ld_6 = select i1 %tmp_33_6, i16 %p_Result_6, i16 %tp_d1_V_2_6
  %p_Result_14_6 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_5, i16 %p_in353_ld_6, i32 96, i32 111)
  %sel_tmp35 = select i1 %sel_tmp, i128 %p_Result_14_6, i128 %p_0215_4_5
  %sel_tmp36 = select i1 %sel_tmp2, i128 %p_Result_13_6, i128 %sel_tmp35
  %sel_tmp37 = select i1 %sel_tmp4, i128 %p_Result_12_6, i128 %sel_tmp36
  %p_0215_4_6 = select i1 %sel_tmp6, i128 %p_Result_11_6, i128 %sel_tmp37
  %p_Result_7 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_6, i32 112, i32 127)
  %p_Result_8_7 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_load_1, i32 112, i32 127)
  %p_Result_9_7 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_4_load, i32 112, i32 127)
  %p_Result_10_7 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %p_Val2_5_load, i32 112, i32 127)
  %p_Result_11_7 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_6, i16 %p_Result_7, i32 112, i32 127)
  %tmp_25_7 = icmp sgt i16 %p_Result_7, %p_Result_8_7
  %tmp_26_7 = select i1 %tmp_25_7, i16 %p_Result_7, i16 %p_Result_8_7
  %p_Result_12_7 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_6, i16 %tmp_26_7, i32 112, i32 127)
  %tmp_27_7 = icmp sgt i16 %p_Result_8_7, %p_Result_9_7
  %tmp_28_7 = select i1 %tmp_27_7, i16 %p_Result_8_7, i16 %p_Result_9_7
  %tmp_29_7 = icmp sgt i16 %p_Result_7, %tmp_28_7
  %tp_d0_V_2_7 = select i1 %tmp_29_7, i16 %p_Result_7, i16 %tmp_28_7
  %p_Result_13_7 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_6, i16 %tp_d0_V_2_7, i32 112, i32 127)
  %tmp_30_7 = icmp sgt i16 %p_Result_9_7, %p_Result_10_7
  %tmp_31_7 = select i1 %tmp_30_7, i16 %p_Result_9_7, i16 %p_Result_10_7
  %tmp_32_7 = icmp sgt i16 %p_Result_8_7, %tmp_31_7
  %tp_d1_V_2_7 = select i1 %tmp_32_7, i16 %p_Result_8_7, i16 %tmp_31_7
  %tmp_33_7 = icmp sgt i16 %p_Result_7, %tp_d1_V_2_7
  %p_in353_ld_7 = select i1 %tmp_33_7, i16 %p_Result_7, i16 %tp_d1_V_2_7
  %p_Result_14_7 = call i128 @llvm.part.set.i128.i16(i128 %p_0215_4_6, i16 %p_in353_ld_7, i32 112, i32 127)
  %sel_tmp38 = select i1 %sel_tmp, i128 %p_Result_14_7, i128 %p_0215_4_6
  %sel_tmp39 = select i1 %sel_tmp2, i128 %p_Result_13_7, i128 %sel_tmp38
  %sel_tmp40 = select i1 %sel_tmp4, i128 %p_Result_12_7, i128 %sel_tmp39
  %tmp_V_4 = select i1 %sel_tmp6, i128 %p_Result_11_7, i128 %sel_tmp40
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* %out_V_V, i128 %tmp_V_4)
  store i128 %tmp_V_4, i128* %tmp_V
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.0_ifconv, %.reset6
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_18)
  %indvar_flatten_op = add i64 %indvar_flatten, 1
  %indvar_flatten_next = select i1 %exitcond_flatten, i64 1, i64 %indvar_flatten_op
  br label %1

.reset6:                                          ; preds = %1
  %p_Val2_load_1 = load i128* %p_Val2_s
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 400, i64 400, i64 400)
  %exitcond_flatten = icmp eq i64 %indvar_flatten, %bound
  %tmp_13_mid1 = select i1 %exitcond_flatten, i1 %tmp_13_mid, i1 %tmp_13
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %p_Val2_6 = call i128 @_ssdm_op_Read.axis.volatile.i128P(i128* %in_V_V)
  %j_op = add i31 %j, 1
  %j_mid216_op = select i1 %exitcond_flatten, i31 1, i31 %j_op
  %j_1 = select i1 %tmp_13_mid1, i31 %j_mid216_op, i31 1
  %j_2_cast = zext i31 %j_1 to i32
  %tmp_14 = srem i32 %j_2_cast, %Kx_read
  %tmp_15 = icmp eq i32 %tmp_14, 0
  store i128 %p_Val2_6, i128* %p_Val2_s
  br i1 %tmp_15, label %.preheader.0_ifconv, label %._crit_edge

; <label>:2                                       ; preds = %1
  ret void
}

define void @pool(i128* %in_V_V, i128* %out_V_data_V, i1* %out_V_last, i32 %ch_div_K, i32 %height_in, i32 %width_in, i32 %height_out, i32 %width_out, i32 %Kx, i32 %Ky) {
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %in_V_V), !map !66
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %out_V_data_V), !map !70
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_V_last), !map !74
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ch_div_K), !map !78
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %height_in), !map !84
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %width_in), !map !88
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %height_out), !map !92
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %width_out), !map !96
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %Kx), !map !100
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %Ky), !map !104
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @pool_str) nounwind
  %Ky_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %Ky)
  %Kx_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %Kx)
  %width_out_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %width_out)
  %height_out_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %height_out)
  %width_in_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %width_in)
  %height_in_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %height_in)
  %ch_div_K_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ch_div_K)
  %stream_tp_V_V = alloca i128, align 8
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([14 x i8]* @stream_tp_OC_V_OC_V_s, i32 1, [1 x i8]* @p_str33, [1 x i8]* @p_str33, i32 8, i32 8, i128* %stream_tp_V_V, i128* %stream_tp_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i128* %stream_tp_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str34, i32 0, i32 0, [1 x i8]* @p_str35, [1 x i8]* @p_str36, [1 x i8]* @p_str37, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str38, [1 x i8]* @p_str39)
  %stream_tp2_V_V = alloca i128, align 8
  %empty_9 = call i32 (...)* @_ssdm_op_SpecChannel([15 x i8]* @stream_tp2_OC_V_OC_V, i32 1, [1 x i8]* @p_str40, [1 x i8]* @p_str40, i32 2, i32 2, i128* %stream_tp2_V_V, i128* %stream_tp2_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i128* %stream_tp2_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str41, i32 0, i32 0, [1 x i8]* @p_str42, [1 x i8]* @p_str43, [1 x i8]* @p_str44, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str45, [1 x i8]* @p_str46)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %Ky, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %width_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %Kx, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %height_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %height_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %width_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ch_div_K, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* %out_V_data_V, i1* %out_V_last, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* %in_V_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call fastcc void @pool_1D(i128* %in_V_V, i128* %stream_tp_V_V, i32 %ch_div_K_read, i32 %height_in_read, i32 %width_in_read, i32 %Kx_read)
  call fastcc void @pool_2D(i128* %stream_tp_V_V, i128* %stream_tp2_V_V, i32 %ch_div_K_read, i32 %height_in_read, i32 %width_out_read, i32 %Ky_read)
  call fastcc void @hs2axis(i128* %stream_tp2_V_V, i128* %out_V_data_V, i1* %out_V_last, i32 %ch_div_K_read, i32 %height_out_read, i32 %width_out_read)
  ret void
}

declare i128 @llvm.part.set.i128.i16(i128, i16, i32, i32) nounwind readnone

declare i128 @llvm.part.select.i128(i128, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @hs2axis(i128* %in_V_V, i128* %out_V_data_V, i1* %out_V_last, i32 %ch_div_K, i32 %height_out, i32 %width_out) {
  call void (...)* @_ssdm_op_SpecInterface(i128* %in_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str41, i32 0, i32 0, [1 x i8]* @p_str42, [1 x i8]* @p_str43, [1 x i8]* @p_str44, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str45, [1 x i8]* @p_str46)
  call void (...)* @_ssdm_op_SpecInterface(i128* %out_V_data_V, i1* %out_V_last, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %width_out_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %width_out)
  %height_out_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %height_out)
  %ch_div_K_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %ch_div_K)
  call void (...)* @_ssdm_op_SpecInterface(i32 %height_out, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %width_out, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ch_div_K, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp1 = mul i32 %ch_div_K_read, %width_out_read
  %tmp_s = mul i32 %tmp1, %height_out_read
  %tmp_16 = add nsw i32 %tmp_s, -1
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i31 [ 0, %0 ], [ %i_2, %2 ]
  %i_cast = zext i31 %i to i32
  %tmp_17 = icmp slt i32 %i_cast, %tmp_s
  %i_2 = add i31 %i, 1
  br i1 %tmp_17, label %2, label %3

; <label>:2                                       ; preds = %1
  %tmp_19 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 200, i32 200, [1 x i8]* @p_str1) nounwind
  %tmp_V = call i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128* %in_V_V)
  %tmp_last = icmp eq i32 %i_cast, %tmp_16
  call void @_ssdm_op_Write.axis.volatile.i128P.i1P(i128* %out_V_data_V, i1* %out_V_last, i128 %tmp_V, i1 %tmp_last)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_19)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i128P.i1P(i128*, i1*, i128, i1) {
entry:
  store i128 %2, i128* %0
  store i1 %3, i1* %1
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128*, i128) {
entry:
  %empty = call i128 @_autotb_FifoWrite_i128(i128* %0, i128 %1)
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

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i128 @_ssdm_op_Read.axis.volatile.i128P(i128*) {
entry:
  %empty = load i128* %0
  ret i128 %empty
}

define weak i32 @_ssdm_op_Read.ap_stable.i32(i32) {
entry:
  ret i32 %0
}

define weak i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128*) {
entry:
  %empty = call i128 @_autotb_FifoRead_i128(i128* %0)
  ret i128 %empty
}

define weak i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_10 = trunc i128 %empty to i16
  ret i16 %empty_10
}

declare i128 @_autotb_FifoWrite_i128(i128*, i128)

declare i128 @_autotb_FifoRead_i128(i128*)

!opencl.kernels = !{!0, !7, !13, !19, !21, !27, !30, !32, !32, !34, !40, !40, !40, !34, !34, !34, !34, !43, !49, !49, !55, !57, !34, !34, !34, !34, !34, !34, !34, !34, !34}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!59}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<dtype_bus> &", metadata !"hls::stream<dtype_stream> &", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out", metadata !"ch_div_K", metadata !"height_in", metadata !"width_in", metadata !"height_out", metadata !"width_out", metadata !"Kx", metadata !"Ky"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<dtype_bus> &", metadata !"hls::stream<dtype_stream> &", metadata !"int", metadata !"int", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out", metadata !"ch_div_K", metadata !"height_out", metadata !"width_out"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<dtype_bus> &", metadata !"hls::stream<dtype_bus> &", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out", metadata !"ch_div_K", metadata !"height_in", metadata !"width_in", metadata !"Kx"}
!19 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !20, metadata !6}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out", metadata !"ch_div_K", metadata !"height_in", metadata !"width_out", metadata !"Ky"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!23 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_int<128> &"}
!25 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!27 = metadata !{null, metadata !22, metadata !23, metadata !28, metadata !25, metadata !29, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!30 = metadata !{null, metadata !22, metadata !23, metadata !28, metadata !25, metadata !31, metadata !6}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!32 = metadata !{null, metadata !22, metadata !23, metadata !28, metadata !25, metadata !33, metadata !6}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!34 = metadata !{null, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !6}
!35 = metadata !{metadata !"kernel_arg_addr_space"}
!36 = metadata !{metadata !"kernel_arg_access_qual"}
!37 = metadata !{metadata !"kernel_arg_type"}
!38 = metadata !{metadata !"kernel_arg_type_qual"}
!39 = metadata !{metadata !"kernel_arg_name"}
!40 = metadata !{null, metadata !22, metadata !23, metadata !41, metadata !25, metadata !42, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<128, true> &"}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!43 = metadata !{null, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !6}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!49 = metadata !{null, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !6}
!50 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!51 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<128, true>*", metadata !"int", metadata !"int"}
!53 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!55 = metadata !{null, metadata !22, metadata !23, metadata !56, metadata !25, metadata !26, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const dtype_stream &"}
!57 = metadata !{null, metadata !22, metadata !23, metadata !58, metadata !25, metadata !29, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<128> &"}
!59 = metadata !{metadata !60, [0 x i32]* @llvm_global_ctors_0}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 31, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"llvm.global_ctors.0", metadata !64, metadata !"", i32 0, i32 31}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 0, i32 1}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 127, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"in.V.V", metadata !64, metadata !"int128", i32 0, i32 127}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 127, metadata !72}
!72 = metadata !{metadata !73}
!73 = metadata !{metadata !"out.V.data.V", metadata !64, metadata !"int128", i32 0, i32 127}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 0, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"out.V.last", metadata !64, metadata !"bool", i32 0, i32 0}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 31, metadata !80}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !"ch_div_K", metadata !82, metadata !"int", i32 0, i32 31}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 0, i32 0}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 31, metadata !86}
!86 = metadata !{metadata !87}
!87 = metadata !{metadata !"height_in", metadata !82, metadata !"int", i32 0, i32 31}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 0, i32 31, metadata !90}
!90 = metadata !{metadata !91}
!91 = metadata !{metadata !"width_in", metadata !82, metadata !"int", i32 0, i32 31}
!92 = metadata !{metadata !93}
!93 = metadata !{i32 0, i32 31, metadata !94}
!94 = metadata !{metadata !95}
!95 = metadata !{metadata !"height_out", metadata !82, metadata !"int", i32 0, i32 31}
!96 = metadata !{metadata !97}
!97 = metadata !{i32 0, i32 31, metadata !98}
!98 = metadata !{metadata !99}
!99 = metadata !{metadata !"width_out", metadata !82, metadata !"int", i32 0, i32 31}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 0, i32 31, metadata !102}
!102 = metadata !{metadata !103}
!103 = metadata !{metadata !"Kx", metadata !82, metadata !"int", i32 0, i32 31}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 31, metadata !106}
!106 = metadata !{metadata !107}
!107 = metadata !{metadata !"Ky", metadata !82, metadata !"int", i32 0, i32 31}
