; ModuleID = 'tests/linpack.ll'
source_filename = "tests/linpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.r8mat_gen.init = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 1325], align 16
@PrintfFormatStr = global [37 x i8] c"Function: %s\09Basic block number: %d\0A\00"
@0 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@1 = private unnamed_addr constant [10 x i8] c"r8mat_gen\00", align 1
@2 = private unnamed_addr constant [7 x i8] c"r8_max\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"dgefa\00", align 1
@4 = private unnamed_addr constant [6 x i8] c"dgesl\00", align 1
@5 = private unnamed_addr constant [7 x i8] c"r8_abs\00", align 1
@6 = private unnamed_addr constant [9 x i8] c"cpu_time\00", align 1
@7 = private unnamed_addr constant [6 x i8] c"daxpy\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"ddot\00", align 1
@9 = private unnamed_addr constant [7 x i8] c"idamax\00", align 1
@10 = private unnamed_addr constant [6 x i8] c"dscal\00", align 1
@11 = private unnamed_addr constant [11 x i8] c"r8_epsilon\00", align 1
@12 = private unnamed_addr constant [10 x i8] c"r8_random\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 1)
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca ptr, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca ptr, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca [6 x double], align 16
  %22 = alloca double, align 8
  %23 = alloca ptr, align 8
  store i32 0, ptr %2, align 4
  store double 5.600000e-02, ptr %7, align 8
  store double 0x4154A67555555555, ptr %14, align 8
  %24 = call ptr @r8mat_gen(i32 noundef 201, i32 noundef 200)
  store ptr %24, ptr %3, align 8
  %25 = call noalias ptr @malloc(i64 noundef 1600) #6
  store ptr %25, ptr %5, align 8
  %26 = call noalias ptr @malloc(i64 noundef 800) #6
  store ptr %26, ptr %11, align 8
  %27 = call noalias ptr @malloc(i64 noundef 1600) #6
  store ptr %27, ptr %15, align 8
  %28 = call noalias ptr @malloc(i64 noundef 1600) #6
  store ptr %28, ptr %18, align 8
  %29 = call noalias ptr @malloc(i64 noundef 1600) #6
  store ptr %29, ptr %23, align 8
  store double 0.000000e+00, ptr %4, align 8
  store i32 0, ptr %12, align 4
  br label %30

30:                                               ; preds = %58, %0
  %31 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 2)
  %32 = load i32, ptr %12, align 4
  %33 = icmp slt i32 %32, 200
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  %35 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 3)
  store i32 0, ptr %9, align 4
  br label %36

36:                                               ; preds = %52, %34
  %37 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 4)
  %38 = load i32, ptr %9, align 4
  %39 = icmp slt i32 %38, 200
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 5)
  %42 = load double, ptr %4, align 8
  %43 = load ptr, ptr %3, align 8
  %44 = load i32, ptr %9, align 4
  %45 = load i32, ptr %12, align 4
  %46 = mul nsw i32 %45, 201
  %47 = add nsw i32 %44, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, ptr %43, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = call double @r8_max(double noundef %42, double noundef %50)
  store double %51, ptr %4, align 8
  br label %52

52:                                               ; preds = %40
  %53 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 6)
  %54 = load i32, ptr %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %9, align 4
  br label %36, !llvm.loop !6

56:                                               ; preds = %36
  %57 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 7)
  br label %58

58:                                               ; preds = %56
  %59 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 8)
  %60 = load i32, ptr %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %12, align 4
  br label %30, !llvm.loop !8

62:                                               ; preds = %30
  %63 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 9)
  store i32 0, ptr %9, align 4
  br label %64

64:                                               ; preds = %74, %62
  %65 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 10)
  %66 = load i32, ptr %9, align 4
  %67 = icmp slt i32 %66, 200
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 11)
  %70 = load ptr, ptr %23, align 8
  %71 = load i32, ptr %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, ptr %70, i64 %72
  store double 1.000000e+00, ptr %73, align 8
  br label %74

74:                                               ; preds = %68
  %75 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 12)
  %76 = load i32, ptr %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %9, align 4
  br label %64, !llvm.loop !9

78:                                               ; preds = %64
  %79 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 13)
  store i32 0, ptr %9, align 4
  br label %80

80:                                               ; preds = %125, %78
  %81 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 14)
  %82 = load i32, ptr %9, align 4
  %83 = icmp slt i32 %82, 200
  br i1 %83, label %84, label %129

84:                                               ; preds = %80
  %85 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 15)
  %86 = load ptr, ptr %5, align 8
  %87 = load i32, ptr %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, ptr %86, i64 %88
  store double 0.000000e+00, ptr %89, align 8
  store i32 0, ptr %12, align 4
  br label %90

90:                                               ; preds = %119, %84
  %91 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 16)
  %92 = load i32, ptr %12, align 4
  %93 = icmp slt i32 %92, 200
  br i1 %93, label %94, label %123

94:                                               ; preds = %90
  %95 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 17)
  %96 = load ptr, ptr %5, align 8
  %97 = load i32, ptr %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, ptr %96, i64 %98
  %100 = load double, ptr %99, align 8
  %101 = load ptr, ptr %3, align 8
  %102 = load i32, ptr %9, align 4
  %103 = load i32, ptr %12, align 4
  %104 = mul nsw i32 %103, 201
  %105 = add nsw i32 %102, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, ptr %101, i64 %106
  %108 = load double, ptr %107, align 8
  %109 = load ptr, ptr %23, align 8
  %110 = load i32, ptr %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, ptr %109, i64 %111
  %113 = load double, ptr %112, align 8
  %114 = call double @llvm.fmuladd.f64(double %108, double %113, double %100)
  %115 = load ptr, ptr %5, align 8
  %116 = load i32, ptr %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds double, ptr %115, i64 %117
  store double %114, ptr %118, align 8
  br label %119

119:                                              ; preds = %94
  %120 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 18)
  %121 = load i32, ptr %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %12, align 4
  br label %90, !llvm.loop !10

123:                                              ; preds = %90
  %124 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 19)
  br label %125

125:                                              ; preds = %123
  %126 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 20)
  %127 = load i32, ptr %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %9, align 4
  br label %80, !llvm.loop !11

129:                                              ; preds = %80
  %130 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 21)
  %131 = call double @cpu_time()
  store double %131, ptr %19, align 8
  %132 = load ptr, ptr %3, align 8
  %133 = load ptr, ptr %11, align 8
  %134 = call i32 @dgefa(ptr noundef %132, i32 noundef 201, i32 noundef 200, ptr noundef %133)
  store i32 %134, ptr %10, align 4
  %135 = load i32, ptr %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 22)
  call void @exit(i32 noundef 1) #7
  unreachable

139:                                              ; preds = %129
  %140 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 23)
  %141 = call double @cpu_time()
  store double %141, ptr %20, align 8
  %142 = load double, ptr %20, align 8
  %143 = load double, ptr %19, align 8
  %144 = fsub double %142, %143
  %145 = getelementptr inbounds [6 x double], ptr %21, i64 0, i64 0
  store double %144, ptr %145, align 16
  %146 = call double @cpu_time()
  store double %146, ptr %19, align 8
  store i32 0, ptr %13, align 4
  %147 = load ptr, ptr %3, align 8
  %148 = load ptr, ptr %11, align 8
  %149 = load ptr, ptr %5, align 8
  %150 = load i32, ptr %13, align 4
  call void @dgesl(ptr noundef %147, i32 noundef 201, i32 noundef 200, ptr noundef %148, ptr noundef %149, i32 noundef %150)
  %151 = call double @cpu_time()
  store double %151, ptr %20, align 8
  %152 = load double, ptr %20, align 8
  %153 = load double, ptr %19, align 8
  %154 = fsub double %152, %153
  %155 = getelementptr inbounds [6 x double], ptr %21, i64 0, i64 1
  store double %154, ptr %155, align 8
  %156 = getelementptr inbounds [6 x double], ptr %21, i64 0, i64 0
  %157 = load double, ptr %156, align 16
  %158 = getelementptr inbounds [6 x double], ptr %21, i64 0, i64 1
  %159 = load double, ptr %158, align 8
  %160 = fadd double %157, %159
  store double %160, ptr %22, align 8
  %161 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %161) #8
  %162 = call ptr @r8mat_gen(i32 noundef 201, i32 noundef 200)
  store ptr %162, ptr %3, align 8
  store i32 0, ptr %9, align 4
  br label %163

163:                                              ; preds = %173, %139
  %164 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 24)
  %165 = load i32, ptr %9, align 4
  %166 = icmp slt i32 %165, 200
  br i1 %166, label %167, label %177

167:                                              ; preds = %163
  %168 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 25)
  %169 = load ptr, ptr %23, align 8
  %170 = load i32, ptr %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds double, ptr %169, i64 %171
  store double 1.000000e+00, ptr %172, align 8
  br label %173

173:                                              ; preds = %167
  %174 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 26)
  %175 = load i32, ptr %9, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr %9, align 4
  br label %163, !llvm.loop !12

177:                                              ; preds = %163
  %178 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 27)
  store i32 0, ptr %9, align 4
  br label %179

179:                                              ; preds = %224, %177
  %180 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 28)
  %181 = load i32, ptr %9, align 4
  %182 = icmp slt i32 %181, 200
  br i1 %182, label %183, label %228

183:                                              ; preds = %179
  %184 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 29)
  %185 = load ptr, ptr %18, align 8
  %186 = load i32, ptr %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds double, ptr %185, i64 %187
  store double 0.000000e+00, ptr %188, align 8
  store i32 0, ptr %12, align 4
  br label %189

189:                                              ; preds = %218, %183
  %190 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 30)
  %191 = load i32, ptr %12, align 4
  %192 = icmp slt i32 %191, 200
  br i1 %192, label %193, label %222

193:                                              ; preds = %189
  %194 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 31)
  %195 = load ptr, ptr %18, align 8
  %196 = load i32, ptr %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds double, ptr %195, i64 %197
  %199 = load double, ptr %198, align 8
  %200 = load ptr, ptr %3, align 8
  %201 = load i32, ptr %9, align 4
  %202 = load i32, ptr %12, align 4
  %203 = mul nsw i32 %202, 201
  %204 = add nsw i32 %201, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds double, ptr %200, i64 %205
  %207 = load double, ptr %206, align 8
  %208 = load ptr, ptr %23, align 8
  %209 = load i32, ptr %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds double, ptr %208, i64 %210
  %212 = load double, ptr %211, align 8
  %213 = call double @llvm.fmuladd.f64(double %207, double %212, double %199)
  %214 = load ptr, ptr %18, align 8
  %215 = load i32, ptr %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds double, ptr %214, i64 %216
  store double %213, ptr %217, align 8
  br label %218

218:                                              ; preds = %193
  %219 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 32)
  %220 = load i32, ptr %12, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, ptr %12, align 4
  br label %189, !llvm.loop !13

222:                                              ; preds = %189
  %223 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 33)
  br label %224

224:                                              ; preds = %222
  %225 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 34)
  %226 = load i32, ptr %9, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, ptr %9, align 4
  br label %179, !llvm.loop !14

228:                                              ; preds = %179
  %229 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 35)
  store i32 0, ptr %9, align 4
  br label %230

230:                                              ; preds = %281, %228
  %231 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 36)
  %232 = load i32, ptr %9, align 4
  %233 = icmp slt i32 %232, 200
  br i1 %233, label %234, label %285

234:                                              ; preds = %230
  %235 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 37)
  %236 = load ptr, ptr %18, align 8
  %237 = load i32, ptr %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds double, ptr %236, i64 %238
  %240 = load double, ptr %239, align 8
  %241 = fneg double %240
  %242 = load ptr, ptr %15, align 8
  %243 = load i32, ptr %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds double, ptr %242, i64 %244
  store double %241, ptr %245, align 8
  store i32 0, ptr %12, align 4
  br label %246

246:                                              ; preds = %275, %234
  %247 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 38)
  %248 = load i32, ptr %12, align 4
  %249 = icmp slt i32 %248, 200
  br i1 %249, label %250, label %279

250:                                              ; preds = %246
  %251 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 39)
  %252 = load ptr, ptr %15, align 8
  %253 = load i32, ptr %9, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds double, ptr %252, i64 %254
  %256 = load double, ptr %255, align 8
  %257 = load ptr, ptr %3, align 8
  %258 = load i32, ptr %9, align 4
  %259 = load i32, ptr %12, align 4
  %260 = mul nsw i32 %259, 201
  %261 = add nsw i32 %258, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds double, ptr %257, i64 %262
  %264 = load double, ptr %263, align 8
  %265 = load ptr, ptr %5, align 8
  %266 = load i32, ptr %12, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds double, ptr %265, i64 %267
  %269 = load double, ptr %268, align 8
  %270 = call double @llvm.fmuladd.f64(double %264, double %269, double %256)
  %271 = load ptr, ptr %15, align 8
  %272 = load i32, ptr %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds double, ptr %271, i64 %273
  store double %270, ptr %274, align 8
  br label %275

275:                                              ; preds = %250
  %276 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 40)
  %277 = load i32, ptr %12, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, ptr %12, align 4
  br label %246, !llvm.loop !15

279:                                              ; preds = %246
  %280 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 41)
  br label %281

281:                                              ; preds = %279
  %282 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 42)
  %283 = load i32, ptr %9, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, ptr %9, align 4
  br label %230, !llvm.loop !16

285:                                              ; preds = %230
  %286 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 43)
  store double 0.000000e+00, ptr %16, align 8
  store i32 0, ptr %9, align 4
  br label %287

287:                                              ; preds = %301, %285
  %288 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 44)
  %289 = load i32, ptr %9, align 4
  %290 = icmp slt i32 %289, 200
  br i1 %290, label %291, label %305

291:                                              ; preds = %287
  %292 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 45)
  %293 = load double, ptr %16, align 8
  %294 = load ptr, ptr %15, align 8
  %295 = load i32, ptr %9, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds double, ptr %294, i64 %296
  %298 = load double, ptr %297, align 8
  %299 = call double @r8_abs(double noundef %298)
  %300 = call double @r8_max(double noundef %293, double noundef %299)
  store double %300, ptr %16, align 8
  br label %301

301:                                              ; preds = %291
  %302 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 46)
  %303 = load i32, ptr %9, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, ptr %9, align 4
  br label %287, !llvm.loop !17

305:                                              ; preds = %287
  %306 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 47)
  store double 0.000000e+00, ptr %6, align 8
  store i32 0, ptr %9, align 4
  br label %307

307:                                              ; preds = %321, %305
  %308 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 48)
  %309 = load i32, ptr %9, align 4
  %310 = icmp slt i32 %309, 200
  br i1 %310, label %311, label %325

311:                                              ; preds = %307
  %312 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 49)
  %313 = load double, ptr %6, align 8
  %314 = load ptr, ptr %5, align 8
  %315 = load i32, ptr %9, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds double, ptr %314, i64 %316
  %318 = load double, ptr %317, align 8
  %319 = call double @r8_abs(double noundef %318)
  %320 = call double @r8_max(double noundef %313, double noundef %319)
  store double %320, ptr %6, align 8
  br label %321

321:                                              ; preds = %311
  %322 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 50)
  %323 = load i32, ptr %9, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, ptr %9, align 4
  br label %307, !llvm.loop !18

325:                                              ; preds = %307
  %326 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 51)
  %327 = call double @r8_epsilon()
  store double %327, ptr %8, align 8
  %328 = load double, ptr %16, align 8
  %329 = fdiv double %328, 2.000000e+02
  %330 = load double, ptr %4, align 8
  %331 = fdiv double %329, %330
  %332 = load double, ptr %6, align 8
  %333 = fdiv double %331, %332
  %334 = load double, ptr %8, align 8
  %335 = fdiv double %333, %334
  store double %335, ptr %17, align 8
  %336 = load double, ptr %22, align 8
  %337 = getelementptr inbounds [6 x double], ptr %21, i64 0, i64 2
  store double %336, ptr %337, align 16
  %338 = load double, ptr %22, align 8
  %339 = fcmp olt double 0.000000e+00, %338
  br i1 %339, label %340, label %347

340:                                              ; preds = %325
  %341 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 52)
  %342 = load double, ptr %14, align 8
  %343 = load double, ptr %22, align 8
  %344 = fmul double 1.000000e+06, %343
  %345 = fdiv double %342, %344
  %346 = getelementptr inbounds [6 x double], ptr %21, i64 0, i64 3
  store double %345, ptr %346, align 8
  br label %350

347:                                              ; preds = %325
  %348 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 53)
  %349 = getelementptr inbounds [6 x double], ptr %21, i64 0, i64 3
  store double -1.000000e+00, ptr %349, align 8
  br label %350

350:                                              ; preds = %347, %340
  %351 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 54)
  %352 = getelementptr inbounds [6 x double], ptr %21, i64 0, i64 3
  %353 = load double, ptr %352, align 8
  %354 = fdiv double 2.000000e+00, %353
  %355 = getelementptr inbounds [6 x double], ptr %21, i64 0, i64 4
  store double %354, ptr %355, align 16
  %356 = load double, ptr %22, align 8
  %357 = load double, ptr %7, align 8
  %358 = fdiv double %356, %357
  %359 = getelementptr inbounds [6 x double], ptr %21, i64 0, i64 5
  store double %358, ptr %359, align 8
  %360 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %360) #8
  %361 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %361) #8
  %362 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %362) #8
  %363 = load ptr, ptr %15, align 8
  call void @free(ptr noundef %363) #8
  %364 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %364) #8
  %365 = load ptr, ptr %23, align 8
  call void @free(ptr noundef %365) #8
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @r8mat_gen(i32 noundef %0, i32 noundef %1) #0 {
  %3 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @1, i32 55)
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %8, ptr align 16 @__const.r8mat_gen.init, i64 16, i1 false)
  %10 = load i32, ptr %4, align 4
  %11 = load i32, ptr %5, align 4
  %12 = mul nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = call noalias ptr @malloc(i64 noundef %14) #6
  store ptr %15, ptr %6, align 8
  store i32 1, ptr %9, align 4
  br label %16

16:                                               ; preds = %49, %2
  %17 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @1, i32 56)
  %18 = load i32, ptr %9, align 4
  %19 = load i32, ptr %5, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %16
  %22 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @1, i32 57)
  store i32 1, ptr %7, align 4
  br label %23

23:                                               ; preds = %43, %21
  %24 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @1, i32 58)
  %25 = load i32, ptr %7, align 4
  %26 = load i32, ptr %5, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @1, i32 59)
  %30 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 0
  %31 = call double @r8_random(ptr noundef %30)
  %32 = fsub double %31, 5.000000e-01
  %33 = load ptr, ptr %6, align 8
  %34 = load i32, ptr %7, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32, ptr %9, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, ptr %4, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %35, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, ptr %33, i64 %41
  store double %32, ptr %42, align 8
  br label %43

43:                                               ; preds = %28
  %44 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @1, i32 60)
  %45 = load i32, ptr %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %7, align 4
  br label %23, !llvm.loop !19

47:                                               ; preds = %23
  %48 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @1, i32 61)
  br label %49

49:                                               ; preds = %47
  %50 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @1, i32 62)
  %51 = load i32, ptr %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %9, align 4
  br label %16, !llvm.loop !20

53:                                               ; preds = %16
  %54 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @1, i32 63)
  %55 = load ptr, ptr %6, align 8
  ret ptr %55
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @r8_max(double noundef %0, double noundef %1) #0 {
  %3 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @2, i32 64)
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, ptr %4, align 8
  store double %1, ptr %5, align 8
  %7 = load double, ptr %5, align 8
  %8 = load double, ptr %4, align 8
  %9 = fcmp olt double %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @2, i32 65)
  %12 = load double, ptr %4, align 8
  store double %12, ptr %6, align 8
  br label %16

13:                                               ; preds = %2
  %14 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @2, i32 66)
  %15 = load double, ptr %5, align 8
  store double %15, ptr %6, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @2, i32 67)
  %18 = load double, ptr %6, align 8
  ret double %18
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dgefa(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 68)
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  store i32 0, ptr %10, align 4
  store i32 1, ptr %12, align 4
  br label %15

15:                                               ; preds = %230, %4
  %16 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 69)
  %17 = load i32, ptr %12, align 4
  %18 = load i32, ptr %8, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp sle i32 %17, %19
  br i1 %20, label %21, label %234

21:                                               ; preds = %15
  %22 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 70)
  %23 = load i32, ptr %8, align 4
  %24 = load i32, ptr %12, align 4
  %25 = sub nsw i32 %23, %24
  %26 = add nsw i32 %25, 1
  %27 = load ptr, ptr %6, align 8
  %28 = load i32, ptr %12, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, ptr %27, i64 %30
  %32 = load i32, ptr %12, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, ptr %7, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, ptr %31, i64 %36
  %38 = call i32 @idamax(i32 noundef %26, ptr noundef %37, i32 noundef 1)
  %39 = load i32, ptr %12, align 4
  %40 = add nsw i32 %38, %39
  %41 = sub nsw i32 %40, 1
  store i32 %41, ptr %13, align 4
  %42 = load i32, ptr %13, align 4
  %43 = load ptr, ptr %9, align 8
  %44 = load i32, ptr %12, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %43, i64 %46
  store i32 %42, ptr %47, align 4
  %48 = load ptr, ptr %6, align 8
  %49 = load i32, ptr %13, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load i32, ptr %12, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load i32, ptr %7, align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %50, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, ptr %48, i64 %56
  %58 = load double, ptr %57, align 8
  %59 = fcmp oeq double %58, 0.000000e+00
  br i1 %59, label %60, label %63

60:                                               ; preds = %21
  %61 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 71)
  %62 = load i32, ptr %12, align 4
  store i32 %62, ptr %10, align 4
  br label %230

63:                                               ; preds = %21
  %64 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 72)
  %65 = load i32, ptr %13, align 4
  %66 = load i32, ptr %12, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %113

68:                                               ; preds = %63
  %69 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 73)
  %70 = load ptr, ptr %6, align 8
  %71 = load i32, ptr %13, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, ptr %12, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load i32, ptr %7, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %72, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, ptr %70, i64 %78
  %80 = load double, ptr %79, align 8
  store double %80, ptr %14, align 8
  %81 = load ptr, ptr %6, align 8
  %82 = load i32, ptr %12, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32, ptr %12, align 4
  %85 = sub nsw i32 %84, 1
  %86 = load i32, ptr %7, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %83, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, ptr %81, i64 %89
  %91 = load double, ptr %90, align 8
  %92 = load ptr, ptr %6, align 8
  %93 = load i32, ptr %13, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load i32, ptr %12, align 4
  %96 = sub nsw i32 %95, 1
  %97 = load i32, ptr %7, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %94, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, ptr %92, i64 %100
  store double %91, ptr %101, align 8
  %102 = load double, ptr %14, align 8
  %103 = load ptr, ptr %6, align 8
  %104 = load i32, ptr %12, align 4
  %105 = sub nsw i32 %104, 1
  %106 = load i32, ptr %12, align 4
  %107 = sub nsw i32 %106, 1
  %108 = load i32, ptr %7, align 4
  %109 = mul nsw i32 %107, %108
  %110 = add nsw i32 %105, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, ptr %103, i64 %111
  store double %102, ptr %112, align 8
  br label %113

113:                                              ; preds = %68, %63
  %114 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 74)
  %115 = load ptr, ptr %6, align 8
  %116 = load i32, ptr %12, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load i32, ptr %12, align 4
  %119 = sub nsw i32 %118, 1
  %120 = load i32, ptr %7, align 4
  %121 = mul nsw i32 %119, %120
  %122 = add nsw i32 %117, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, ptr %115, i64 %123
  %125 = load double, ptr %124, align 8
  %126 = fdiv double -1.000000e+00, %125
  store double %126, ptr %14, align 8
  %127 = load i32, ptr %8, align 4
  %128 = load i32, ptr %12, align 4
  %129 = sub nsw i32 %127, %128
  %130 = load double, ptr %14, align 8
  %131 = load ptr, ptr %6, align 8
  %132 = load i32, ptr %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double, ptr %131, i64 %133
  %135 = load i32, ptr %12, align 4
  %136 = sub nsw i32 %135, 1
  %137 = load i32, ptr %7, align 4
  %138 = mul nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, ptr %134, i64 %139
  call void @dscal(i32 noundef %129, double noundef %130, ptr noundef %140, i32 noundef 1)
  %141 = load i32, ptr %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr %11, align 4
  br label %143

143:                                              ; preds = %224, %113
  %144 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 75)
  %145 = load i32, ptr %11, align 4
  %146 = load i32, ptr %8, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %228

148:                                              ; preds = %143
  %149 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 76)
  %150 = load ptr, ptr %6, align 8
  %151 = load i32, ptr %13, align 4
  %152 = sub nsw i32 %151, 1
  %153 = load i32, ptr %11, align 4
  %154 = sub nsw i32 %153, 1
  %155 = load i32, ptr %7, align 4
  %156 = mul nsw i32 %154, %155
  %157 = add nsw i32 %152, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double, ptr %150, i64 %158
  %160 = load double, ptr %159, align 8
  store double %160, ptr %14, align 8
  %161 = load i32, ptr %13, align 4
  %162 = load i32, ptr %12, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %198

164:                                              ; preds = %148
  %165 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 77)
  %166 = load ptr, ptr %6, align 8
  %167 = load i32, ptr %12, align 4
  %168 = sub nsw i32 %167, 1
  %169 = load i32, ptr %11, align 4
  %170 = sub nsw i32 %169, 1
  %171 = load i32, ptr %7, align 4
  %172 = mul nsw i32 %170, %171
  %173 = add nsw i32 %168, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds double, ptr %166, i64 %174
  %176 = load double, ptr %175, align 8
  %177 = load ptr, ptr %6, align 8
  %178 = load i32, ptr %13, align 4
  %179 = sub nsw i32 %178, 1
  %180 = load i32, ptr %11, align 4
  %181 = sub nsw i32 %180, 1
  %182 = load i32, ptr %7, align 4
  %183 = mul nsw i32 %181, %182
  %184 = add nsw i32 %179, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds double, ptr %177, i64 %185
  store double %176, ptr %186, align 8
  %187 = load double, ptr %14, align 8
  %188 = load ptr, ptr %6, align 8
  %189 = load i32, ptr %12, align 4
  %190 = sub nsw i32 %189, 1
  %191 = load i32, ptr %11, align 4
  %192 = sub nsw i32 %191, 1
  %193 = load i32, ptr %7, align 4
  %194 = mul nsw i32 %192, %193
  %195 = add nsw i32 %190, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds double, ptr %188, i64 %196
  store double %187, ptr %197, align 8
  br label %198

198:                                              ; preds = %164, %148
  %199 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 78)
  %200 = load i32, ptr %8, align 4
  %201 = load i32, ptr %12, align 4
  %202 = sub nsw i32 %200, %201
  %203 = load double, ptr %14, align 8
  %204 = load ptr, ptr %6, align 8
  %205 = load i32, ptr %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds double, ptr %204, i64 %206
  %208 = load i32, ptr %12, align 4
  %209 = sub nsw i32 %208, 1
  %210 = load i32, ptr %7, align 4
  %211 = mul nsw i32 %209, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds double, ptr %207, i64 %212
  %214 = load ptr, ptr %6, align 8
  %215 = load i32, ptr %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds double, ptr %214, i64 %216
  %218 = load i32, ptr %11, align 4
  %219 = sub nsw i32 %218, 1
  %220 = load i32, ptr %7, align 4
  %221 = mul nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds double, ptr %217, i64 %222
  call void @daxpy(i32 noundef %202, double noundef %203, ptr noundef %213, i32 noundef 1, ptr noundef %223, i32 noundef 1)
  br label %224

224:                                              ; preds = %198
  %225 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 79)
  %226 = load i32, ptr %11, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, ptr %11, align 4
  br label %143, !llvm.loop !21

228:                                              ; preds = %143
  %229 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 80)
  br label %230

230:                                              ; preds = %228, %60
  %231 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 81)
  %232 = load i32, ptr %12, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, ptr %12, align 4
  br label %15, !llvm.loop !22

234:                                              ; preds = %15
  %235 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 82)
  %236 = load i32, ptr %8, align 4
  %237 = load ptr, ptr %9, align 8
  %238 = load i32, ptr %8, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, ptr %237, i64 %240
  store i32 %236, ptr %241, align 4
  %242 = load ptr, ptr %6, align 8
  %243 = load i32, ptr %8, align 4
  %244 = sub nsw i32 %243, 1
  %245 = load i32, ptr %8, align 4
  %246 = sub nsw i32 %245, 1
  %247 = load i32, ptr %7, align 4
  %248 = mul nsw i32 %246, %247
  %249 = add nsw i32 %244, %248
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds double, ptr %242, i64 %250
  %252 = load double, ptr %251, align 8
  %253 = fcmp oeq double %252, 0.000000e+00
  br i1 %253, label %254, label %257

254:                                              ; preds = %234
  %255 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 83)
  %256 = load i32, ptr %8, align 4
  store i32 %256, ptr %10, align 4
  br label %257

257:                                              ; preds = %254, %234
  %258 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 84)
  %259 = load i32, ptr %10, align 4
  ret i32 %259
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dgesl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 85)
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  store ptr %0, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store i32 %2, ptr %10, align 4
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store i32 %5, ptr %13, align 4
  %17 = load i32, ptr %13, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %144

19:                                               ; preds = %6
  %20 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 86)
  store i32 1, ptr %14, align 4
  br label %21

21:                                               ; preds = %83, %19
  %22 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 87)
  %23 = load i32, ptr %14, align 4
  %24 = load i32, ptr %10, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp sle i32 %23, %25
  br i1 %26, label %27, label %87

27:                                               ; preds = %21
  %28 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 88)
  %29 = load ptr, ptr %11, align 8
  %30 = load i32, ptr %14, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %29, i64 %32
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %15, align 4
  %35 = load ptr, ptr %12, align 8
  %36 = load i32, ptr %15, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, ptr %35, i64 %38
  %40 = load double, ptr %39, align 8
  store double %40, ptr %16, align 8
  %41 = load i32, ptr %15, align 4
  %42 = load i32, ptr %14, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %27
  %45 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 89)
  %46 = load ptr, ptr %12, align 8
  %47 = load i32, ptr %14, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, ptr %46, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = load ptr, ptr %12, align 8
  %53 = load i32, ptr %15, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, ptr %52, i64 %55
  store double %51, ptr %56, align 8
  %57 = load double, ptr %16, align 8
  %58 = load ptr, ptr %12, align 8
  %59 = load i32, ptr %14, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %58, i64 %61
  store double %57, ptr %62, align 8
  br label %63

63:                                               ; preds = %44, %27
  %64 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 90)
  %65 = load i32, ptr %10, align 4
  %66 = load i32, ptr %14, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load double, ptr %16, align 8
  %69 = load ptr, ptr %8, align 8
  %70 = load i32, ptr %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, ptr %69, i64 %71
  %73 = load i32, ptr %14, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load i32, ptr %9, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, ptr %72, i64 %77
  %79 = load ptr, ptr %12, align 8
  %80 = load i32, ptr %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, ptr %79, i64 %81
  call void @daxpy(i32 noundef %67, double noundef %68, ptr noundef %78, i32 noundef 1, ptr noundef %82, i32 noundef 1)
  br label %83

83:                                               ; preds = %63
  %84 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 91)
  %85 = load i32, ptr %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %14, align 4
  br label %21, !llvm.loop !23

87:                                               ; preds = %21
  %88 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 92)
  %89 = load i32, ptr %10, align 4
  store i32 %89, ptr %14, align 4
  br label %90

90:                                               ; preds = %138, %87
  %91 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 93)
  %92 = load i32, ptr %14, align 4
  %93 = icmp sle i32 1, %92
  br i1 %93, label %94, label %142

94:                                               ; preds = %90
  %95 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 94)
  %96 = load ptr, ptr %12, align 8
  %97 = load i32, ptr %14, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, ptr %96, i64 %99
  %101 = load double, ptr %100, align 8
  %102 = load ptr, ptr %8, align 8
  %103 = load i32, ptr %14, align 4
  %104 = sub nsw i32 %103, 1
  %105 = load i32, ptr %14, align 4
  %106 = sub nsw i32 %105, 1
  %107 = load i32, ptr %9, align 4
  %108 = mul nsw i32 %106, %107
  %109 = add nsw i32 %104, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, ptr %102, i64 %110
  %112 = load double, ptr %111, align 8
  %113 = fdiv double %101, %112
  %114 = load ptr, ptr %12, align 8
  %115 = load i32, ptr %14, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds double, ptr %114, i64 %117
  store double %113, ptr %118, align 8
  %119 = load ptr, ptr %12, align 8
  %120 = load i32, ptr %14, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, ptr %119, i64 %122
  %124 = load double, ptr %123, align 8
  %125 = fneg double %124
  store double %125, ptr %16, align 8
  %126 = load i32, ptr %14, align 4
  %127 = sub nsw i32 %126, 1
  %128 = load double, ptr %16, align 8
  %129 = load ptr, ptr %8, align 8
  %130 = getelementptr inbounds double, ptr %129, i64 0
  %131 = load i32, ptr %14, align 4
  %132 = sub nsw i32 %131, 1
  %133 = load i32, ptr %9, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds double, ptr %130, i64 %135
  %137 = load ptr, ptr %12, align 8
  call void @daxpy(i32 noundef %127, double noundef %128, ptr noundef %136, i32 noundef 1, ptr noundef %137, i32 noundef 1)
  br label %138

138:                                              ; preds = %94
  %139 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 95)
  %140 = load i32, ptr %14, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, ptr %14, align 4
  br label %90, !llvm.loop !24

142:                                              ; preds = %90
  %143 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 96)
  br label %276

144:                                              ; preds = %6
  %145 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 97)
  store i32 1, ptr %14, align 4
  br label %146

146:                                              ; preds = %190, %144
  %147 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 98)
  %148 = load i32, ptr %14, align 4
  %149 = load i32, ptr %10, align 4
  %150 = icmp sle i32 %148, %149
  br i1 %150, label %151, label %194

151:                                              ; preds = %146
  %152 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 99)
  %153 = load i32, ptr %14, align 4
  %154 = sub nsw i32 %153, 1
  %155 = load ptr, ptr %8, align 8
  %156 = getelementptr inbounds double, ptr %155, i64 0
  %157 = load i32, ptr %14, align 4
  %158 = sub nsw i32 %157, 1
  %159 = load i32, ptr %9, align 4
  %160 = mul nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds double, ptr %156, i64 %161
  %163 = load ptr, ptr %12, align 8
  %164 = call double @ddot(i32 noundef %154, ptr noundef %162, i32 noundef 1, ptr noundef %163, i32 noundef 1)
  store double %164, ptr %16, align 8
  %165 = load ptr, ptr %12, align 8
  %166 = load i32, ptr %14, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds double, ptr %165, i64 %168
  %170 = load double, ptr %169, align 8
  %171 = load double, ptr %16, align 8
  %172 = fsub double %170, %171
  %173 = load ptr, ptr %8, align 8
  %174 = load i32, ptr %14, align 4
  %175 = sub nsw i32 %174, 1
  %176 = load i32, ptr %14, align 4
  %177 = sub nsw i32 %176, 1
  %178 = load i32, ptr %9, align 4
  %179 = mul nsw i32 %177, %178
  %180 = add nsw i32 %175, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds double, ptr %173, i64 %181
  %183 = load double, ptr %182, align 8
  %184 = fdiv double %172, %183
  %185 = load ptr, ptr %12, align 8
  %186 = load i32, ptr %14, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds double, ptr %185, i64 %188
  store double %184, ptr %189, align 8
  br label %190

190:                                              ; preds = %151
  %191 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 100)
  %192 = load i32, ptr %14, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, ptr %14, align 4
  br label %146, !llvm.loop !25

194:                                              ; preds = %146
  %195 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 101)
  %196 = load i32, ptr %10, align 4
  %197 = sub nsw i32 %196, 1
  store i32 %197, ptr %14, align 4
  br label %198

198:                                              ; preds = %270, %194
  %199 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 102)
  %200 = load i32, ptr %14, align 4
  %201 = icmp sle i32 1, %200
  br i1 %201, label %202, label %274

202:                                              ; preds = %198
  %203 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 103)
  %204 = load ptr, ptr %12, align 8
  %205 = load i32, ptr %14, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds double, ptr %204, i64 %207
  %209 = load double, ptr %208, align 8
  %210 = load i32, ptr %10, align 4
  %211 = load i32, ptr %14, align 4
  %212 = sub nsw i32 %210, %211
  %213 = load ptr, ptr %8, align 8
  %214 = load i32, ptr %14, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds double, ptr %213, i64 %215
  %217 = load i32, ptr %14, align 4
  %218 = sub nsw i32 %217, 1
  %219 = load i32, ptr %9, align 4
  %220 = mul nsw i32 %218, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds double, ptr %216, i64 %221
  %223 = load ptr, ptr %12, align 8
  %224 = load i32, ptr %14, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds double, ptr %223, i64 %225
  %227 = call double @ddot(i32 noundef %212, ptr noundef %222, i32 noundef 1, ptr noundef %226, i32 noundef 1)
  %228 = fadd double %209, %227
  %229 = load ptr, ptr %12, align 8
  %230 = load i32, ptr %14, align 4
  %231 = sub nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds double, ptr %229, i64 %232
  store double %228, ptr %233, align 8
  %234 = load ptr, ptr %11, align 8
  %235 = load i32, ptr %14, align 4
  %236 = sub nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, ptr %234, i64 %237
  %239 = load i32, ptr %238, align 4
  store i32 %239, ptr %15, align 4
  %240 = load i32, ptr %15, align 4
  %241 = load i32, ptr %14, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %268

243:                                              ; preds = %202
  %244 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 104)
  %245 = load ptr, ptr %12, align 8
  %246 = load i32, ptr %15, align 4
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds double, ptr %245, i64 %248
  %250 = load double, ptr %249, align 8
  store double %250, ptr %16, align 8
  %251 = load ptr, ptr %12, align 8
  %252 = load i32, ptr %14, align 4
  %253 = sub nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds double, ptr %251, i64 %254
  %256 = load double, ptr %255, align 8
  %257 = load ptr, ptr %12, align 8
  %258 = load i32, ptr %15, align 4
  %259 = sub nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds double, ptr %257, i64 %260
  store double %256, ptr %261, align 8
  %262 = load double, ptr %16, align 8
  %263 = load ptr, ptr %12, align 8
  %264 = load i32, ptr %14, align 4
  %265 = sub nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds double, ptr %263, i64 %266
  store double %262, ptr %267, align 8
  br label %268

268:                                              ; preds = %243, %202
  %269 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 105)
  br label %270

270:                                              ; preds = %268
  %271 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 106)
  %272 = load i32, ptr %14, align 4
  %273 = add nsw i32 %272, -1
  store i32 %273, ptr %14, align 4
  br label %198, !llvm.loop !26

274:                                              ; preds = %198
  %275 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 107)
  br label %276

276:                                              ; preds = %274, %142
  %277 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @4, i32 108)
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @r8_abs(double noundef %0) #0 {
  %2 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @5, i32 109)
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, ptr %3, align 8
  %5 = load double, ptr %3, align 8
  %6 = fcmp ole double 0.000000e+00, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @5, i32 110)
  %9 = load double, ptr %3, align 8
  store double %9, ptr %4, align 8
  br label %14

10:                                               ; preds = %1
  %11 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @5, i32 111)
  %12 = load double, ptr %3, align 8
  %13 = fneg double %12
  store double %13, ptr %4, align 8
  br label %14

14:                                               ; preds = %10, %7
  %15 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @5, i32 112)
  %16 = load double, ptr %4, align 8
  ret double %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @cpu_time() #0 {
  %1 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @6, i32 113)
  %2 = alloca double, align 8
  %3 = call i64 @clock() #8
  %4 = sitofp i64 %3 to double
  %5 = fdiv double %4, 1.000000e+06
  store double %5, ptr %2, align 8
  %6 = load double, ptr %2, align 8
  ret double %6
}

; Function Attrs: nounwind
declare i64 @clock() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 114)
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, ptr %8, align 4
  store double %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store i32 %3, ptr %11, align 4
  store ptr %4, ptr %12, align 8
  store i32 %5, ptr %13, align 4
  %18 = load i32, ptr %8, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 115)
  br label %221

22:                                               ; preds = %6
  %23 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 116)
  %24 = load double, ptr %9, align 8
  %25 = fcmp oeq double %24, 0.000000e+00
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 117)
  br label %221

28:                                               ; preds = %22
  %29 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 118)
  %30 = load i32, ptr %11, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 119)
  %34 = load i32, ptr %13, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %99

36:                                               ; preds = %32, %28
  %37 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 120)
  %38 = load i32, ptr %11, align 4
  %39 = icmp sle i32 0, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 121)
  store i32 0, ptr %15, align 4
  br label %49

42:                                               ; preds = %36
  %43 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 122)
  %44 = load i32, ptr %8, align 4
  %45 = sub nsw i32 0, %44
  %46 = add nsw i32 %45, 1
  %47 = load i32, ptr %11, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, ptr %15, align 4
  br label %49

49:                                               ; preds = %42, %40
  %50 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 123)
  %51 = load i32, ptr %13, align 4
  %52 = icmp sle i32 0, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 124)
  store i32 0, ptr %16, align 4
  br label %62

55:                                               ; preds = %49
  %56 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 125)
  %57 = load i32, ptr %8, align 4
  %58 = sub nsw i32 0, %57
  %59 = add nsw i32 %58, 1
  %60 = load i32, ptr %13, align 4
  %61 = mul nsw i32 %59, %60
  store i32 %61, ptr %16, align 4
  br label %62

62:                                               ; preds = %55, %53
  %63 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 126)
  store i32 0, ptr %14, align 4
  br label %64

64:                                               ; preds = %93, %62
  %65 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 127)
  %66 = load i32, ptr %14, align 4
  %67 = load i32, ptr %8, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %64
  %70 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 128)
  %71 = load ptr, ptr %12, align 8
  %72 = load i32, ptr %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, ptr %71, i64 %73
  %75 = load double, ptr %74, align 8
  %76 = load double, ptr %9, align 8
  %77 = load ptr, ptr %10, align 8
  %78 = load i32, ptr %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, ptr %77, i64 %79
  %81 = load double, ptr %80, align 8
  %82 = call double @llvm.fmuladd.f64(double %76, double %81, double %75)
  %83 = load ptr, ptr %12, align 8
  %84 = load i32, ptr %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, ptr %83, i64 %85
  store double %82, ptr %86, align 8
  %87 = load i32, ptr %15, align 4
  %88 = load i32, ptr %11, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, ptr %15, align 4
  %90 = load i32, ptr %16, align 4
  %91 = load i32, ptr %13, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, ptr %16, align 4
  br label %93

93:                                               ; preds = %69
  %94 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 129)
  %95 = load i32, ptr %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %14, align 4
  br label %64, !llvm.loop !27

97:                                               ; preds = %64
  %98 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 130)
  br label %219

99:                                               ; preds = %32
  %100 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 131)
  %101 = load i32, ptr %8, align 4
  %102 = srem i32 %101, 4
  store i32 %102, ptr %17, align 4
  store i32 0, ptr %14, align 4
  br label %103

103:                                              ; preds = %126, %99
  %104 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 132)
  %105 = load i32, ptr %14, align 4
  %106 = load i32, ptr %17, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %103
  %109 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 133)
  %110 = load ptr, ptr %12, align 8
  %111 = load i32, ptr %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, ptr %110, i64 %112
  %114 = load double, ptr %113, align 8
  %115 = load double, ptr %9, align 8
  %116 = load ptr, ptr %10, align 8
  %117 = load i32, ptr %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, ptr %116, i64 %118
  %120 = load double, ptr %119, align 8
  %121 = call double @llvm.fmuladd.f64(double %115, double %120, double %114)
  %122 = load ptr, ptr %12, align 8
  %123 = load i32, ptr %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds double, ptr %122, i64 %124
  store double %121, ptr %125, align 8
  br label %126

126:                                              ; preds = %108
  %127 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 134)
  %128 = load i32, ptr %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %14, align 4
  br label %103, !llvm.loop !28

130:                                              ; preds = %103
  %131 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 135)
  %132 = load i32, ptr %17, align 4
  store i32 %132, ptr %14, align 4
  br label %133

133:                                              ; preds = %213, %130
  %134 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 136)
  %135 = load i32, ptr %14, align 4
  %136 = load i32, ptr %8, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %217

138:                                              ; preds = %133
  %139 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 137)
  %140 = load ptr, ptr %12, align 8
  %141 = load i32, ptr %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, ptr %140, i64 %142
  %144 = load double, ptr %143, align 8
  %145 = load double, ptr %9, align 8
  %146 = load ptr, ptr %10, align 8
  %147 = load i32, ptr %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, ptr %146, i64 %148
  %150 = load double, ptr %149, align 8
  %151 = call double @llvm.fmuladd.f64(double %145, double %150, double %144)
  %152 = load ptr, ptr %12, align 8
  %153 = load i32, ptr %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds double, ptr %152, i64 %154
  store double %151, ptr %155, align 8
  %156 = load ptr, ptr %12, align 8
  %157 = load i32, ptr %14, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds double, ptr %156, i64 %159
  %161 = load double, ptr %160, align 8
  %162 = load double, ptr %9, align 8
  %163 = load ptr, ptr %10, align 8
  %164 = load i32, ptr %14, align 4
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double, ptr %163, i64 %166
  %168 = load double, ptr %167, align 8
  %169 = call double @llvm.fmuladd.f64(double %162, double %168, double %161)
  %170 = load ptr, ptr %12, align 8
  %171 = load i32, ptr %14, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds double, ptr %170, i64 %173
  store double %169, ptr %174, align 8
  %175 = load ptr, ptr %12, align 8
  %176 = load i32, ptr %14, align 4
  %177 = add nsw i32 %176, 2
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, ptr %175, i64 %178
  %180 = load double, ptr %179, align 8
  %181 = load double, ptr %9, align 8
  %182 = load ptr, ptr %10, align 8
  %183 = load i32, ptr %14, align 4
  %184 = add nsw i32 %183, 2
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds double, ptr %182, i64 %185
  %187 = load double, ptr %186, align 8
  %188 = call double @llvm.fmuladd.f64(double %181, double %187, double %180)
  %189 = load ptr, ptr %12, align 8
  %190 = load i32, ptr %14, align 4
  %191 = add nsw i32 %190, 2
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds double, ptr %189, i64 %192
  store double %188, ptr %193, align 8
  %194 = load ptr, ptr %12, align 8
  %195 = load i32, ptr %14, align 4
  %196 = add nsw i32 %195, 3
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds double, ptr %194, i64 %197
  %199 = load double, ptr %198, align 8
  %200 = load double, ptr %9, align 8
  %201 = load ptr, ptr %10, align 8
  %202 = load i32, ptr %14, align 4
  %203 = add nsw i32 %202, 3
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds double, ptr %201, i64 %204
  %206 = load double, ptr %205, align 8
  %207 = call double @llvm.fmuladd.f64(double %200, double %206, double %199)
  %208 = load ptr, ptr %12, align 8
  %209 = load i32, ptr %14, align 4
  %210 = add nsw i32 %209, 3
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds double, ptr %208, i64 %211
  store double %207, ptr %212, align 8
  br label %213

213:                                              ; preds = %138
  %214 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 138)
  %215 = load i32, ptr %14, align 4
  %216 = add nsw i32 %215, 4
  store i32 %216, ptr %14, align 4
  br label %133, !llvm.loop !29

217:                                              ; preds = %133
  %218 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 139)
  br label %219

219:                                              ; preds = %217, %97
  %220 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 140)
  br label %221

221:                                              ; preds = %219, %26, %20
  %222 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @7, i32 141)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @ddot(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 142)
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, ptr %8, align 4
  store ptr %1, ptr %9, align 8
  store i32 %2, ptr %10, align 4
  store ptr %3, ptr %11, align 8
  store i32 %4, ptr %12, align 4
  store double 0.000000e+00, ptr %13, align 8
  %18 = load i32, ptr %8, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 143)
  %22 = load double, ptr %13, align 8
  store double %22, ptr %7, align 8
  br label %200

23:                                               ; preds = %5
  %24 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 144)
  %25 = load i32, ptr %10, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 145)
  %29 = load i32, ptr %12, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %90

31:                                               ; preds = %27, %23
  %32 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 146)
  %33 = load i32, ptr %10, align 4
  %34 = icmp sle i32 0, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 147)
  store i32 0, ptr %15, align 4
  br label %44

37:                                               ; preds = %31
  %38 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 148)
  %39 = load i32, ptr %8, align 4
  %40 = sub nsw i32 0, %39
  %41 = add nsw i32 %40, 1
  %42 = load i32, ptr %10, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, ptr %15, align 4
  br label %44

44:                                               ; preds = %37, %35
  %45 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 149)
  %46 = load i32, ptr %12, align 4
  %47 = icmp sle i32 0, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 150)
  store i32 0, ptr %16, align 4
  br label %57

50:                                               ; preds = %44
  %51 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 151)
  %52 = load i32, ptr %8, align 4
  %53 = sub nsw i32 0, %52
  %54 = add nsw i32 %53, 1
  %55 = load i32, ptr %12, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, ptr %16, align 4
  br label %57

57:                                               ; preds = %50, %48
  %58 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 152)
  store i32 0, ptr %14, align 4
  br label %59

59:                                               ; preds = %84, %57
  %60 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 153)
  %61 = load i32, ptr %14, align 4
  %62 = load i32, ptr %8, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %59
  %65 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 154)
  %66 = load double, ptr %13, align 8
  %67 = load ptr, ptr %9, align 8
  %68 = load i32, ptr %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, ptr %67, i64 %69
  %71 = load double, ptr %70, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = load i32, ptr %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double, ptr %72, i64 %74
  %76 = load double, ptr %75, align 8
  %77 = call double @llvm.fmuladd.f64(double %71, double %76, double %66)
  store double %77, ptr %13, align 8
  %78 = load i32, ptr %15, align 4
  %79 = load i32, ptr %10, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, ptr %15, align 4
  %81 = load i32, ptr %16, align 4
  %82 = load i32, ptr %12, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, ptr %16, align 4
  br label %84

84:                                               ; preds = %64
  %85 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 155)
  %86 = load i32, ptr %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %14, align 4
  br label %59, !llvm.loop !30

88:                                               ; preds = %59
  %89 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 156)
  br label %197

90:                                               ; preds = %27
  %91 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 157)
  %92 = load i32, ptr %8, align 4
  %93 = srem i32 %92, 5
  store i32 %93, ptr %17, align 4
  store i32 0, ptr %14, align 4
  br label %94

94:                                               ; preds = %113, %90
  %95 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 158)
  %96 = load i32, ptr %14, align 4
  %97 = load i32, ptr %17, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %94
  %100 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 159)
  %101 = load double, ptr %13, align 8
  %102 = load ptr, ptr %9, align 8
  %103 = load i32, ptr %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, ptr %102, i64 %104
  %106 = load double, ptr %105, align 8
  %107 = load ptr, ptr %11, align 8
  %108 = load i32, ptr %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, ptr %107, i64 %109
  %111 = load double, ptr %110, align 8
  %112 = call double @llvm.fmuladd.f64(double %106, double %111, double %101)
  store double %112, ptr %13, align 8
  br label %113

113:                                              ; preds = %99
  %114 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 160)
  %115 = load i32, ptr %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, ptr %14, align 4
  br label %94, !llvm.loop !31

117:                                              ; preds = %94
  %118 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 161)
  %119 = load i32, ptr %17, align 4
  store i32 %119, ptr %14, align 4
  br label %120

120:                                              ; preds = %191, %117
  %121 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 162)
  %122 = load i32, ptr %14, align 4
  %123 = load i32, ptr %8, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %195

125:                                              ; preds = %120
  %126 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 163)
  %127 = load double, ptr %13, align 8
  %128 = load ptr, ptr %9, align 8
  %129 = load i32, ptr %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds double, ptr %128, i64 %130
  %132 = load double, ptr %131, align 8
  %133 = load ptr, ptr %11, align 8
  %134 = load i32, ptr %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds double, ptr %133, i64 %135
  %137 = load double, ptr %136, align 8
  %138 = call double @llvm.fmuladd.f64(double %132, double %137, double %127)
  %139 = load ptr, ptr %9, align 8
  %140 = load i32, ptr %14, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, ptr %139, i64 %142
  %144 = load double, ptr %143, align 8
  %145 = load ptr, ptr %11, align 8
  %146 = load i32, ptr %14, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, ptr %145, i64 %148
  %150 = load double, ptr %149, align 8
  %151 = call double @llvm.fmuladd.f64(double %144, double %150, double %138)
  %152 = load ptr, ptr %9, align 8
  %153 = load i32, ptr %14, align 4
  %154 = add nsw i32 %153, 2
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds double, ptr %152, i64 %155
  %157 = load double, ptr %156, align 8
  %158 = load ptr, ptr %11, align 8
  %159 = load i32, ptr %14, align 4
  %160 = add nsw i32 %159, 2
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds double, ptr %158, i64 %161
  %163 = load double, ptr %162, align 8
  %164 = call double @llvm.fmuladd.f64(double %157, double %163, double %151)
  %165 = load ptr, ptr %9, align 8
  %166 = load i32, ptr %14, align 4
  %167 = add nsw i32 %166, 3
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds double, ptr %165, i64 %168
  %170 = load double, ptr %169, align 8
  %171 = load ptr, ptr %11, align 8
  %172 = load i32, ptr %14, align 4
  %173 = add nsw i32 %172, 3
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds double, ptr %171, i64 %174
  %176 = load double, ptr %175, align 8
  %177 = call double @llvm.fmuladd.f64(double %170, double %176, double %164)
  %178 = load ptr, ptr %9, align 8
  %179 = load i32, ptr %14, align 4
  %180 = add nsw i32 %179, 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds double, ptr %178, i64 %181
  %183 = load double, ptr %182, align 8
  %184 = load ptr, ptr %11, align 8
  %185 = load i32, ptr %14, align 4
  %186 = add nsw i32 %185, 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds double, ptr %184, i64 %187
  %189 = load double, ptr %188, align 8
  %190 = call double @llvm.fmuladd.f64(double %183, double %189, double %177)
  store double %190, ptr %13, align 8
  br label %191

191:                                              ; preds = %125
  %192 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 164)
  %193 = load i32, ptr %14, align 4
  %194 = add nsw i32 %193, 5
  store i32 %194, ptr %14, align 4
  br label %120, !llvm.loop !32

195:                                              ; preds = %120
  %196 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 165)
  br label %197

197:                                              ; preds = %195, %88
  %198 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 166)
  %199 = load double, ptr %13, align 8
  store double %199, ptr %7, align 8
  br label %200

200:                                              ; preds = %197, %20
  %201 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @8, i32 167)
  %202 = load double, ptr %7, align 8
  ret double %202
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 168)
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store i32 0, ptr %12, align 4
  %13 = load i32, ptr %6, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 169)
  %17 = load i32, ptr %8, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %3
  %20 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 170)
  %21 = load i32, ptr %12, align 4
  store i32 %21, ptr %5, align 4
  br label %120

22:                                               ; preds = %15
  %23 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 171)
  store i32 1, ptr %12, align 4
  %24 = load i32, ptr %6, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 172)
  %28 = load i32, ptr %12, align 4
  store i32 %28, ptr %5, align 4
  br label %120

29:                                               ; preds = %22
  %30 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 173)
  %31 = load i32, ptr %8, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %72

33:                                               ; preds = %29
  %34 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 174)
  %35 = load ptr, ptr %7, align 8
  %36 = getelementptr inbounds double, ptr %35, i64 0
  %37 = load double, ptr %36, align 8
  %38 = call double @r8_abs(double noundef %37)
  store double %38, ptr %9, align 8
  store i32 1, ptr %10, align 4
  br label %39

39:                                               ; preds = %66, %33
  %40 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 175)
  %41 = load i32, ptr %10, align 4
  %42 = load i32, ptr %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %39
  %45 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 176)
  %46 = load double, ptr %9, align 8
  %47 = load ptr, ptr %7, align 8
  %48 = load i32, ptr %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, ptr %47, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = call double @r8_abs(double noundef %51)
  %53 = fcmp olt double %46, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %44
  %55 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 177)
  %56 = load i32, ptr %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %12, align 4
  %58 = load ptr, ptr %7, align 8
  %59 = load i32, ptr %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, ptr %58, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = call double @r8_abs(double noundef %62)
  store double %63, ptr %9, align 8
  br label %64

64:                                               ; preds = %54, %44
  %65 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 178)
  br label %66

66:                                               ; preds = %64
  %67 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 179)
  %68 = load i32, ptr %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %10, align 4
  br label %39, !llvm.loop !33

70:                                               ; preds = %39
  %71 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 180)
  br label %117

72:                                               ; preds = %29
  %73 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 181)
  store i32 0, ptr %11, align 4
  %74 = load ptr, ptr %7, align 8
  %75 = getelementptr inbounds double, ptr %74, i64 0
  %76 = load double, ptr %75, align 8
  %77 = call double @r8_abs(double noundef %76)
  store double %77, ptr %9, align 8
  %78 = load i32, ptr %11, align 4
  %79 = load i32, ptr %8, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, ptr %11, align 4
  store i32 1, ptr %10, align 4
  br label %81

81:                                               ; preds = %111, %72
  %82 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 182)
  %83 = load i32, ptr %10, align 4
  %84 = load i32, ptr %6, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %115

86:                                               ; preds = %81
  %87 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 183)
  %88 = load double, ptr %9, align 8
  %89 = load ptr, ptr %7, align 8
  %90 = load i32, ptr %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, ptr %89, i64 %91
  %93 = load double, ptr %92, align 8
  %94 = call double @r8_abs(double noundef %93)
  %95 = fcmp olt double %88, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %86
  %97 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 184)
  %98 = load i32, ptr %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %12, align 4
  %100 = load ptr, ptr %7, align 8
  %101 = load i32, ptr %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, ptr %100, i64 %102
  %104 = load double, ptr %103, align 8
  %105 = call double @r8_abs(double noundef %104)
  store double %105, ptr %9, align 8
  br label %106

106:                                              ; preds = %96, %86
  %107 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 185)
  %108 = load i32, ptr %11, align 4
  %109 = load i32, ptr %8, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, ptr %11, align 4
  br label %111

111:                                              ; preds = %106
  %112 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 186)
  %113 = load i32, ptr %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr %10, align 4
  br label %81, !llvm.loop !34

115:                                              ; preds = %81
  %116 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 187)
  br label %117

117:                                              ; preds = %115, %70
  %118 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 188)
  %119 = load i32, ptr %12, align 4
  store i32 %119, ptr %5, align 4
  br label %120

120:                                              ; preds = %117, %26, %19
  %121 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @9, i32 189)
  %122 = load i32, ptr %5, align 4
  ret i32 %122
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 190)
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  store double %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  %13 = load i32, ptr %6, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 191)
  br label %170

17:                                               ; preds = %4
  %18 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 192)
  %19 = load i32, ptr %9, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %126

21:                                               ; preds = %17
  %22 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 193)
  %23 = load i32, ptr %6, align 4
  %24 = srem i32 %23, 5
  store i32 %24, ptr %12, align 4
  store i32 0, ptr %10, align 4
  br label %25

25:                                               ; preds = %43, %21
  %26 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 194)
  %27 = load i32, ptr %10, align 4
  %28 = load i32, ptr %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 195)
  %32 = load double, ptr %7, align 8
  %33 = load ptr, ptr %8, align 8
  %34 = load i32, ptr %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, ptr %33, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = fmul double %32, %37
  %39 = load ptr, ptr %8, align 8
  %40 = load i32, ptr %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, ptr %39, i64 %41
  store double %38, ptr %42, align 8
  br label %43

43:                                               ; preds = %30
  %44 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 196)
  %45 = load i32, ptr %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %10, align 4
  br label %25, !llvm.loop !35

47:                                               ; preds = %25
  %48 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 197)
  %49 = load i32, ptr %12, align 4
  store i32 %49, ptr %10, align 4
  br label %50

50:                                               ; preds = %120, %47
  %51 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 198)
  %52 = load i32, ptr %10, align 4
  %53 = load i32, ptr %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %124

55:                                               ; preds = %50
  %56 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 199)
  %57 = load double, ptr %7, align 8
  %58 = load ptr, ptr %8, align 8
  %59 = load i32, ptr %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, ptr %58, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = fmul double %57, %62
  %64 = load ptr, ptr %8, align 8
  %65 = load i32, ptr %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %64, i64 %66
  store double %63, ptr %67, align 8
  %68 = load double, ptr %7, align 8
  %69 = load ptr, ptr %8, align 8
  %70 = load i32, ptr %10, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, ptr %69, i64 %72
  %74 = load double, ptr %73, align 8
  %75 = fmul double %68, %74
  %76 = load ptr, ptr %8, align 8
  %77 = load i32, ptr %10, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, ptr %76, i64 %79
  store double %75, ptr %80, align 8
  %81 = load double, ptr %7, align 8
  %82 = load ptr, ptr %8, align 8
  %83 = load i32, ptr %10, align 4
  %84 = add nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, ptr %82, i64 %85
  %87 = load double, ptr %86, align 8
  %88 = fmul double %81, %87
  %89 = load ptr, ptr %8, align 8
  %90 = load i32, ptr %10, align 4
  %91 = add nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, ptr %89, i64 %92
  store double %88, ptr %93, align 8
  %94 = load double, ptr %7, align 8
  %95 = load ptr, ptr %8, align 8
  %96 = load i32, ptr %10, align 4
  %97 = add nsw i32 %96, 3
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, ptr %95, i64 %98
  %100 = load double, ptr %99, align 8
  %101 = fmul double %94, %100
  %102 = load ptr, ptr %8, align 8
  %103 = load i32, ptr %10, align 4
  %104 = add nsw i32 %103, 3
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, ptr %102, i64 %105
  store double %101, ptr %106, align 8
  %107 = load double, ptr %7, align 8
  %108 = load ptr, ptr %8, align 8
  %109 = load i32, ptr %10, align 4
  %110 = add nsw i32 %109, 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, ptr %108, i64 %111
  %113 = load double, ptr %112, align 8
  %114 = fmul double %107, %113
  %115 = load ptr, ptr %8, align 8
  %116 = load i32, ptr %10, align 4
  %117 = add nsw i32 %116, 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, ptr %115, i64 %118
  store double %114, ptr %119, align 8
  br label %120

120:                                              ; preds = %55
  %121 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 200)
  %122 = load i32, ptr %10, align 4
  %123 = add nsw i32 %122, 5
  store i32 %123, ptr %10, align 4
  br label %50, !llvm.loop !36

124:                                              ; preds = %50
  %125 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 201)
  br label %168

126:                                              ; preds = %17
  %127 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 202)
  %128 = load i32, ptr %9, align 4
  %129 = icmp sle i32 0, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 203)
  store i32 0, ptr %11, align 4
  br label %139

132:                                              ; preds = %126
  %133 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 204)
  %134 = load i32, ptr %6, align 4
  %135 = sub nsw i32 0, %134
  %136 = add nsw i32 %135, 1
  %137 = load i32, ptr %9, align 4
  %138 = mul nsw i32 %136, %137
  store i32 %138, ptr %11, align 4
  br label %139

139:                                              ; preds = %132, %130
  %140 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 205)
  store i32 0, ptr %10, align 4
  br label %141

141:                                              ; preds = %162, %139
  %142 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 206)
  %143 = load i32, ptr %10, align 4
  %144 = load i32, ptr %6, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %166

146:                                              ; preds = %141
  %147 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 207)
  %148 = load double, ptr %7, align 8
  %149 = load ptr, ptr %8, align 8
  %150 = load i32, ptr %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds double, ptr %149, i64 %151
  %153 = load double, ptr %152, align 8
  %154 = fmul double %148, %153
  %155 = load ptr, ptr %8, align 8
  %156 = load i32, ptr %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds double, ptr %155, i64 %157
  store double %154, ptr %158, align 8
  %159 = load i32, ptr %11, align 4
  %160 = load i32, ptr %9, align 4
  %161 = add nsw i32 %159, %160
  store i32 %161, ptr %11, align 4
  br label %162

162:                                              ; preds = %146
  %163 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 208)
  %164 = load i32, ptr %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, ptr %10, align 4
  br label %141, !llvm.loop !37

166:                                              ; preds = %141
  %167 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 209)
  br label %168

168:                                              ; preds = %166, %124
  %169 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 210)
  br label %170

170:                                              ; preds = %168, %15
  %171 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @10, i32 211)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @r8_epsilon() #0 {
  %1 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @11, i32 212)
  %2 = alloca double, align 8
  store double 0x3CB0000000000000, ptr %2, align 8
  ret double 0x3CB0000000000000
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @r8_random(ptr noundef %0) #0 {
  %2 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @12, i32 213)
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  store i32 4096, ptr %4, align 4
  store i32 494, ptr %9, align 4
  store i32 322, ptr %10, align 4
  store i32 2508, ptr %11, align 4
  store i32 2549, ptr %12, align 4
  store double 1.000000e+00, ptr %13, align 8
  store double 0x3F30000000000000, ptr %14, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds i32, ptr %16, i64 3
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %12, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, ptr %8, align 4
  %21 = load i32, ptr %8, align 4
  %22 = load i32, ptr %4, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, ptr %7, align 4
  %24 = load i32, ptr %8, align 4
  %25 = load i32, ptr %4, align 4
  %26 = load i32, ptr %7, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sub nsw i32 %24, %27
  store i32 %28, ptr %8, align 4
  %29 = load i32, ptr %7, align 4
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds i32, ptr %30, i64 2
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %12, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %29, %34
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr inbounds i32, ptr %36, i64 3
  %38 = load i32, ptr %37, align 4
  %39 = load i32, ptr %11, align 4
  %40 = mul nsw i32 %38, %39
  %41 = add nsw i32 %35, %40
  store i32 %41, ptr %7, align 4
  %42 = load i32, ptr %7, align 4
  %43 = load i32, ptr %4, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, ptr %6, align 4
  %45 = load i32, ptr %7, align 4
  %46 = load i32, ptr %4, align 4
  %47 = load i32, ptr %6, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sub nsw i32 %45, %48
  store i32 %49, ptr %7, align 4
  %50 = load i32, ptr %6, align 4
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds i32, ptr %51, i64 1
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %12, align 4
  %55 = mul nsw i32 %53, %54
  %56 = add nsw i32 %50, %55
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds i32, ptr %57, i64 2
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr %11, align 4
  %61 = mul nsw i32 %59, %60
  %62 = add nsw i32 %56, %61
  %63 = load ptr, ptr %3, align 8
  %64 = getelementptr inbounds i32, ptr %63, i64 3
  %65 = load i32, ptr %64, align 4
  %66 = load i32, ptr %10, align 4
  %67 = mul nsw i32 %65, %66
  %68 = add nsw i32 %62, %67
  store i32 %68, ptr %6, align 4
  %69 = load i32, ptr %6, align 4
  %70 = load i32, ptr %4, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, ptr %5, align 4
  %72 = load i32, ptr %6, align 4
  %73 = load i32, ptr %4, align 4
  %74 = load i32, ptr %5, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sub nsw i32 %72, %75
  store i32 %76, ptr %6, align 4
  %77 = load i32, ptr %5, align 4
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds i32, ptr %78, i64 0
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr %12, align 4
  %82 = mul nsw i32 %80, %81
  %83 = add nsw i32 %77, %82
  %84 = load ptr, ptr %3, align 8
  %85 = getelementptr inbounds i32, ptr %84, i64 1
  %86 = load i32, ptr %85, align 4
  %87 = load i32, ptr %11, align 4
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %83, %88
  %90 = load ptr, ptr %3, align 8
  %91 = getelementptr inbounds i32, ptr %90, i64 2
  %92 = load i32, ptr %91, align 4
  %93 = load i32, ptr %10, align 4
  %94 = mul nsw i32 %92, %93
  %95 = add nsw i32 %89, %94
  %96 = load ptr, ptr %3, align 8
  %97 = getelementptr inbounds i32, ptr %96, i64 3
  %98 = load i32, ptr %97, align 4
  %99 = load i32, ptr %9, align 4
  %100 = mul nsw i32 %98, %99
  %101 = add nsw i32 %95, %100
  store i32 %101, ptr %5, align 4
  %102 = load i32, ptr %5, align 4
  %103 = load i32, ptr %4, align 4
  %104 = srem i32 %102, %103
  store i32 %104, ptr %5, align 4
  %105 = load i32, ptr %5, align 4
  %106 = load ptr, ptr %3, align 8
  %107 = getelementptr inbounds i32, ptr %106, i64 0
  store i32 %105, ptr %107, align 4
  %108 = load i32, ptr %6, align 4
  %109 = load ptr, ptr %3, align 8
  %110 = getelementptr inbounds i32, ptr %109, i64 1
  store i32 %108, ptr %110, align 4
  %111 = load i32, ptr %7, align 4
  %112 = load ptr, ptr %3, align 8
  %113 = getelementptr inbounds i32, ptr %112, i64 2
  store i32 %111, ptr %113, align 4
  %114 = load i32, ptr %8, align 4
  %115 = load ptr, ptr %3, align 8
  %116 = getelementptr inbounds i32, ptr %115, i64 3
  store i32 %114, ptr %116, align 4
  %117 = load double, ptr %14, align 8
  %118 = load i32, ptr %5, align 4
  %119 = sitofp i32 %118 to double
  %120 = load double, ptr %14, align 8
  %121 = load i32, ptr %6, align 4
  %122 = sitofp i32 %121 to double
  %123 = load double, ptr %14, align 8
  %124 = load i32, ptr %7, align 4
  %125 = sitofp i32 %124 to double
  %126 = load double, ptr %14, align 8
  %127 = load i32, ptr %8, align 4
  %128 = sitofp i32 %127 to double
  %129 = call double @llvm.fmuladd.f64(double %126, double %128, double %125)
  %130 = call double @llvm.fmuladd.f64(double %123, double %129, double %122)
  %131 = call double @llvm.fmuladd.f64(double %120, double %130, double %119)
  %132 = fmul double %117, %131
  store double %132, ptr %15, align 8
  %133 = load double, ptr %15, align 8
  ret double %133
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @printf(ptr, ...)

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 17.0.6 (++20231209124227+6009708b4367-1~exp1~20231209124336.77)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
