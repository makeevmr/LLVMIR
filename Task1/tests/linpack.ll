; ModuleID = 'tests/linpack.c'
source_filename = "tests/linpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.6 = private unnamed_addr constant [37 x i8] c"  Matrix order N               = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"  Leading matrix dimension LDA = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%14f\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"  %14f\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"  %14e  \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%14f  \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%14f\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"  %9f\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"  %9f  \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%9f  \00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%9f\0A\00", align 1
@str.23 = private unnamed_addr constant [12 x i8] c"  C version\00", align 1
@str.24 = private unnamed_addr constant [25 x i8] c"  The LINPACK benchmark.\00", align 1
@str.25 = private unnamed_addr constant [14 x i8] c"  Language: C\00", align 1
@str.26 = private unnamed_addr constant [34 x i8] c"  Datatype: Double precision real\00", align 1
@str.27 = private unnamed_addr constant [72 x i8] c"     Norm. Resid      Resid           MACHEP         X[1]          X[N]\00", align 1
@str.28 = private unnamed_addr constant [72 x i8] c"      Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio\00", align 1
@str.29 = private unnamed_addr constant [14 x i8] c"LINPACK_BENCH\00", align 1
@str.30 = private unnamed_addr constant [27 x i8] c"  Normal end of execution.\00", align 1
@str.31 = private unnamed_addr constant [29 x i8] c"LINPACK_BENCH - Fatal error!\00", align 1
@str.32 = private unnamed_addr constant [39 x i8] c"  The matrix A is apparently singular.\00", align 1
@str.33 = private unnamed_addr constant [29 x i8] c"  Abnormal end of execution.\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = tail call i32 @putchar(i32 10)
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  %4 = tail call i32 @putchar(i32 10)
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 200)
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 201)
  %10 = tail call ptr @r8mat_gen(i32 noundef 201, i32 noundef 200)
  %11 = tail call noalias dereferenceable_or_null(1600) ptr @malloc(i64 noundef 1600) #16
  %12 = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #16
  %13 = tail call noalias dereferenceable_or_null(1600) ptr @malloc(i64 noundef 1600) #16
  %14 = tail call noalias dereferenceable_or_null(1600) ptr @malloc(i64 noundef 1600) #16
  %15 = tail call noalias dereferenceable_or_null(1600) ptr @malloc(i64 noundef 1600) #16
  br label %16

16:                                               ; preds = %0, %30
  %17 = phi i64 [ 0, %0 ], [ %31, %30 ]
  %18 = phi double [ 0.000000e+00, %0 ], [ %27, %30 ]
  %19 = mul nuw nsw i64 %17, 201
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi i64 [ 0, %16 ], [ %28, %20 ]
  %22 = phi double [ %18, %16 ], [ %27, %20 ]
  %23 = add nuw nsw i64 %21, %19
  %24 = getelementptr inbounds double, ptr %10, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !5
  %26 = fcmp olt double %25, %22
  %27 = select i1 %26, double %22, double %25
  %28 = add nuw nsw i64 %21, 1
  %29 = icmp eq i64 %28, 200
  br i1 %29, label %30, label %20, !llvm.loop !9

30:                                               ; preds = %20
  %31 = add nuw nsw i64 %17, 1
  %32 = icmp eq i64 %31, 200
  br i1 %32, label %33, label %16, !llvm.loop !12

33:                                               ; preds = %30, %33
  %34 = phi i64 [ %36, %33 ], [ 0, %30 ]
  %35 = getelementptr inbounds double, ptr %15, i64 %34
  store double 1.000000e+00, ptr %35, align 8, !tbaa !5
  %36 = add nuw nsw i64 %34, 1
  %37 = icmp eq i64 %36, 200
  br i1 %37, label %38, label %33, !llvm.loop !13

38:                                               ; preds = %33, %53
  %39 = phi i64 [ %54, %53 ], [ 0, %33 ]
  %40 = getelementptr inbounds double, ptr %11, i64 %39
  store double 0.000000e+00, ptr %40, align 8, !tbaa !5
  br label %41

41:                                               ; preds = %38, %41
  %42 = phi i64 [ 0, %38 ], [ %51, %41 ]
  %43 = phi double [ 0.000000e+00, %38 ], [ %50, %41 ]
  %44 = mul nuw nsw i64 %42, 201
  %45 = add nuw nsw i64 %44, %39
  %46 = getelementptr inbounds double, ptr %10, i64 %45
  %47 = load double, ptr %46, align 8, !tbaa !5
  %48 = getelementptr inbounds double, ptr %15, i64 %42
  %49 = load double, ptr %48, align 8, !tbaa !5
  %50 = tail call double @llvm.fmuladd.f64(double %47, double %49, double %43)
  %51 = add nuw nsw i64 %42, 1
  %52 = icmp eq i64 %51, 200
  br i1 %52, label %53, label %41, !llvm.loop !14

53:                                               ; preds = %41
  store double %50, ptr %40, align 8, !tbaa !5
  %54 = add nuw nsw i64 %39, 1
  %55 = icmp eq i64 %54, 200
  br i1 %55, label %56, label %38, !llvm.loop !15

56:                                               ; preds = %53
  %57 = tail call i64 @clock() #17
  %58 = tail call i32 @dgefa(ptr noundef %10, i32 noundef 201, i32 noundef 200, ptr noundef %12)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = tail call i32 @putchar(i32 10)
  %62 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  %63 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  %64 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.33)
  tail call void @exit(i32 noundef 1) #18
  unreachable

65:                                               ; preds = %56
  %66 = tail call i64 @clock() #17
  %67 = tail call i64 @clock() #17
  tail call void @dgesl(ptr noundef %10, i32 noundef 201, i32 noundef 200, ptr noundef %12, ptr noundef %11, i32 noundef 0)
  %68 = tail call i64 @clock() #17
  tail call void @free(ptr noundef %10) #17
  %69 = tail call ptr @r8mat_gen(i32 noundef 201, i32 noundef 200)
  br label %70

70:                                               ; preds = %65, %70
  %71 = phi i64 [ 0, %65 ], [ %73, %70 ]
  %72 = getelementptr inbounds double, ptr %15, i64 %71
  store double 1.000000e+00, ptr %72, align 8, !tbaa !5
  %73 = add nuw nsw i64 %71, 1
  %74 = icmp eq i64 %73, 200
  br i1 %74, label %75, label %70, !llvm.loop !16

75:                                               ; preds = %70, %90
  %76 = phi i64 [ %91, %90 ], [ 0, %70 ]
  %77 = getelementptr inbounds double, ptr %14, i64 %76
  store double 0.000000e+00, ptr %77, align 8, !tbaa !5
  br label %78

78:                                               ; preds = %75, %78
  %79 = phi i64 [ 0, %75 ], [ %88, %78 ]
  %80 = phi double [ 0.000000e+00, %75 ], [ %87, %78 ]
  %81 = mul nuw nsw i64 %79, 201
  %82 = add nuw nsw i64 %81, %76
  %83 = getelementptr inbounds double, ptr %69, i64 %82
  %84 = load double, ptr %83, align 8, !tbaa !5
  %85 = getelementptr inbounds double, ptr %15, i64 %79
  %86 = load double, ptr %85, align 8, !tbaa !5
  %87 = tail call double @llvm.fmuladd.f64(double %84, double %86, double %80)
  %88 = add nuw nsw i64 %79, 1
  %89 = icmp eq i64 %88, 200
  br i1 %89, label %90, label %78, !llvm.loop !17

90:                                               ; preds = %78
  store double %87, ptr %77, align 8, !tbaa !5
  %91 = add nuw nsw i64 %76, 1
  %92 = icmp eq i64 %91, 200
  br i1 %92, label %93, label %75, !llvm.loop !18

93:                                               ; preds = %90, %111
  %94 = phi i64 [ %112, %111 ], [ 0, %90 ]
  %95 = getelementptr inbounds double, ptr %14, i64 %94
  %96 = load double, ptr %95, align 8, !tbaa !5
  %97 = fneg double %96
  %98 = getelementptr inbounds double, ptr %13, i64 %94
  store double %97, ptr %98, align 8, !tbaa !5
  br label %99

99:                                               ; preds = %93, %99
  %100 = phi i64 [ 0, %93 ], [ %109, %99 ]
  %101 = phi double [ %97, %93 ], [ %108, %99 ]
  %102 = mul nuw nsw i64 %100, 201
  %103 = add nuw nsw i64 %102, %94
  %104 = getelementptr inbounds double, ptr %69, i64 %103
  %105 = load double, ptr %104, align 8, !tbaa !5
  %106 = getelementptr inbounds double, ptr %11, i64 %100
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = tail call double @llvm.fmuladd.f64(double %105, double %107, double %101)
  %109 = add nuw nsw i64 %100, 1
  %110 = icmp eq i64 %109, 200
  br i1 %110, label %111, label %99, !llvm.loop !19

111:                                              ; preds = %99
  store double %108, ptr %98, align 8, !tbaa !5
  %112 = add nuw nsw i64 %94, 1
  %113 = icmp eq i64 %112, 200
  br i1 %113, label %114, label %93, !llvm.loop !20

114:                                              ; preds = %111, %114
  %115 = phi i64 [ %124, %114 ], [ 0, %111 ]
  %116 = phi double [ %123, %114 ], [ 0.000000e+00, %111 ]
  %117 = getelementptr inbounds double, ptr %13, i64 %115
  %118 = load double, ptr %117, align 8, !tbaa !5
  %119 = fcmp ult double %118, 0.000000e+00
  %120 = fneg double %118
  %121 = select i1 %119, double %120, double %118
  %122 = fcmp olt double %121, %116
  %123 = select i1 %122, double %116, double %121
  %124 = add nuw nsw i64 %115, 1
  %125 = icmp eq i64 %124, 200
  br i1 %125, label %126, label %114, !llvm.loop !21

126:                                              ; preds = %114, %126
  %127 = phi i64 [ %136, %126 ], [ 0, %114 ]
  %128 = phi double [ %135, %126 ], [ 0.000000e+00, %114 ]
  %129 = getelementptr inbounds double, ptr %11, i64 %127
  %130 = load double, ptr %129, align 8, !tbaa !5
  %131 = fcmp ult double %130, 0.000000e+00
  %132 = fneg double %130
  %133 = select i1 %131, double %132, double %130
  %134 = fcmp olt double %133, %128
  %135 = select i1 %134, double %128, double %133
  %136 = add nuw nsw i64 %127, 1
  %137 = icmp eq i64 %136, 200
  br i1 %137, label %138, label %126, !llvm.loop !22

138:                                              ; preds = %126
  %139 = sitofp i64 %66 to double
  %140 = fdiv double %139, 1.000000e+06
  %141 = sitofp i64 %57 to double
  %142 = fdiv double %141, 1.000000e+06
  %143 = fsub double %140, %142
  %144 = sitofp i64 %68 to double
  %145 = fdiv double %144, 1.000000e+06
  %146 = sitofp i64 %67 to double
  %147 = fdiv double %146, 1.000000e+06
  %148 = fsub double %145, %147
  %149 = fadd double %143, %148
  %150 = fcmp ogt double %149, 0.000000e+00
  %151 = fmul double %149, 1.000000e+06
  %152 = fdiv double 0x4154A67555555555, %151
  %153 = select i1 %150, double %152, double -1.000000e+00
  %154 = fdiv double %123, 2.000000e+02
  %155 = fdiv double %154, %27
  %156 = fdiv double %155, %135
  %157 = fmul double %156, 0x4330000000000000
  %158 = fdiv double 2.000000e+00, %153
  %159 = fdiv double %149, 5.600000e-02
  %160 = tail call i32 @putchar(i32 10)
  %161 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %162 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %157)
  %163 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %123)
  %164 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef 0x3CB0000000000000)
  %165 = load double, ptr %11, align 8, !tbaa !5
  %166 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %165)
  %167 = getelementptr inbounds double, ptr %11, i64 199
  %168 = load double, ptr %167, align 8, !tbaa !5
  %169 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %168)
  %170 = tail call i32 @putchar(i32 10)
  %171 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %172 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, double noundef %143)
  %173 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, double noundef %148)
  %174 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %149)
  %175 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, double noundef %153)
  %176 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, double noundef %158)
  %177 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, double noundef %159)
  tail call void @free(ptr noundef %69) #17
  tail call void @free(ptr noundef %11) #17
  tail call void @free(ptr noundef %12) #17
  tail call void @free(ptr noundef %13) #17
  tail call void @free(ptr noundef %14) #17
  tail call void @free(ptr noundef %15) #17
  %178 = tail call i32 @putchar(i32 10)
  %179 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  %180 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  %181 = tail call i32 @putchar(i32 10)
  tail call void @exit(i32 noundef 0) #18
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @r8mat_gen(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = mul nsw i32 %1, %0
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #16
  %7 = icmp slt i32 %1, 1
  br i1 %7, label %73, label %8

8:                                                ; preds = %2
  %9 = add i32 %1, 1
  %10 = zext i32 %9 to i64
  br label %11

11:                                               ; preds = %8, %70
  %12 = phi i32 [ 1, %8 ], [ %71, %70 ]
  %13 = phi i32 [ 1, %8 ], [ %54, %70 ]
  %14 = phi i32 [ 2, %8 ], [ %45, %70 ]
  %15 = phi i32 [ 3, %8 ], [ %36, %70 ]
  %16 = phi i32 [ 1325, %8 ], [ %29, %70 ]
  %17 = add nsw i32 %12, -1
  %18 = mul nsw i32 %17, %0
  %19 = add i32 %18, -1
  br label %20

20:                                               ; preds = %11, %20
  %21 = phi i64 [ 1, %11 ], [ %68, %20 ]
  %22 = phi i32 [ %13, %11 ], [ %54, %20 ]
  %23 = phi i32 [ %14, %11 ], [ %45, %20 ]
  %24 = phi i32 [ %15, %11 ], [ %36, %20 ]
  %25 = phi i32 [ %16, %11 ], [ %29, %20 ]
  %26 = mul nsw i32 %25, 2549
  %27 = sdiv i32 %26, 4096
  %28 = shl nsw i32 %27, 12
  %29 = sub nsw i32 %26, %28
  %30 = mul nsw i32 %24, 2549
  %31 = mul nsw i32 %25, 2508
  %32 = add i32 %30, %31
  %33 = add i32 %32, %27
  %34 = sdiv i32 %33, 4096
  %35 = shl nsw i32 %34, 12
  %36 = sub nsw i32 %33, %35
  %37 = mul nsw i32 %23, 2549
  %38 = mul nsw i32 %24, 2508
  %39 = mul nsw i32 %25, 322
  %40 = add i32 %38, %39
  %41 = add i32 %40, %37
  %42 = add i32 %41, %34
  %43 = sdiv i32 %42, 4096
  %44 = shl nsw i32 %43, 12
  %45 = sub nsw i32 %42, %44
  %46 = mul nsw i32 %22, 2549
  %47 = mul nsw i32 %23, 2508
  %48 = mul nsw i32 %24, 322
  %49 = mul nsw i32 %25, 494
  %50 = add i32 %48, %49
  %51 = add i32 %50, %47
  %52 = add i32 %51, %46
  %53 = add i32 %52, %43
  %54 = srem i32 %53, 4096
  %55 = sitofp i32 %54 to double
  %56 = sitofp i32 %45 to double
  %57 = sitofp i32 %36 to double
  %58 = sitofp i32 %29 to double
  %59 = tail call double @llvm.fmuladd.f64(double %58, double 0x3F30000000000000, double %57)
  %60 = tail call double @llvm.fmuladd.f64(double %59, double 0x3F30000000000000, double %56)
  %61 = tail call double @llvm.fmuladd.f64(double %60, double 0x3F30000000000000, double %55)
  %62 = fmul double %61, 0x3F30000000000000
  %63 = fadd double %62, -5.000000e-01
  %64 = trunc i64 %21 to i32
  %65 = add i32 %19, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %6, i64 %66
  store double %63, ptr %67, align 8, !tbaa !5
  %68 = add nuw nsw i64 %21, 1
  %69 = icmp eq i64 %68, %10
  br i1 %69, label %70, label %20, !llvm.loop !23

70:                                               ; preds = %20
  %71 = add nuw i32 %12, 1
  %72 = icmp eq i32 %12, %1
  br i1 %72, label %73, label %11, !llvm.loop !24

73:                                               ; preds = %70, %2
  ret ptr %6
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @r8_max(double noundef %0, double noundef %1) local_unnamed_addr #4 {
  %3 = fcmp olt double %1, %0
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @dgefa(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #6 {
  %5 = icmp sgt i32 %2, 1
  br i1 %5, label %6, label %178

6:                                                ; preds = %4
  %7 = sext i32 %1 to i64
  %8 = sext i32 %1 to i64
  %9 = sext i32 %2 to i64
  %10 = zext i32 %2 to i64
  %11 = zext i32 %2 to i64
  br label %12

12:                                               ; preds = %6, %174
  %13 = phi i64 [ 1, %6 ], [ %176, %174 ]
  %14 = phi i32 [ 0, %6 ], [ %175, %174 ]
  %15 = sub nsw i64 %9, %13
  %16 = add nsw i64 %13, -1
  %17 = getelementptr inbounds double, ptr %0, i64 %16
  %18 = mul nsw i64 %16, %8
  %19 = getelementptr inbounds double, ptr %17, i64 %18
  %20 = icmp slt i64 %15, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %12
  %22 = load double, ptr %19, align 8, !tbaa !5
  %23 = fcmp ult double %22, 0.000000e+00
  %24 = fneg double %22
  %25 = select i1 %23, double %24, double %22
  br label %26

26:                                               ; preds = %26, %21
  %27 = phi i64 [ 1, %21 ], [ %36, %26 ]
  %28 = phi i32 [ 1, %21 ], [ %39, %26 ]
  %29 = phi double [ %25, %21 ], [ %37, %26 ]
  %30 = getelementptr inbounds double, ptr %19, i64 %27
  %31 = load double, ptr %30, align 8, !tbaa !5
  %32 = fcmp ult double %31, 0.000000e+00
  %33 = fneg double %31
  %34 = select i1 %32, double %33, double %31
  %35 = fcmp olt double %29, %34
  %36 = add nuw nsw i64 %27, 1
  %37 = select i1 %35, double %34, double %29
  %38 = trunc i64 %36 to i32
  %39 = select i1 %35, i32 %38, i32 %28
  %40 = icmp eq i64 %27, %15
  br i1 %40, label %41, label %26, !llvm.loop !25

41:                                               ; preds = %26, %12
  %42 = phi i32 [ 0, %12 ], [ %39, %26 ]
  %43 = trunc i64 %13 to i32
  %44 = add nsw i32 %42, %43
  %45 = add nsw i32 %44, -1
  %46 = getelementptr inbounds i32, ptr %3, i64 %16
  store i32 %45, ptr %46, align 4, !tbaa !26
  %47 = add nsw i32 %44, -2
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %18, %48
  %50 = getelementptr inbounds double, ptr %0, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !5
  %52 = fcmp oeq double %51, 0.000000e+00
  %53 = trunc i64 %13 to i32
  br i1 %52, label %174, label %54

54:                                               ; preds = %41
  %55 = zext i32 %45 to i64
  %56 = icmp eq i64 %13, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = add nsw i64 %18, %16
  %59 = getelementptr inbounds double, ptr %0, i64 %58
  %60 = load double, ptr %59, align 8, !tbaa !5
  store double %60, ptr %50, align 8, !tbaa !5
  store double %51, ptr %59, align 8, !tbaa !5
  br label %61

61:                                               ; preds = %57, %54
  %62 = add nsw i64 %18, %16
  %63 = getelementptr inbounds double, ptr %0, i64 %62
  %64 = load double, ptr %63, align 8, !tbaa !5
  %65 = fdiv double -1.000000e+00, %64
  %66 = getelementptr inbounds double, ptr %0, i64 %13
  %67 = getelementptr inbounds double, ptr %66, i64 %18
  %68 = icmp slt i64 %15, 1
  br i1 %68, label %112, label %69

69:                                               ; preds = %61
  %70 = trunc i64 %15 to i32
  %71 = urem i32 %70, 5
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = zext i32 %71 to i64
  br label %80

75:                                               ; preds = %80, %69
  %76 = zext i32 %71 to i64
  %77 = icmp sgt i64 %15, %76
  br i1 %77, label %78, label %112

78:                                               ; preds = %75
  %79 = zext i32 %71 to i64
  br label %87

80:                                               ; preds = %80, %73
  %81 = phi i64 [ 0, %73 ], [ %85, %80 ]
  %82 = getelementptr inbounds double, ptr %67, i64 %81
  %83 = load double, ptr %82, align 8, !tbaa !5
  %84 = fmul double %65, %83
  store double %84, ptr %82, align 8, !tbaa !5
  %85 = add nuw nsw i64 %81, 1
  %86 = icmp eq i64 %85, %74
  br i1 %86, label %75, label %80, !llvm.loop !28

87:                                               ; preds = %87, %78
  %88 = phi i64 [ %79, %78 ], [ %108, %87 ]
  %89 = getelementptr inbounds double, ptr %67, i64 %88
  %90 = load double, ptr %89, align 8, !tbaa !5
  %91 = fmul double %65, %90
  store double %91, ptr %89, align 8, !tbaa !5
  %92 = add nuw nsw i64 %88, 1
  %93 = getelementptr inbounds double, ptr %67, i64 %92
  %94 = load double, ptr %93, align 8, !tbaa !5
  %95 = fmul double %65, %94
  store double %95, ptr %93, align 8, !tbaa !5
  %96 = add nuw nsw i64 %88, 2
  %97 = getelementptr inbounds double, ptr %67, i64 %96
  %98 = load double, ptr %97, align 8, !tbaa !5
  %99 = fmul double %65, %98
  store double %99, ptr %97, align 8, !tbaa !5
  %100 = add nuw nsw i64 %88, 3
  %101 = getelementptr inbounds double, ptr %67, i64 %100
  %102 = load double, ptr %101, align 8, !tbaa !5
  %103 = fmul double %65, %102
  store double %103, ptr %101, align 8, !tbaa !5
  %104 = add nuw nsw i64 %88, 4
  %105 = getelementptr inbounds double, ptr %67, i64 %104
  %106 = load double, ptr %105, align 8, !tbaa !5
  %107 = fmul double %65, %106
  store double %107, ptr %105, align 8, !tbaa !5
  %108 = add nuw nsw i64 %88, 5
  %109 = shl i64 %108, 32
  %110 = ashr exact i64 %109, 32
  %111 = icmp sgt i64 %15, %110
  br i1 %111, label %87, label %112, !llvm.loop !29

112:                                              ; preds = %87, %75, %61
  %113 = and i64 %15, 3
  %114 = icmp eq i64 %113, 0
  %115 = and i64 %15, 3
  %116 = icmp sgt i64 %15, 3
  %117 = and i64 %15, 3
  %118 = sext i32 %47 to i64
  br label %119

119:                                              ; preds = %112, %172
  %120 = phi i64 [ %13, %112 ], [ %121, %172 ]
  %121 = add nuw nsw i64 %120, 1
  %122 = mul nsw i64 %120, %7
  %123 = add nsw i64 %122, %118
  %124 = getelementptr inbounds double, ptr %0, i64 %123
  %125 = load double, ptr %124, align 8, !tbaa !5
  br i1 %56, label %130, label %126

126:                                              ; preds = %119
  %127 = add nsw i64 %122, %16
  %128 = getelementptr inbounds double, ptr %0, i64 %127
  %129 = load double, ptr %128, align 8, !tbaa !5
  store double %129, ptr %124, align 8, !tbaa !5
  store double %125, ptr %128, align 8, !tbaa !5
  br label %130

130:                                              ; preds = %126, %119
  %131 = getelementptr inbounds double, ptr %66, i64 %122
  %132 = fcmp oeq double %125, 0.000000e+00
  %133 = or i1 %68, %132
  br i1 %133, label %172, label %134

134:                                              ; preds = %130
  br i1 %114, label %135, label %136

135:                                              ; preds = %136, %134
  br i1 %116, label %145, label %172

136:                                              ; preds = %134, %136
  %137 = phi i64 [ %143, %136 ], [ 0, %134 ]
  %138 = getelementptr inbounds double, ptr %131, i64 %137
  %139 = load double, ptr %138, align 8, !tbaa !5
  %140 = getelementptr inbounds double, ptr %67, i64 %137
  %141 = load double, ptr %140, align 8, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %125, double %141, double %139)
  store double %142, ptr %138, align 8, !tbaa !5
  %143 = add nuw nsw i64 %137, 1
  %144 = icmp eq i64 %143, %115
  br i1 %144, label %135, label %136, !llvm.loop !30

145:                                              ; preds = %135, %145
  %146 = phi i64 [ %170, %145 ], [ %117, %135 ]
  %147 = getelementptr inbounds double, ptr %131, i64 %146
  %148 = load double, ptr %147, align 8, !tbaa !5
  %149 = getelementptr inbounds double, ptr %67, i64 %146
  %150 = load double, ptr %149, align 8, !tbaa !5
  %151 = tail call double @llvm.fmuladd.f64(double %125, double %150, double %148)
  store double %151, ptr %147, align 8, !tbaa !5
  %152 = add nuw nsw i64 %146, 1
  %153 = getelementptr inbounds double, ptr %131, i64 %152
  %154 = load double, ptr %153, align 8, !tbaa !5
  %155 = getelementptr inbounds double, ptr %67, i64 %152
  %156 = load double, ptr %155, align 8, !tbaa !5
  %157 = tail call double @llvm.fmuladd.f64(double %125, double %156, double %154)
  store double %157, ptr %153, align 8, !tbaa !5
  %158 = add nuw nsw i64 %146, 2
  %159 = getelementptr inbounds double, ptr %131, i64 %158
  %160 = load double, ptr %159, align 8, !tbaa !5
  %161 = getelementptr inbounds double, ptr %67, i64 %158
  %162 = load double, ptr %161, align 8, !tbaa !5
  %163 = tail call double @llvm.fmuladd.f64(double %125, double %162, double %160)
  store double %163, ptr %159, align 8, !tbaa !5
  %164 = add nuw nsw i64 %146, 3
  %165 = getelementptr inbounds double, ptr %131, i64 %164
  %166 = load double, ptr %165, align 8, !tbaa !5
  %167 = getelementptr inbounds double, ptr %67, i64 %164
  %168 = load double, ptr %167, align 8, !tbaa !5
  %169 = tail call double @llvm.fmuladd.f64(double %125, double %168, double %166)
  store double %169, ptr %165, align 8, !tbaa !5
  %170 = add nuw nsw i64 %146, 4
  %171 = icmp slt i64 %170, %15
  br i1 %171, label %145, label %172, !llvm.loop !31

172:                                              ; preds = %145, %130, %135
  %173 = icmp eq i64 %121, %11
  br i1 %173, label %174, label %119, !llvm.loop !32

174:                                              ; preds = %172, %41
  %175 = phi i32 [ %53, %41 ], [ %14, %172 ]
  %176 = add nuw nsw i64 %13, 1
  %177 = icmp eq i64 %176, %10
  br i1 %177, label %178, label %12, !llvm.loop !33

178:                                              ; preds = %174, %4
  %179 = phi i32 [ 0, %4 ], [ %175, %174 ]
  %180 = add nsw i32 %2, -1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, ptr %3, i64 %181
  store i32 %2, ptr %182, align 4, !tbaa !26
  %183 = add i32 %1, 1
  %184 = mul i32 %180, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds double, ptr %0, i64 %185
  %187 = load double, ptr %186, align 8, !tbaa !5
  %188 = fcmp oeq double %187, 0.000000e+00
  %189 = select i1 %188, i32 %2, i32 %179
  ret i32 %189
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dgesl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #6 {
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = icmp slt i32 %2, 1
  br i1 %9, label %161, label %10

10:                                               ; preds = %8
  %11 = sext i32 %1 to i64
  %12 = add i32 %2, 1
  %13 = zext i32 %12 to i64
  br label %167

14:                                               ; preds = %6
  %15 = icmp sgt i32 %2, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = sext i32 %1 to i64
  %18 = sext i32 %2 to i64
  %19 = zext i32 %2 to i64
  br label %25

20:                                               ; preds = %93, %14
  %21 = icmp sgt i32 %2, 0
  br i1 %21, label %22, label %324

22:                                               ; preds = %20
  %23 = sext i32 %2 to i64
  %24 = sext i32 %1 to i64
  br label %96

25:                                               ; preds = %16, %93
  %26 = phi i64 [ 1, %16 ], [ %94, %93 ]
  %27 = add nsw i64 %26, -1
  %28 = getelementptr inbounds i32, ptr %3, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !26
  %30 = add nsw i32 %29, -1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %4, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !5
  %34 = zext i32 %29 to i64
  %35 = icmp eq i64 %26, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = getelementptr inbounds double, ptr %4, i64 %27
  %38 = load double, ptr %37, align 8, !tbaa !5
  store double %38, ptr %32, align 8, !tbaa !5
  store double %33, ptr %37, align 8, !tbaa !5
  br label %39

39:                                               ; preds = %36, %25
  %40 = sub nsw i64 %18, %26
  %41 = getelementptr inbounds double, ptr %0, i64 %26
  %42 = mul nsw i64 %27, %17
  %43 = getelementptr inbounds double, ptr %41, i64 %42
  %44 = getelementptr inbounds double, ptr %4, i64 %26
  %45 = icmp slt i64 %40, 1
  %46 = fcmp oeq double %33, 0.000000e+00
  %47 = or i1 %45, %46
  br i1 %47, label %93, label %48

48:                                               ; preds = %39
  %49 = and i64 %40, 3
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = and i64 %40, 3
  br label %57

53:                                               ; preds = %57, %48
  %54 = icmp sgt i64 %40, 3
  br i1 %54, label %55, label %93

55:                                               ; preds = %53
  %56 = and i64 %40, 3
  br label %66

57:                                               ; preds = %57, %51
  %58 = phi i64 [ 0, %51 ], [ %64, %57 ]
  %59 = getelementptr inbounds double, ptr %44, i64 %58
  %60 = load double, ptr %59, align 8, !tbaa !5
  %61 = getelementptr inbounds double, ptr %43, i64 %58
  %62 = load double, ptr %61, align 8, !tbaa !5
  %63 = tail call double @llvm.fmuladd.f64(double %33, double %62, double %60)
  store double %63, ptr %59, align 8, !tbaa !5
  %64 = add nuw nsw i64 %58, 1
  %65 = icmp eq i64 %64, %52
  br i1 %65, label %53, label %57, !llvm.loop !30

66:                                               ; preds = %66, %55
  %67 = phi i64 [ %56, %55 ], [ %91, %66 ]
  %68 = getelementptr inbounds double, ptr %44, i64 %67
  %69 = load double, ptr %68, align 8, !tbaa !5
  %70 = getelementptr inbounds double, ptr %43, i64 %67
  %71 = load double, ptr %70, align 8, !tbaa !5
  %72 = tail call double @llvm.fmuladd.f64(double %33, double %71, double %69)
  store double %72, ptr %68, align 8, !tbaa !5
  %73 = add nuw nsw i64 %67, 1
  %74 = getelementptr inbounds double, ptr %44, i64 %73
  %75 = load double, ptr %74, align 8, !tbaa !5
  %76 = getelementptr inbounds double, ptr %43, i64 %73
  %77 = load double, ptr %76, align 8, !tbaa !5
  %78 = tail call double @llvm.fmuladd.f64(double %33, double %77, double %75)
  store double %78, ptr %74, align 8, !tbaa !5
  %79 = add nuw nsw i64 %67, 2
  %80 = getelementptr inbounds double, ptr %44, i64 %79
  %81 = load double, ptr %80, align 8, !tbaa !5
  %82 = getelementptr inbounds double, ptr %43, i64 %79
  %83 = load double, ptr %82, align 8, !tbaa !5
  %84 = tail call double @llvm.fmuladd.f64(double %33, double %83, double %81)
  store double %84, ptr %80, align 8, !tbaa !5
  %85 = add nuw nsw i64 %67, 3
  %86 = getelementptr inbounds double, ptr %44, i64 %85
  %87 = load double, ptr %86, align 8, !tbaa !5
  %88 = getelementptr inbounds double, ptr %43, i64 %85
  %89 = load double, ptr %88, align 8, !tbaa !5
  %90 = tail call double @llvm.fmuladd.f64(double %33, double %89, double %87)
  store double %90, ptr %86, align 8, !tbaa !5
  %91 = add nuw nsw i64 %67, 4
  %92 = icmp slt i64 %91, %40
  br i1 %92, label %66, label %93, !llvm.loop !31

93:                                               ; preds = %66, %39, %53
  %94 = add nuw nsw i64 %26, 1
  %95 = icmp eq i64 %94, %19
  br i1 %95, label %20, label %25, !llvm.loop !34

96:                                               ; preds = %22, %159
  %97 = phi i64 [ %23, %22 ], [ %98, %159 ]
  %98 = add nsw i64 %97, -1
  %99 = trunc i64 %98 to i32
  %100 = getelementptr inbounds double, ptr %4, i64 %98
  %101 = load double, ptr %100, align 8, !tbaa !5
  %102 = mul nsw i64 %98, %24
  %103 = mul nsw i32 %99, %1
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %98, %104
  %106 = getelementptr inbounds double, ptr %0, i64 %105
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = fdiv double %101, %107
  store double %108, ptr %100, align 8, !tbaa !5
  %109 = fneg double %108
  %110 = getelementptr inbounds double, ptr %0, i64 %102
  %111 = icmp eq i64 %97, 1
  %112 = fcmp oeq double %108, 0.000000e+00
  %113 = or i1 %111, %112
  br i1 %113, label %159, label %114

114:                                              ; preds = %96
  %115 = and i64 %98, 3
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = and i64 %98, 3
  br label %123

119:                                              ; preds = %123, %114
  %120 = icmp sgt i64 %97, 4
  br i1 %120, label %121, label %159

121:                                              ; preds = %119
  %122 = and i64 %98, 3
  br label %132

123:                                              ; preds = %123, %117
  %124 = phi i64 [ 0, %117 ], [ %130, %123 ]
  %125 = getelementptr inbounds double, ptr %4, i64 %124
  %126 = load double, ptr %125, align 8, !tbaa !5
  %127 = getelementptr inbounds double, ptr %110, i64 %124
  %128 = load double, ptr %127, align 8, !tbaa !5
  %129 = tail call double @llvm.fmuladd.f64(double %109, double %128, double %126)
  store double %129, ptr %125, align 8, !tbaa !5
  %130 = add nuw nsw i64 %124, 1
  %131 = icmp eq i64 %130, %118
  br i1 %131, label %119, label %123, !llvm.loop !30

132:                                              ; preds = %132, %121
  %133 = phi i64 [ %122, %121 ], [ %157, %132 ]
  %134 = getelementptr inbounds double, ptr %4, i64 %133
  %135 = load double, ptr %134, align 8, !tbaa !5
  %136 = getelementptr inbounds double, ptr %110, i64 %133
  %137 = load double, ptr %136, align 8, !tbaa !5
  %138 = tail call double @llvm.fmuladd.f64(double %109, double %137, double %135)
  store double %138, ptr %134, align 8, !tbaa !5
  %139 = add nuw nsw i64 %133, 1
  %140 = getelementptr inbounds double, ptr %4, i64 %139
  %141 = load double, ptr %140, align 8, !tbaa !5
  %142 = getelementptr inbounds double, ptr %110, i64 %139
  %143 = load double, ptr %142, align 8, !tbaa !5
  %144 = tail call double @llvm.fmuladd.f64(double %109, double %143, double %141)
  store double %144, ptr %140, align 8, !tbaa !5
  %145 = add nuw nsw i64 %133, 2
  %146 = getelementptr inbounds double, ptr %4, i64 %145
  %147 = load double, ptr %146, align 8, !tbaa !5
  %148 = getelementptr inbounds double, ptr %110, i64 %145
  %149 = load double, ptr %148, align 8, !tbaa !5
  %150 = tail call double @llvm.fmuladd.f64(double %109, double %149, double %147)
  store double %150, ptr %146, align 8, !tbaa !5
  %151 = add nuw nsw i64 %133, 3
  %152 = getelementptr inbounds double, ptr %4, i64 %151
  %153 = load double, ptr %152, align 8, !tbaa !5
  %154 = getelementptr inbounds double, ptr %110, i64 %151
  %155 = load double, ptr %154, align 8, !tbaa !5
  %156 = tail call double @llvm.fmuladd.f64(double %109, double %155, double %153)
  store double %156, ptr %152, align 8, !tbaa !5
  %157 = add nuw nsw i64 %133, 4
  %158 = icmp slt i64 %157, %98
  br i1 %158, label %132, label %159, !llvm.loop !31

159:                                              ; preds = %132, %96, %119
  %160 = icmp sgt i64 %97, 1
  br i1 %160, label %96, label %324, !llvm.loop !35

161:                                              ; preds = %231, %8
  %162 = icmp sgt i32 %2, 1
  br i1 %162, label %163, label %324

163:                                              ; preds = %161
  %164 = sext i32 %2 to i64
  %165 = sext i32 %1 to i64
  %166 = sext i32 %2 to i64
  br label %242

167:                                              ; preds = %10, %231
  %168 = phi i64 [ 1, %10 ], [ %240, %231 ]
  %169 = add nsw i64 %168, -1
  %170 = mul nsw i64 %169, %11
  %171 = getelementptr inbounds double, ptr %0, i64 %170
  %172 = icmp ult i64 %168, 2
  br i1 %172, label %231, label %173

173:                                              ; preds = %167
  %174 = trunc i64 %169 to i32
  %175 = urem i32 %174, 5
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %173
  %178 = zext i32 %175 to i64
  br label %185

179:                                              ; preds = %185, %173
  %180 = phi double [ 0.000000e+00, %173 ], [ %192, %185 ]
  %181 = zext i32 %175 to i64
  %182 = icmp sgt i64 %169, %181
  br i1 %182, label %183, label %231

183:                                              ; preds = %179
  %184 = zext i32 %175 to i64
  br label %195

185:                                              ; preds = %185, %177
  %186 = phi i64 [ 0, %177 ], [ %193, %185 ]
  %187 = phi double [ 0.000000e+00, %177 ], [ %192, %185 ]
  %188 = getelementptr inbounds double, ptr %171, i64 %186
  %189 = load double, ptr %188, align 8, !tbaa !5
  %190 = getelementptr inbounds double, ptr %4, i64 %186
  %191 = load double, ptr %190, align 8, !tbaa !5
  %192 = tail call double @llvm.fmuladd.f64(double %189, double %191, double %187)
  %193 = add nuw nsw i64 %186, 1
  %194 = icmp eq i64 %193, %178
  br i1 %194, label %179, label %185, !llvm.loop !36

195:                                              ; preds = %195, %183
  %196 = phi i64 [ %184, %183 ], [ %227, %195 ]
  %197 = phi double [ %180, %183 ], [ %226, %195 ]
  %198 = getelementptr inbounds double, ptr %171, i64 %196
  %199 = load double, ptr %198, align 8, !tbaa !5
  %200 = getelementptr inbounds double, ptr %4, i64 %196
  %201 = load double, ptr %200, align 8, !tbaa !5
  %202 = tail call double @llvm.fmuladd.f64(double %199, double %201, double %197)
  %203 = add nuw nsw i64 %196, 1
  %204 = getelementptr inbounds double, ptr %171, i64 %203
  %205 = load double, ptr %204, align 8, !tbaa !5
  %206 = getelementptr inbounds double, ptr %4, i64 %203
  %207 = load double, ptr %206, align 8, !tbaa !5
  %208 = tail call double @llvm.fmuladd.f64(double %205, double %207, double %202)
  %209 = add nuw nsw i64 %196, 2
  %210 = getelementptr inbounds double, ptr %171, i64 %209
  %211 = load double, ptr %210, align 8, !tbaa !5
  %212 = getelementptr inbounds double, ptr %4, i64 %209
  %213 = load double, ptr %212, align 8, !tbaa !5
  %214 = tail call double @llvm.fmuladd.f64(double %211, double %213, double %208)
  %215 = add nuw nsw i64 %196, 3
  %216 = getelementptr inbounds double, ptr %171, i64 %215
  %217 = load double, ptr %216, align 8, !tbaa !5
  %218 = getelementptr inbounds double, ptr %4, i64 %215
  %219 = load double, ptr %218, align 8, !tbaa !5
  %220 = tail call double @llvm.fmuladd.f64(double %217, double %219, double %214)
  %221 = add nuw nsw i64 %196, 4
  %222 = getelementptr inbounds double, ptr %171, i64 %221
  %223 = load double, ptr %222, align 8, !tbaa !5
  %224 = getelementptr inbounds double, ptr %4, i64 %221
  %225 = load double, ptr %224, align 8, !tbaa !5
  %226 = tail call double @llvm.fmuladd.f64(double %223, double %225, double %220)
  %227 = add nuw nsw i64 %196, 5
  %228 = shl i64 %227, 32
  %229 = ashr exact i64 %228, 32
  %230 = icmp sgt i64 %169, %229
  br i1 %230, label %195, label %231, !llvm.loop !37

231:                                              ; preds = %195, %167, %179
  %232 = phi double [ 0.000000e+00, %167 ], [ %180, %179 ], [ %226, %195 ]
  %233 = getelementptr inbounds double, ptr %4, i64 %169
  %234 = load double, ptr %233, align 8, !tbaa !5
  %235 = fsub double %234, %232
  %236 = add nsw i64 %170, %169
  %237 = getelementptr inbounds double, ptr %0, i64 %236
  %238 = load double, ptr %237, align 8, !tbaa !5
  %239 = fdiv double %235, %238
  store double %239, ptr %233, align 8, !tbaa !5
  %240 = add nuw nsw i64 %168, 1
  %241 = icmp eq i64 %240, %13
  br i1 %241, label %161, label %167, !llvm.loop !38

242:                                              ; preds = %163, %322
  %243 = phi i64 [ %164, %163 ], [ %244, %322 ]
  %244 = add nsw i64 %243, -1
  %245 = add nsw i64 %243, -2
  %246 = getelementptr inbounds double, ptr %4, i64 %245
  %247 = load double, ptr %246, align 8, !tbaa !5
  %248 = sub nsw i64 %166, %244
  %249 = getelementptr inbounds double, ptr %0, i64 %244
  %250 = mul nsw i64 %245, %165
  %251 = getelementptr inbounds double, ptr %249, i64 %250
  %252 = getelementptr inbounds double, ptr %4, i64 %244
  %253 = trunc i64 %248 to i32
  %254 = urem i32 %253, 5
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %242
  %257 = zext i32 %254 to i64
  br label %264

258:                                              ; preds = %264, %242
  %259 = phi double [ 0.000000e+00, %242 ], [ %271, %264 ]
  %260 = zext i32 %254 to i64
  %261 = icmp sgt i64 %248, %260
  br i1 %261, label %262, label %310

262:                                              ; preds = %258
  %263 = zext i32 %254 to i64
  br label %274

264:                                              ; preds = %264, %256
  %265 = phi i64 [ 0, %256 ], [ %272, %264 ]
  %266 = phi double [ 0.000000e+00, %256 ], [ %271, %264 ]
  %267 = getelementptr inbounds double, ptr %251, i64 %265
  %268 = load double, ptr %267, align 8, !tbaa !5
  %269 = getelementptr inbounds double, ptr %252, i64 %265
  %270 = load double, ptr %269, align 8, !tbaa !5
  %271 = tail call double @llvm.fmuladd.f64(double %268, double %270, double %266)
  %272 = add nuw nsw i64 %265, 1
  %273 = icmp eq i64 %272, %257
  br i1 %273, label %258, label %264, !llvm.loop !36

274:                                              ; preds = %274, %262
  %275 = phi i64 [ %263, %262 ], [ %306, %274 ]
  %276 = phi double [ %259, %262 ], [ %305, %274 ]
  %277 = getelementptr inbounds double, ptr %251, i64 %275
  %278 = load double, ptr %277, align 8, !tbaa !5
  %279 = getelementptr inbounds double, ptr %252, i64 %275
  %280 = load double, ptr %279, align 8, !tbaa !5
  %281 = tail call double @llvm.fmuladd.f64(double %278, double %280, double %276)
  %282 = add nuw nsw i64 %275, 1
  %283 = getelementptr inbounds double, ptr %251, i64 %282
  %284 = load double, ptr %283, align 8, !tbaa !5
  %285 = getelementptr inbounds double, ptr %252, i64 %282
  %286 = load double, ptr %285, align 8, !tbaa !5
  %287 = tail call double @llvm.fmuladd.f64(double %284, double %286, double %281)
  %288 = add nuw nsw i64 %275, 2
  %289 = getelementptr inbounds double, ptr %251, i64 %288
  %290 = load double, ptr %289, align 8, !tbaa !5
  %291 = getelementptr inbounds double, ptr %252, i64 %288
  %292 = load double, ptr %291, align 8, !tbaa !5
  %293 = tail call double @llvm.fmuladd.f64(double %290, double %292, double %287)
  %294 = add nuw nsw i64 %275, 3
  %295 = getelementptr inbounds double, ptr %251, i64 %294
  %296 = load double, ptr %295, align 8, !tbaa !5
  %297 = getelementptr inbounds double, ptr %252, i64 %294
  %298 = load double, ptr %297, align 8, !tbaa !5
  %299 = tail call double @llvm.fmuladd.f64(double %296, double %298, double %293)
  %300 = add nuw nsw i64 %275, 4
  %301 = getelementptr inbounds double, ptr %251, i64 %300
  %302 = load double, ptr %301, align 8, !tbaa !5
  %303 = getelementptr inbounds double, ptr %252, i64 %300
  %304 = load double, ptr %303, align 8, !tbaa !5
  %305 = tail call double @llvm.fmuladd.f64(double %302, double %304, double %299)
  %306 = add nuw nsw i64 %275, 5
  %307 = shl i64 %306, 32
  %308 = ashr exact i64 %307, 32
  %309 = icmp sgt i64 %248, %308
  br i1 %309, label %274, label %310, !llvm.loop !37

310:                                              ; preds = %274, %258
  %311 = phi double [ %259, %258 ], [ %305, %274 ]
  %312 = fadd double %247, %311
  store double %312, ptr %246, align 8, !tbaa !5
  %313 = getelementptr inbounds i32, ptr %3, i64 %245
  %314 = load i32, ptr %313, align 4, !tbaa !26
  %315 = zext i32 %314 to i64
  %316 = icmp eq i64 %244, %315
  br i1 %316, label %322, label %317

317:                                              ; preds = %310
  %318 = add nsw i32 %314, -1
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds double, ptr %4, i64 %319
  %321 = load double, ptr %320, align 8, !tbaa !5
  store double %312, ptr %320, align 8, !tbaa !5
  store double %321, ptr %246, align 8, !tbaa !5
  br label %322

322:                                              ; preds = %310, %317
  %323 = icmp sgt i64 %243, 2
  br i1 %323, label %242, label %324, !llvm.loop !39

324:                                              ; preds = %322, %159, %161, %20
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @r8_abs(double noundef %0) local_unnamed_addr #4 {
  %2 = fcmp ult double %0, 0.000000e+00
  %3 = fneg double %0
  %4 = select i1 %2, double %3, double %0
  ret double %4
}

; Function Attrs: nounwind uwtable
define dso_local double @cpu_time() local_unnamed_addr #9 {
  %1 = tail call i64 @clock() #17
  %2 = sitofp i64 %1 to double
  %3 = fdiv double %2, 1.000000e+06
  ret double %3
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #10

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #6 {
  %7 = icmp slt i32 %0, 1
  %8 = fcmp oeq double %1, 0.000000e+00
  %9 = or i1 %7, %8
  br i1 %9, label %88, label %10

10:                                               ; preds = %6
  %11 = icmp ne i32 %3, 1
  %12 = icmp ne i32 %5, 1
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = icmp sgt i32 %0, 0
  br i1 %15, label %16, label %88

16:                                               ; preds = %14
  %17 = icmp slt i32 %5, 0
  %18 = sub i32 1, %0
  %19 = mul nsw i32 %18, %5
  %20 = select i1 %17, i32 %19, i32 0
  %21 = icmp slt i32 %3, 0
  %22 = mul nsw i32 %18, %3
  %23 = select i1 %21, i32 %22, i32 0
  %24 = sext i32 %20 to i64
  %25 = sext i32 %5 to i64
  %26 = sext i32 %23 to i64
  %27 = sext i32 %3 to i64
  br label %28

28:                                               ; preds = %16, %28
  %29 = phi i64 [ %26, %16 ], [ %37, %28 ]
  %30 = phi i64 [ %24, %16 ], [ %38, %28 ]
  %31 = phi i32 [ 0, %16 ], [ %39, %28 ]
  %32 = getelementptr inbounds double, ptr %4, i64 %30
  %33 = load double, ptr %32, align 8, !tbaa !5
  %34 = getelementptr inbounds double, ptr %2, i64 %29
  %35 = load double, ptr %34, align 8, !tbaa !5
  %36 = tail call double @llvm.fmuladd.f64(double %1, double %35, double %33)
  store double %36, ptr %32, align 8, !tbaa !5
  %37 = add i64 %29, %27
  %38 = add i64 %30, %25
  %39 = add nuw nsw i32 %31, 1
  %40 = icmp eq i32 %39, %0
  br i1 %40, label %88, label %28, !llvm.loop !40

41:                                               ; preds = %10
  %42 = and i32 %0, 3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = zext i32 %42 to i64
  br label %52

46:                                               ; preds = %52, %41
  %47 = icmp sgt i32 %0, 3
  br i1 %47, label %48, label %88

48:                                               ; preds = %46
  %49 = and i32 %0, 3
  %50 = zext i32 %49 to i64
  %51 = sext i32 %0 to i64
  br label %61

52:                                               ; preds = %44, %52
  %53 = phi i64 [ 0, %44 ], [ %59, %52 ]
  %54 = getelementptr inbounds double, ptr %4, i64 %53
  %55 = load double, ptr %54, align 8, !tbaa !5
  %56 = getelementptr inbounds double, ptr %2, i64 %53
  %57 = load double, ptr %56, align 8, !tbaa !5
  %58 = tail call double @llvm.fmuladd.f64(double %1, double %57, double %55)
  store double %58, ptr %54, align 8, !tbaa !5
  %59 = add nuw nsw i64 %53, 1
  %60 = icmp eq i64 %59, %45
  br i1 %60, label %46, label %52, !llvm.loop !30

61:                                               ; preds = %48, %61
  %62 = phi i64 [ %50, %48 ], [ %86, %61 ]
  %63 = getelementptr inbounds double, ptr %4, i64 %62
  %64 = load double, ptr %63, align 8, !tbaa !5
  %65 = getelementptr inbounds double, ptr %2, i64 %62
  %66 = load double, ptr %65, align 8, !tbaa !5
  %67 = tail call double @llvm.fmuladd.f64(double %1, double %66, double %64)
  store double %67, ptr %63, align 8, !tbaa !5
  %68 = add nuw nsw i64 %62, 1
  %69 = getelementptr inbounds double, ptr %4, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !5
  %71 = getelementptr inbounds double, ptr %2, i64 %68
  %72 = load double, ptr %71, align 8, !tbaa !5
  %73 = tail call double @llvm.fmuladd.f64(double %1, double %72, double %70)
  store double %73, ptr %69, align 8, !tbaa !5
  %74 = add nuw nsw i64 %62, 2
  %75 = getelementptr inbounds double, ptr %4, i64 %74
  %76 = load double, ptr %75, align 8, !tbaa !5
  %77 = getelementptr inbounds double, ptr %2, i64 %74
  %78 = load double, ptr %77, align 8, !tbaa !5
  %79 = tail call double @llvm.fmuladd.f64(double %1, double %78, double %76)
  store double %79, ptr %75, align 8, !tbaa !5
  %80 = add nuw nsw i64 %62, 3
  %81 = getelementptr inbounds double, ptr %4, i64 %80
  %82 = load double, ptr %81, align 8, !tbaa !5
  %83 = getelementptr inbounds double, ptr %2, i64 %80
  %84 = load double, ptr %83, align 8, !tbaa !5
  %85 = tail call double @llvm.fmuladd.f64(double %1, double %84, double %82)
  store double %85, ptr %81, align 8, !tbaa !5
  %86 = add nuw nsw i64 %62, 4
  %87 = icmp slt i64 %86, %51
  br i1 %87, label %61, label %88, !llvm.loop !31

88:                                               ; preds = %61, %28, %46, %14, %6
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: read) uwtable
define dso_local double @ddot(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #11 {
  %6 = icmp slt i32 %0, 1
  br i1 %6, label %95, label %7

7:                                                ; preds = %5
  %8 = icmp ne i32 %2, 1
  %9 = icmp ne i32 %4, 1
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = icmp sgt i32 %0, 0
  br i1 %12, label %13, label %95

13:                                               ; preds = %11
  %14 = icmp slt i32 %4, 0
  %15 = sub i32 1, %0
  %16 = mul nsw i32 %15, %4
  %17 = select i1 %14, i32 %16, i32 0
  %18 = icmp slt i32 %2, 0
  %19 = mul nsw i32 %15, %2
  %20 = select i1 %18, i32 %19, i32 0
  %21 = sext i32 %17 to i64
  %22 = sext i32 %4 to i64
  %23 = sext i32 %20 to i64
  %24 = sext i32 %2 to i64
  br label %25

25:                                               ; preds = %13, %25
  %26 = phi i64 [ %23, %13 ], [ %35, %25 ]
  %27 = phi i64 [ %21, %13 ], [ %36, %25 ]
  %28 = phi i32 [ 0, %13 ], [ %37, %25 ]
  %29 = phi double [ 0.000000e+00, %13 ], [ %34, %25 ]
  %30 = getelementptr inbounds double, ptr %1, i64 %26
  %31 = load double, ptr %30, align 8, !tbaa !5
  %32 = getelementptr inbounds double, ptr %3, i64 %27
  %33 = load double, ptr %32, align 8, !tbaa !5
  %34 = tail call double @llvm.fmuladd.f64(double %31, double %33, double %29)
  %35 = add i64 %26, %24
  %36 = add i64 %27, %22
  %37 = add nuw nsw i32 %28, 1
  %38 = icmp eq i32 %37, %0
  br i1 %38, label %95, label %25, !llvm.loop !41

39:                                               ; preds = %7
  %40 = urem i32 %0, 5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = zext i32 %40 to i64
  br label %50

44:                                               ; preds = %50, %39
  %45 = phi double [ 0.000000e+00, %39 ], [ %57, %50 ]
  %46 = icmp slt i32 %40, %0
  br i1 %46, label %47, label %95

47:                                               ; preds = %44
  %48 = urem i32 %0, 5
  %49 = zext i32 %48 to i64
  br label %60

50:                                               ; preds = %42, %50
  %51 = phi i64 [ 0, %42 ], [ %58, %50 ]
  %52 = phi double [ 0.000000e+00, %42 ], [ %57, %50 ]
  %53 = getelementptr inbounds double, ptr %1, i64 %51
  %54 = load double, ptr %53, align 8, !tbaa !5
  %55 = getelementptr inbounds double, ptr %3, i64 %51
  %56 = load double, ptr %55, align 8, !tbaa !5
  %57 = tail call double @llvm.fmuladd.f64(double %54, double %56, double %52)
  %58 = add nuw nsw i64 %51, 1
  %59 = icmp eq i64 %58, %43
  br i1 %59, label %44, label %50, !llvm.loop !36

60:                                               ; preds = %47, %60
  %61 = phi i64 [ %49, %47 ], [ %92, %60 ]
  %62 = phi double [ %45, %47 ], [ %91, %60 ]
  %63 = getelementptr inbounds double, ptr %1, i64 %61
  %64 = load double, ptr %63, align 8, !tbaa !5
  %65 = getelementptr inbounds double, ptr %3, i64 %61
  %66 = load double, ptr %65, align 8, !tbaa !5
  %67 = tail call double @llvm.fmuladd.f64(double %64, double %66, double %62)
  %68 = add nuw nsw i64 %61, 1
  %69 = getelementptr inbounds double, ptr %1, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !5
  %71 = getelementptr inbounds double, ptr %3, i64 %68
  %72 = load double, ptr %71, align 8, !tbaa !5
  %73 = tail call double @llvm.fmuladd.f64(double %70, double %72, double %67)
  %74 = add nuw nsw i64 %61, 2
  %75 = getelementptr inbounds double, ptr %1, i64 %74
  %76 = load double, ptr %75, align 8, !tbaa !5
  %77 = getelementptr inbounds double, ptr %3, i64 %74
  %78 = load double, ptr %77, align 8, !tbaa !5
  %79 = tail call double @llvm.fmuladd.f64(double %76, double %78, double %73)
  %80 = add nuw nsw i64 %61, 3
  %81 = getelementptr inbounds double, ptr %1, i64 %80
  %82 = load double, ptr %81, align 8, !tbaa !5
  %83 = getelementptr inbounds double, ptr %3, i64 %80
  %84 = load double, ptr %83, align 8, !tbaa !5
  %85 = tail call double @llvm.fmuladd.f64(double %82, double %84, double %79)
  %86 = add nuw nsw i64 %61, 4
  %87 = getelementptr inbounds double, ptr %1, i64 %86
  %88 = load double, ptr %87, align 8, !tbaa !5
  %89 = getelementptr inbounds double, ptr %3, i64 %86
  %90 = load double, ptr %89, align 8, !tbaa !5
  %91 = tail call double @llvm.fmuladd.f64(double %88, double %90, double %85)
  %92 = add nuw nsw i64 %61, 5
  %93 = trunc i64 %92 to i32
  %94 = icmp slt i32 %93, %0
  br i1 %94, label %60, label %95, !llvm.loop !37

95:                                               ; preds = %60, %25, %44, %11, %5
  %96 = phi double [ 0.000000e+00, %5 ], [ 0.000000e+00, %11 ], [ %45, %44 ], [ %34, %25 ], [ %91, %60 ]
  ret double %96
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = icmp slt i32 %0, 1
  %5 = icmp slt i32 %2, 1
  %6 = or i1 %4, %5
  br i1 %6, label %58, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %58, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %2, 1
  %11 = icmp sgt i32 %0, 1
  br i1 %10, label %12, label %34

12:                                               ; preds = %9
  br i1 %11, label %13, label %58

13:                                               ; preds = %12
  %14 = load double, ptr %1, align 8, !tbaa !5
  %15 = fcmp ult double %14, 0.000000e+00
  %16 = fneg double %14
  %17 = select i1 %15, double %16, double %14
  %18 = zext i32 %0 to i64
  br label %19

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 1, %13 ], [ %29, %19 ]
  %21 = phi i32 [ 1, %13 ], [ %32, %19 ]
  %22 = phi double [ %17, %13 ], [ %30, %19 ]
  %23 = getelementptr inbounds double, ptr %1, i64 %20
  %24 = load double, ptr %23, align 8, !tbaa !5
  %25 = fcmp ult double %24, 0.000000e+00
  %26 = fneg double %24
  %27 = select i1 %25, double %26, double %24
  %28 = fcmp olt double %22, %27
  %29 = add nuw nsw i64 %20, 1
  %30 = select i1 %28, double %27, double %22
  %31 = trunc i64 %29 to i32
  %32 = select i1 %28, i32 %31, i32 %21
  %33 = icmp eq i64 %29, %18
  br i1 %33, label %58, label %19, !llvm.loop !25

34:                                               ; preds = %9
  br i1 %11, label %35, label %58

35:                                               ; preds = %34
  %36 = load double, ptr %1, align 8, !tbaa !5
  %37 = fcmp ult double %36, 0.000000e+00
  %38 = fneg double %36
  %39 = select i1 %37, double %38, double %36
  %40 = sext i32 %2 to i64
  br label %41

41:                                               ; preds = %35, %41
  %42 = phi i64 [ %40, %35 ], [ %55, %41 ]
  %43 = phi i32 [ 1, %35 ], [ %54, %41 ]
  %44 = phi i32 [ 1, %35 ], [ %56, %41 ]
  %45 = phi double [ %39, %35 ], [ %53, %41 ]
  %46 = getelementptr inbounds double, ptr %1, i64 %42
  %47 = load double, ptr %46, align 8, !tbaa !5
  %48 = fcmp ult double %47, 0.000000e+00
  %49 = fneg double %47
  %50 = select i1 %48, double %49, double %47
  %51 = fcmp olt double %45, %50
  %52 = add nuw nsw i32 %44, 1
  %53 = select i1 %51, double %50, double %45
  %54 = select i1 %51, i32 %52, i32 %43
  %55 = add i64 %42, %40
  %56 = add nuw nsw i32 %44, 1
  %57 = icmp eq i32 %56, %0
  br i1 %57, label %58, label %41, !llvm.loop !42

58:                                               ; preds = %41, %19, %34, %12, %7, %3
  %59 = phi i32 [ 0, %3 ], [ 1, %7 ], [ 1, %12 ], [ 1, %34 ], [ %32, %19 ], [ %54, %41 ]
  ret i32 %59
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #13 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %67, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 1
  br i1 %7, label %8, label %49

8:                                                ; preds = %6
  %9 = urem i32 %0, 5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = zext i32 %9 to i64
  br label %18

13:                                               ; preds = %18, %8
  %14 = icmp slt i32 %9, %0
  br i1 %14, label %15, label %67

15:                                               ; preds = %13
  %16 = urem i32 %0, 5
  %17 = zext i32 %16 to i64
  br label %25

18:                                               ; preds = %11, %18
  %19 = phi i64 [ 0, %11 ], [ %23, %18 ]
  %20 = getelementptr inbounds double, ptr %2, i64 %19
  %21 = load double, ptr %20, align 8, !tbaa !5
  %22 = fmul double %21, %1
  store double %22, ptr %20, align 8, !tbaa !5
  %23 = add nuw nsw i64 %19, 1
  %24 = icmp eq i64 %23, %12
  br i1 %24, label %13, label %18, !llvm.loop !28

25:                                               ; preds = %15, %25
  %26 = phi i64 [ %17, %15 ], [ %46, %25 ]
  %27 = getelementptr inbounds double, ptr %2, i64 %26
  %28 = load double, ptr %27, align 8, !tbaa !5
  %29 = fmul double %28, %1
  store double %29, ptr %27, align 8, !tbaa !5
  %30 = add nuw nsw i64 %26, 1
  %31 = getelementptr inbounds double, ptr %2, i64 %30
  %32 = load double, ptr %31, align 8, !tbaa !5
  %33 = fmul double %32, %1
  store double %33, ptr %31, align 8, !tbaa !5
  %34 = add nuw nsw i64 %26, 2
  %35 = getelementptr inbounds double, ptr %2, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !5
  %37 = fmul double %36, %1
  store double %37, ptr %35, align 8, !tbaa !5
  %38 = add nuw nsw i64 %26, 3
  %39 = getelementptr inbounds double, ptr %2, i64 %38
  %40 = load double, ptr %39, align 8, !tbaa !5
  %41 = fmul double %40, %1
  store double %41, ptr %39, align 8, !tbaa !5
  %42 = add nuw nsw i64 %26, 4
  %43 = getelementptr inbounds double, ptr %2, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !5
  %45 = fmul double %44, %1
  store double %45, ptr %43, align 8, !tbaa !5
  %46 = add nuw nsw i64 %26, 5
  %47 = trunc i64 %46 to i32
  %48 = icmp slt i32 %47, %0
  br i1 %48, label %25, label %67, !llvm.loop !29

49:                                               ; preds = %6
  %50 = icmp sgt i32 %0, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %49
  %52 = icmp slt i32 %3, 0
  %53 = sub i32 1, %0
  %54 = mul nsw i32 %53, %3
  %55 = select i1 %52, i32 %54, i32 0
  %56 = sext i32 %55 to i64
  %57 = sext i32 %3 to i64
  br label %58

58:                                               ; preds = %51, %58
  %59 = phi i64 [ %56, %51 ], [ %64, %58 ]
  %60 = phi i32 [ 0, %51 ], [ %65, %58 ]
  %61 = getelementptr inbounds double, ptr %2, i64 %59
  %62 = load double, ptr %61, align 8, !tbaa !5
  %63 = fmul double %62, %1
  store double %63, ptr %61, align 8, !tbaa !5
  %64 = add i64 %59, %57
  %65 = add nuw nsw i32 %60, 1
  %66 = icmp eq i32 %65, %0
  br i1 %66, label %67, label %58, !llvm.loop !43

67:                                               ; preds = %58, %25, %49, %13, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @r8_epsilon() local_unnamed_addr #4 {
  ret double 0x3CB0000000000000
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local double @r8_random(ptr nocapture noundef %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds i32, ptr %0, i64 3
  %3 = load i32, ptr %2, align 4, !tbaa !26
  %4 = mul nsw i32 %3, 2549
  %5 = sdiv i32 %4, 4096
  %6 = shl nsw i32 %5, 12
  %7 = sub nsw i32 %4, %6
  %8 = getelementptr inbounds i32, ptr %0, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !26
  %10 = mul nsw i32 %9, 2549
  %11 = mul nsw i32 %3, 2508
  %12 = add i32 %10, %11
  %13 = add i32 %12, %5
  %14 = sdiv i32 %13, 4096
  %15 = shl nsw i32 %14, 12
  %16 = sub nsw i32 %13, %15
  %17 = getelementptr inbounds i32, ptr %0, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !26
  %19 = mul nsw i32 %18, 2549
  %20 = mul nsw i32 %9, 2508
  %21 = mul nsw i32 %3, 322
  %22 = add i32 %20, %21
  %23 = add i32 %22, %19
  %24 = add i32 %23, %14
  %25 = sdiv i32 %24, 4096
  %26 = shl nsw i32 %25, 12
  %27 = sub nsw i32 %24, %26
  %28 = load i32, ptr %0, align 4, !tbaa !26
  %29 = mul nsw i32 %28, 2549
  %30 = mul nsw i32 %18, 2508
  %31 = mul nsw i32 %9, 322
  %32 = mul nsw i32 %3, 494
  %33 = add i32 %31, %32
  %34 = add i32 %33, %30
  %35 = add i32 %34, %29
  %36 = add i32 %35, %25
  %37 = srem i32 %36, 4096
  store i32 %37, ptr %0, align 4, !tbaa !26
  store i32 %27, ptr %17, align 4, !tbaa !26
  store i32 %16, ptr %8, align 4, !tbaa !26
  store i32 %7, ptr %2, align 4, !tbaa !26
  %38 = sitofp i32 %37 to double
  %39 = sitofp i32 %27 to double
  %40 = sitofp i32 %16 to double
  %41 = sitofp i32 %7 to double
  %42 = tail call double @llvm.fmuladd.f64(double %41, double 0x3F30000000000000, double %40)
  %43 = tail call double @llvm.fmuladd.f64(double %42, double 0x3F30000000000000, double %39)
  %44 = tail call double @llvm.fmuladd.f64(double %43, double 0x3F30000000000000, double %38)
  %45 = fmul double %44, 0x3F30000000000000
  ret double %45
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 17.0.6 (++20231209124227+6009708b4367-1~exp1~20231209124336.77)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !7, i64 0}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
!30 = distinct !{!30, !10, !11}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10, !11}
!33 = distinct !{!33, !10, !11}
!34 = distinct !{!34, !10, !11}
!35 = distinct !{!35, !10, !11}
!36 = distinct !{!36, !10, !11}
!37 = distinct !{!37, !10, !11}
!38 = distinct !{!38, !10, !11}
!39 = distinct !{!39, !10, !11}
!40 = distinct !{!40, !10, !11}
!41 = distinct !{!41, !10, !11}
!42 = distinct !{!42, !10, !11}
!43 = distinct !{!43, !10, !11}
