; ModuleID = 'tests/linpack.c'
source_filename = "tests/linpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LINPACK_BENCH\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"  C version\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"  The LINPACK benchmark.\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"  Language: C\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"  Datatype: Double precision real\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"  Matrix order N               = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"  Leading matrix dimension LDA = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"LINPACK_BENCH - Fatal error!\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"  The matrix A is apparently singular.\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"  Abnormal end of execution.\0A\00", align 1
@.str.11 = private unnamed_addr constant [73 x i8] c"     Norm. Resid      Resid           MACHEP         X[1]          X[N]\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%14f\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"  %14f\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"  %14e  \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%14f  \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%14f\0A\00", align 1
@.str.17 = private unnamed_addr constant [73 x i8] c"      Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"  %9f\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"  %9f  \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%9f  \00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%9f\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"  Normal end of execution.\0A\00", align 1
@__const.r8mat_gen.init = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 1325], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca double, align 8
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca ptr, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca ptr, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca [6 x double], align 16
  %21 = alloca double, align 8
  %22 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  store double 5.600000e-02, ptr %6, align 8
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef 200)
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef 201)
  store double 0x4154A67555555555, ptr %13, align 8
  %32 = call ptr @r8mat_gen(i32 noundef 201, i32 noundef 200)
  store ptr %32, ptr %2, align 8
  %33 = call noalias ptr @malloc(i64 noundef 1600) #7
  store ptr %33, ptr %4, align 8
  %34 = call noalias ptr @malloc(i64 noundef 800) #7
  store ptr %34, ptr %10, align 8
  %35 = call noalias ptr @malloc(i64 noundef 1600) #7
  store ptr %35, ptr %14, align 8
  %36 = call noalias ptr @malloc(i64 noundef 1600) #7
  store ptr %36, ptr %17, align 8
  %37 = call noalias ptr @malloc(i64 noundef 1600) #7
  store ptr %37, ptr %22, align 8
  store double 0.000000e+00, ptr %3, align 8
  store i32 0, ptr %11, align 4
  br label %38

38:                                               ; preds = %60, %0
  %39 = load i32, ptr %11, align 4
  %40 = icmp slt i32 %39, 200
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  store i32 0, ptr %8, align 4
  br label %42

42:                                               ; preds = %56, %41
  %43 = load i32, ptr %8, align 4
  %44 = icmp slt i32 %43, 200
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load double, ptr %3, align 8
  %47 = load ptr, ptr %2, align 8
  %48 = load i32, ptr %8, align 4
  %49 = load i32, ptr %11, align 4
  %50 = mul nsw i32 %49, 201
  %51 = add nsw i32 %48, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, ptr %47, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = call double @r8_max(double noundef %46, double noundef %54)
  store double %55, ptr %3, align 8
  br label %56

56:                                               ; preds = %45
  %57 = load i32, ptr %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %8, align 4
  br label %42, !llvm.loop !6

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59
  %61 = load i32, ptr %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %11, align 4
  br label %38, !llvm.loop !8

63:                                               ; preds = %38
  store i32 0, ptr %8, align 4
  br label %64

64:                                               ; preds = %72, %63
  %65 = load i32, ptr %8, align 4
  %66 = icmp slt i32 %65, 200
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load ptr, ptr %22, align 8
  %69 = load i32, ptr %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, ptr %68, i64 %70
  store double 1.000000e+00, ptr %71, align 8
  br label %72

72:                                               ; preds = %67
  %73 = load i32, ptr %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %8, align 4
  br label %64, !llvm.loop !9

75:                                               ; preds = %64
  store i32 0, ptr %8, align 4
  br label %76

76:                                               ; preds = %115, %75
  %77 = load i32, ptr %8, align 4
  %78 = icmp slt i32 %77, 200
  br i1 %78, label %79, label %118

79:                                               ; preds = %76
  %80 = load ptr, ptr %4, align 8
  %81 = load i32, ptr %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, ptr %80, i64 %82
  store double 0.000000e+00, ptr %83, align 8
  store i32 0, ptr %11, align 4
  br label %84

84:                                               ; preds = %111, %79
  %85 = load i32, ptr %11, align 4
  %86 = icmp slt i32 %85, 200
  br i1 %86, label %87, label %114

87:                                               ; preds = %84
  %88 = load ptr, ptr %4, align 8
  %89 = load i32, ptr %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds double, ptr %88, i64 %90
  %92 = load double, ptr %91, align 8
  %93 = load ptr, ptr %2, align 8
  %94 = load i32, ptr %8, align 4
  %95 = load i32, ptr %11, align 4
  %96 = mul nsw i32 %95, 201
  %97 = add nsw i32 %94, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, ptr %93, i64 %98
  %100 = load double, ptr %99, align 8
  %101 = load ptr, ptr %22, align 8
  %102 = load i32, ptr %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, ptr %101, i64 %103
  %105 = load double, ptr %104, align 8
  %106 = call double @llvm.fmuladd.f64(double %100, double %105, double %92)
  %107 = load ptr, ptr %4, align 8
  %108 = load i32, ptr %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, ptr %107, i64 %109
  store double %106, ptr %110, align 8
  br label %111

111:                                              ; preds = %87
  %112 = load i32, ptr %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr %11, align 4
  br label %84, !llvm.loop !10

114:                                              ; preds = %84
  br label %115

115:                                              ; preds = %114
  %116 = load i32, ptr %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr %8, align 4
  br label %76, !llvm.loop !11

118:                                              ; preds = %76
  %119 = call double @cpu_time()
  store double %119, ptr %18, align 8
  %120 = load ptr, ptr %2, align 8
  %121 = load ptr, ptr %10, align 8
  %122 = call i32 @dgefa(ptr noundef %120, i32 noundef 201, i32 noundef 200, ptr noundef %121)
  store i32 %122, ptr %9, align 4
  %123 = load i32, ptr %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %127 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %128 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %129 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  call void @exit(i32 noundef 1) #8
  unreachable

130:                                              ; preds = %118
  %131 = call double @cpu_time()
  store double %131, ptr %19, align 8
  %132 = load double, ptr %19, align 8
  %133 = load double, ptr %18, align 8
  %134 = fsub double %132, %133
  %135 = getelementptr inbounds [6 x double], ptr %20, i64 0, i64 0
  store double %134, ptr %135, align 16
  %136 = call double @cpu_time()
  store double %136, ptr %18, align 8
  store i32 0, ptr %12, align 4
  %137 = load ptr, ptr %2, align 8
  %138 = load ptr, ptr %10, align 8
  %139 = load ptr, ptr %4, align 8
  %140 = load i32, ptr %12, align 4
  call void @dgesl(ptr noundef %137, i32 noundef 201, i32 noundef 200, ptr noundef %138, ptr noundef %139, i32 noundef %140)
  %141 = call double @cpu_time()
  store double %141, ptr %19, align 8
  %142 = load double, ptr %19, align 8
  %143 = load double, ptr %18, align 8
  %144 = fsub double %142, %143
  %145 = getelementptr inbounds [6 x double], ptr %20, i64 0, i64 1
  store double %144, ptr %145, align 8
  %146 = getelementptr inbounds [6 x double], ptr %20, i64 0, i64 0
  %147 = load double, ptr %146, align 16
  %148 = getelementptr inbounds [6 x double], ptr %20, i64 0, i64 1
  %149 = load double, ptr %148, align 8
  %150 = fadd double %147, %149
  store double %150, ptr %21, align 8
  %151 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %151) #9
  %152 = call ptr @r8mat_gen(i32 noundef 201, i32 noundef 200)
  store ptr %152, ptr %2, align 8
  store i32 0, ptr %8, align 4
  br label %153

153:                                              ; preds = %161, %130
  %154 = load i32, ptr %8, align 4
  %155 = icmp slt i32 %154, 200
  br i1 %155, label %156, label %164

156:                                              ; preds = %153
  %157 = load ptr, ptr %22, align 8
  %158 = load i32, ptr %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds double, ptr %157, i64 %159
  store double 1.000000e+00, ptr %160, align 8
  br label %161

161:                                              ; preds = %156
  %162 = load i32, ptr %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, ptr %8, align 4
  br label %153, !llvm.loop !12

164:                                              ; preds = %153
  store i32 0, ptr %8, align 4
  br label %165

165:                                              ; preds = %204, %164
  %166 = load i32, ptr %8, align 4
  %167 = icmp slt i32 %166, 200
  br i1 %167, label %168, label %207

168:                                              ; preds = %165
  %169 = load ptr, ptr %17, align 8
  %170 = load i32, ptr %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds double, ptr %169, i64 %171
  store double 0.000000e+00, ptr %172, align 8
  store i32 0, ptr %11, align 4
  br label %173

173:                                              ; preds = %200, %168
  %174 = load i32, ptr %11, align 4
  %175 = icmp slt i32 %174, 200
  br i1 %175, label %176, label %203

176:                                              ; preds = %173
  %177 = load ptr, ptr %17, align 8
  %178 = load i32, ptr %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds double, ptr %177, i64 %179
  %181 = load double, ptr %180, align 8
  %182 = load ptr, ptr %2, align 8
  %183 = load i32, ptr %8, align 4
  %184 = load i32, ptr %11, align 4
  %185 = mul nsw i32 %184, 201
  %186 = add nsw i32 %183, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds double, ptr %182, i64 %187
  %189 = load double, ptr %188, align 8
  %190 = load ptr, ptr %22, align 8
  %191 = load i32, ptr %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds double, ptr %190, i64 %192
  %194 = load double, ptr %193, align 8
  %195 = call double @llvm.fmuladd.f64(double %189, double %194, double %181)
  %196 = load ptr, ptr %17, align 8
  %197 = load i32, ptr %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds double, ptr %196, i64 %198
  store double %195, ptr %199, align 8
  br label %200

200:                                              ; preds = %176
  %201 = load i32, ptr %11, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr %11, align 4
  br label %173, !llvm.loop !13

203:                                              ; preds = %173
  br label %204

204:                                              ; preds = %203
  %205 = load i32, ptr %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, ptr %8, align 4
  br label %165, !llvm.loop !14

207:                                              ; preds = %165
  store i32 0, ptr %8, align 4
  br label %208

208:                                              ; preds = %253, %207
  %209 = load i32, ptr %8, align 4
  %210 = icmp slt i32 %209, 200
  br i1 %210, label %211, label %256

211:                                              ; preds = %208
  %212 = load ptr, ptr %17, align 8
  %213 = load i32, ptr %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds double, ptr %212, i64 %214
  %216 = load double, ptr %215, align 8
  %217 = fneg double %216
  %218 = load ptr, ptr %14, align 8
  %219 = load i32, ptr %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds double, ptr %218, i64 %220
  store double %217, ptr %221, align 8
  store i32 0, ptr %11, align 4
  br label %222

222:                                              ; preds = %249, %211
  %223 = load i32, ptr %11, align 4
  %224 = icmp slt i32 %223, 200
  br i1 %224, label %225, label %252

225:                                              ; preds = %222
  %226 = load ptr, ptr %14, align 8
  %227 = load i32, ptr %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds double, ptr %226, i64 %228
  %230 = load double, ptr %229, align 8
  %231 = load ptr, ptr %2, align 8
  %232 = load i32, ptr %8, align 4
  %233 = load i32, ptr %11, align 4
  %234 = mul nsw i32 %233, 201
  %235 = add nsw i32 %232, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds double, ptr %231, i64 %236
  %238 = load double, ptr %237, align 8
  %239 = load ptr, ptr %4, align 8
  %240 = load i32, ptr %11, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds double, ptr %239, i64 %241
  %243 = load double, ptr %242, align 8
  %244 = call double @llvm.fmuladd.f64(double %238, double %243, double %230)
  %245 = load ptr, ptr %14, align 8
  %246 = load i32, ptr %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds double, ptr %245, i64 %247
  store double %244, ptr %248, align 8
  br label %249

249:                                              ; preds = %225
  %250 = load i32, ptr %11, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %11, align 4
  br label %222, !llvm.loop !15

252:                                              ; preds = %222
  br label %253

253:                                              ; preds = %252
  %254 = load i32, ptr %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, ptr %8, align 4
  br label %208, !llvm.loop !16

256:                                              ; preds = %208
  store double 0.000000e+00, ptr %15, align 8
  store i32 0, ptr %8, align 4
  br label %257

257:                                              ; preds = %269, %256
  %258 = load i32, ptr %8, align 4
  %259 = icmp slt i32 %258, 200
  br i1 %259, label %260, label %272

260:                                              ; preds = %257
  %261 = load double, ptr %15, align 8
  %262 = load ptr, ptr %14, align 8
  %263 = load i32, ptr %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds double, ptr %262, i64 %264
  %266 = load double, ptr %265, align 8
  %267 = call double @r8_abs(double noundef %266)
  %268 = call double @r8_max(double noundef %261, double noundef %267)
  store double %268, ptr %15, align 8
  br label %269

269:                                              ; preds = %260
  %270 = load i32, ptr %8, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, ptr %8, align 4
  br label %257, !llvm.loop !17

272:                                              ; preds = %257
  store double 0.000000e+00, ptr %5, align 8
  store i32 0, ptr %8, align 4
  br label %273

273:                                              ; preds = %285, %272
  %274 = load i32, ptr %8, align 4
  %275 = icmp slt i32 %274, 200
  br i1 %275, label %276, label %288

276:                                              ; preds = %273
  %277 = load double, ptr %5, align 8
  %278 = load ptr, ptr %4, align 8
  %279 = load i32, ptr %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds double, ptr %278, i64 %280
  %282 = load double, ptr %281, align 8
  %283 = call double @r8_abs(double noundef %282)
  %284 = call double @r8_max(double noundef %277, double noundef %283)
  store double %284, ptr %5, align 8
  br label %285

285:                                              ; preds = %276
  %286 = load i32, ptr %8, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, ptr %8, align 4
  br label %273, !llvm.loop !18

288:                                              ; preds = %273
  %289 = call double @r8_epsilon()
  store double %289, ptr %7, align 8
  %290 = load double, ptr %15, align 8
  %291 = fdiv double %290, 2.000000e+02
  %292 = load double, ptr %3, align 8
  %293 = fdiv double %291, %292
  %294 = load double, ptr %5, align 8
  %295 = fdiv double %293, %294
  %296 = load double, ptr %7, align 8
  %297 = fdiv double %295, %296
  store double %297, ptr %16, align 8
  %298 = load double, ptr %21, align 8
  %299 = getelementptr inbounds [6 x double], ptr %20, i64 0, i64 2
  store double %298, ptr %299, align 16
  %300 = load double, ptr %21, align 8
  %301 = fcmp olt double 0.000000e+00, %300
  br i1 %301, label %302, label %308

302:                                              ; preds = %288
  %303 = load double, ptr %13, align 8
  %304 = load double, ptr %21, align 8
  %305 = fmul double 1.000000e+06, %304
  %306 = fdiv double %303, %305
  %307 = getelementptr inbounds [6 x double], ptr %20, i64 0, i64 3
  store double %306, ptr %307, align 8
  br label %310

308:                                              ; preds = %288
  %309 = getelementptr inbounds [6 x double], ptr %20, i64 0, i64 3
  store double -1.000000e+00, ptr %309, align 8
  br label %310

310:                                              ; preds = %308, %302
  %311 = getelementptr inbounds [6 x double], ptr %20, i64 0, i64 3
  %312 = load double, ptr %311, align 8
  %313 = fdiv double 2.000000e+00, %312
  %314 = getelementptr inbounds [6 x double], ptr %20, i64 0, i64 4
  store double %313, ptr %314, align 16
  %315 = load double, ptr %21, align 8
  %316 = load double, ptr %6, align 8
  %317 = fdiv double %315, %316
  %318 = getelementptr inbounds [6 x double], ptr %20, i64 0, i64 5
  store double %317, ptr %318, align 8
  %319 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %320 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %321 = load double, ptr %16, align 8
  %322 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, double noundef %321)
  %323 = load double, ptr %15, align 8
  %324 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %323)
  %325 = load double, ptr %7, align 8
  %326 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %325)
  %327 = load ptr, ptr %4, align 8
  %328 = getelementptr inbounds double, ptr %327, i64 0
  %329 = load double, ptr %328, align 8
  %330 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %329)
  %331 = load ptr, ptr %4, align 8
  %332 = getelementptr inbounds double, ptr %331, i64 199
  %333 = load double, ptr %332, align 8
  %334 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %333)
  %335 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %336 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %337 = getelementptr inbounds [6 x double], ptr %20, i64 0, i64 0
  %338 = load double, ptr %337, align 16
  %339 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, double noundef %338)
  %340 = getelementptr inbounds [6 x double], ptr %20, i64 0, i64 1
  %341 = load double, ptr %340, align 8
  %342 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, double noundef %341)
  %343 = getelementptr inbounds [6 x double], ptr %20, i64 0, i64 2
  %344 = load double, ptr %343, align 16
  %345 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, double noundef %344)
  %346 = getelementptr inbounds [6 x double], ptr %20, i64 0, i64 3
  %347 = load double, ptr %346, align 8
  %348 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, double noundef %347)
  %349 = getelementptr inbounds [6 x double], ptr %20, i64 0, i64 4
  %350 = load double, ptr %349, align 16
  %351 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, double noundef %350)
  %352 = getelementptr inbounds [6 x double], ptr %20, i64 0, i64 5
  %353 = load double, ptr %352, align 8
  %354 = call i32 (ptr, ...) @printf(ptr noundef @.str.21, double noundef %353)
  %355 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %355) #9
  %356 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %356) #9
  %357 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %357) #9
  %358 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %358) #9
  %359 = load ptr, ptr %17, align 8
  call void @free(ptr noundef %359) #9
  %360 = load ptr, ptr %22, align 8
  call void @free(ptr noundef %360) #9
  %361 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %362 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %363 = call i32 (ptr, ...) @printf(ptr noundef @.str.22)
  %364 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  call void @exit(i32 noundef 0) #8
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @r8mat_gen(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %7, ptr align 16 @__const.r8mat_gen.init, i64 16, i1 false)
  %9 = load i32, ptr %3, align 4
  %10 = load i32, ptr %4, align 4
  %11 = mul nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = call noalias ptr @malloc(i64 noundef %13) #7
  store ptr %14, ptr %5, align 8
  store i32 1, ptr %8, align 4
  br label %15

15:                                               ; preds = %42, %2
  %16 = load i32, ptr %8, align 4
  %17 = load i32, ptr %4, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  store i32 1, ptr %6, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, ptr %6, align 4
  %22 = load i32, ptr %4, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 0
  %26 = call double @r8_random(ptr noundef %25)
  %27 = fsub double %26, 5.000000e-01
  %28 = load ptr, ptr %5, align 8
  %29 = load i32, ptr %6, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, ptr %8, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, ptr %3, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %30, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, ptr %28, i64 %36
  store double %27, ptr %37, align 8
  br label %38

38:                                               ; preds = %24
  %39 = load i32, ptr %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %6, align 4
  br label %20, !llvm.loop !19

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41
  %43 = load i32, ptr %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %8, align 4
  br label %15, !llvm.loop !20

45:                                               ; preds = %15
  %46 = load ptr, ptr %5, align 8
  ret ptr %46
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @r8_max(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, ptr %3, align 8
  store double %1, ptr %4, align 8
  %6 = load double, ptr %4, align 8
  %7 = load double, ptr %3, align 8
  %8 = fcmp olt double %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load double, ptr %3, align 8
  store double %10, ptr %5, align 8
  br label %13

11:                                               ; preds = %2
  %12 = load double, ptr %4, align 8
  store double %12, ptr %5, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = load double, ptr %5, align 8
  ret double %14
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dgefa(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 8
  store i32 0, ptr %9, align 4
  store i32 1, ptr %11, align 4
  br label %14

14:                                               ; preds = %217, %4
  %15 = load i32, ptr %11, align 4
  %16 = load i32, ptr %7, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp sle i32 %15, %17
  br i1 %18, label %19, label %220

19:                                               ; preds = %14
  %20 = load i32, ptr %7, align 4
  %21 = load i32, ptr %11, align 4
  %22 = sub nsw i32 %20, %21
  %23 = add nsw i32 %22, 1
  %24 = load ptr, ptr %5, align 8
  %25 = load i32, ptr %11, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, ptr %24, i64 %27
  %29 = load i32, ptr %11, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, ptr %6, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, ptr %28, i64 %33
  %35 = call i32 @idamax(i32 noundef %23, ptr noundef %34, i32 noundef 1)
  %36 = load i32, ptr %11, align 4
  %37 = add nsw i32 %35, %36
  %38 = sub nsw i32 %37, 1
  store i32 %38, ptr %12, align 4
  %39 = load i32, ptr %12, align 4
  %40 = load ptr, ptr %8, align 8
  %41 = load i32, ptr %11, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %40, i64 %43
  store i32 %39, ptr %44, align 4
  %45 = load ptr, ptr %5, align 8
  %46 = load i32, ptr %12, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, ptr %11, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, ptr %6, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 %47, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, ptr %45, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = fcmp oeq double %55, 0.000000e+00
  br i1 %56, label %57, label %59

57:                                               ; preds = %19
  %58 = load i32, ptr %11, align 4
  store i32 %58, ptr %9, align 4
  br label %217

59:                                               ; preds = %19
  %60 = load i32, ptr %12, align 4
  %61 = load i32, ptr %11, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %107

63:                                               ; preds = %59
  %64 = load ptr, ptr %5, align 8
  %65 = load i32, ptr %12, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load i32, ptr %11, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, ptr %6, align 4
  %70 = mul nsw i32 %68, %69
  %71 = add nsw i32 %66, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, ptr %64, i64 %72
  %74 = load double, ptr %73, align 8
  store double %74, ptr %13, align 8
  %75 = load ptr, ptr %5, align 8
  %76 = load i32, ptr %11, align 4
  %77 = sub nsw i32 %76, 1
  %78 = load i32, ptr %11, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load i32, ptr %6, align 4
  %81 = mul nsw i32 %79, %80
  %82 = add nsw i32 %77, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, ptr %75, i64 %83
  %85 = load double, ptr %84, align 8
  %86 = load ptr, ptr %5, align 8
  %87 = load i32, ptr %12, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32, ptr %11, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load i32, ptr %6, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %88, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double, ptr %86, i64 %94
  store double %85, ptr %95, align 8
  %96 = load double, ptr %13, align 8
  %97 = load ptr, ptr %5, align 8
  %98 = load i32, ptr %11, align 4
  %99 = sub nsw i32 %98, 1
  %100 = load i32, ptr %11, align 4
  %101 = sub nsw i32 %100, 1
  %102 = load i32, ptr %6, align 4
  %103 = mul nsw i32 %101, %102
  %104 = add nsw i32 %99, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, ptr %97, i64 %105
  store double %96, ptr %106, align 8
  br label %107

107:                                              ; preds = %63, %59
  %108 = load ptr, ptr %5, align 8
  %109 = load i32, ptr %11, align 4
  %110 = sub nsw i32 %109, 1
  %111 = load i32, ptr %11, align 4
  %112 = sub nsw i32 %111, 1
  %113 = load i32, ptr %6, align 4
  %114 = mul nsw i32 %112, %113
  %115 = add nsw i32 %110, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, ptr %108, i64 %116
  %118 = load double, ptr %117, align 8
  %119 = fdiv double -1.000000e+00, %118
  store double %119, ptr %13, align 8
  %120 = load i32, ptr %7, align 4
  %121 = load i32, ptr %11, align 4
  %122 = sub nsw i32 %120, %121
  %123 = load double, ptr %13, align 8
  %124 = load ptr, ptr %5, align 8
  %125 = load i32, ptr %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds double, ptr %124, i64 %126
  %128 = load i32, ptr %11, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32, ptr %6, align 4
  %131 = mul nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds double, ptr %127, i64 %132
  call void @dscal(i32 noundef %122, double noundef %123, ptr noundef %133, i32 noundef 1)
  %134 = load i32, ptr %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr %10, align 4
  br label %136

136:                                              ; preds = %213, %107
  %137 = load i32, ptr %10, align 4
  %138 = load i32, ptr %7, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %216

140:                                              ; preds = %136
  %141 = load ptr, ptr %5, align 8
  %142 = load i32, ptr %12, align 4
  %143 = sub nsw i32 %142, 1
  %144 = load i32, ptr %10, align 4
  %145 = sub nsw i32 %144, 1
  %146 = load i32, ptr %6, align 4
  %147 = mul nsw i32 %145, %146
  %148 = add nsw i32 %143, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds double, ptr %141, i64 %149
  %151 = load double, ptr %150, align 8
  store double %151, ptr %13, align 8
  %152 = load i32, ptr %12, align 4
  %153 = load i32, ptr %11, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %188

155:                                              ; preds = %140
  %156 = load ptr, ptr %5, align 8
  %157 = load i32, ptr %11, align 4
  %158 = sub nsw i32 %157, 1
  %159 = load i32, ptr %10, align 4
  %160 = sub nsw i32 %159, 1
  %161 = load i32, ptr %6, align 4
  %162 = mul nsw i32 %160, %161
  %163 = add nsw i32 %158, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, ptr %156, i64 %164
  %166 = load double, ptr %165, align 8
  %167 = load ptr, ptr %5, align 8
  %168 = load i32, ptr %12, align 4
  %169 = sub nsw i32 %168, 1
  %170 = load i32, ptr %10, align 4
  %171 = sub nsw i32 %170, 1
  %172 = load i32, ptr %6, align 4
  %173 = mul nsw i32 %171, %172
  %174 = add nsw i32 %169, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double, ptr %167, i64 %175
  store double %166, ptr %176, align 8
  %177 = load double, ptr %13, align 8
  %178 = load ptr, ptr %5, align 8
  %179 = load i32, ptr %11, align 4
  %180 = sub nsw i32 %179, 1
  %181 = load i32, ptr %10, align 4
  %182 = sub nsw i32 %181, 1
  %183 = load i32, ptr %6, align 4
  %184 = mul nsw i32 %182, %183
  %185 = add nsw i32 %180, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds double, ptr %178, i64 %186
  store double %177, ptr %187, align 8
  br label %188

188:                                              ; preds = %155, %140
  %189 = load i32, ptr %7, align 4
  %190 = load i32, ptr %11, align 4
  %191 = sub nsw i32 %189, %190
  %192 = load double, ptr %13, align 8
  %193 = load ptr, ptr %5, align 8
  %194 = load i32, ptr %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds double, ptr %193, i64 %195
  %197 = load i32, ptr %11, align 4
  %198 = sub nsw i32 %197, 1
  %199 = load i32, ptr %6, align 4
  %200 = mul nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds double, ptr %196, i64 %201
  %203 = load ptr, ptr %5, align 8
  %204 = load i32, ptr %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds double, ptr %203, i64 %205
  %207 = load i32, ptr %10, align 4
  %208 = sub nsw i32 %207, 1
  %209 = load i32, ptr %6, align 4
  %210 = mul nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds double, ptr %206, i64 %211
  call void @daxpy(i32 noundef %191, double noundef %192, ptr noundef %202, i32 noundef 1, ptr noundef %212, i32 noundef 1)
  br label %213

213:                                              ; preds = %188
  %214 = load i32, ptr %10, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, ptr %10, align 4
  br label %136, !llvm.loop !21

216:                                              ; preds = %136
  br label %217

217:                                              ; preds = %216, %57
  %218 = load i32, ptr %11, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, ptr %11, align 4
  br label %14, !llvm.loop !22

220:                                              ; preds = %14
  %221 = load i32, ptr %7, align 4
  %222 = load ptr, ptr %8, align 8
  %223 = load i32, ptr %7, align 4
  %224 = sub nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, ptr %222, i64 %225
  store i32 %221, ptr %226, align 4
  %227 = load ptr, ptr %5, align 8
  %228 = load i32, ptr %7, align 4
  %229 = sub nsw i32 %228, 1
  %230 = load i32, ptr %7, align 4
  %231 = sub nsw i32 %230, 1
  %232 = load i32, ptr %6, align 4
  %233 = mul nsw i32 %231, %232
  %234 = add nsw i32 %229, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds double, ptr %227, i64 %235
  %237 = load double, ptr %236, align 8
  %238 = fcmp oeq double %237, 0.000000e+00
  br i1 %238, label %239, label %241

239:                                              ; preds = %220
  %240 = load i32, ptr %7, align 4
  store i32 %240, ptr %9, align 4
  br label %241

241:                                              ; preds = %239, %220
  %242 = load i32, ptr %9, align 4
  ret i32 %242
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dgesl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  store ptr %0, ptr %7, align 8
  store i32 %1, ptr %8, align 4
  store i32 %2, ptr %9, align 4
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store i32 %5, ptr %12, align 4
  %16 = load i32, ptr %12, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %132

18:                                               ; preds = %6
  store i32 1, ptr %13, align 4
  br label %19

19:                                               ; preds = %77, %18
  %20 = load i32, ptr %13, align 4
  %21 = load i32, ptr %9, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp sle i32 %20, %22
  br i1 %23, label %24, label %80

24:                                               ; preds = %19
  %25 = load ptr, ptr %10, align 8
  %26 = load i32, ptr %13, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %25, i64 %28
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %14, align 4
  %31 = load ptr, ptr %11, align 8
  %32 = load i32, ptr %14, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, ptr %31, i64 %34
  %36 = load double, ptr %35, align 8
  store double %36, ptr %15, align 8
  %37 = load i32, ptr %14, align 4
  %38 = load i32, ptr %13, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %24
  %41 = load ptr, ptr %11, align 8
  %42 = load i32, ptr %13, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, ptr %41, i64 %44
  %46 = load double, ptr %45, align 8
  %47 = load ptr, ptr %11, align 8
  %48 = load i32, ptr %14, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, ptr %47, i64 %50
  store double %46, ptr %51, align 8
  %52 = load double, ptr %15, align 8
  %53 = load ptr, ptr %11, align 8
  %54 = load i32, ptr %13, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, ptr %53, i64 %56
  store double %52, ptr %57, align 8
  br label %58

58:                                               ; preds = %40, %24
  %59 = load i32, ptr %9, align 4
  %60 = load i32, ptr %13, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load double, ptr %15, align 8
  %63 = load ptr, ptr %7, align 8
  %64 = load i32, ptr %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, ptr %63, i64 %65
  %67 = load i32, ptr %13, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, ptr %8, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, ptr %66, i64 %71
  %73 = load ptr, ptr %11, align 8
  %74 = load i32, ptr %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, ptr %73, i64 %75
  call void @daxpy(i32 noundef %61, double noundef %62, ptr noundef %72, i32 noundef 1, ptr noundef %76, i32 noundef 1)
  br label %77

77:                                               ; preds = %58
  %78 = load i32, ptr %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %13, align 4
  br label %19, !llvm.loop !23

80:                                               ; preds = %19
  %81 = load i32, ptr %9, align 4
  store i32 %81, ptr %13, align 4
  br label %82

82:                                               ; preds = %128, %80
  %83 = load i32, ptr %13, align 4
  %84 = icmp sle i32 1, %83
  br i1 %84, label %85, label %131

85:                                               ; preds = %82
  %86 = load ptr, ptr %11, align 8
  %87 = load i32, ptr %13, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, ptr %86, i64 %89
  %91 = load double, ptr %90, align 8
  %92 = load ptr, ptr %7, align 8
  %93 = load i32, ptr %13, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load i32, ptr %13, align 4
  %96 = sub nsw i32 %95, 1
  %97 = load i32, ptr %8, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %94, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, ptr %92, i64 %100
  %102 = load double, ptr %101, align 8
  %103 = fdiv double %91, %102
  %104 = load ptr, ptr %11, align 8
  %105 = load i32, ptr %13, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, ptr %104, i64 %107
  store double %103, ptr %108, align 8
  %109 = load ptr, ptr %11, align 8
  %110 = load i32, ptr %13, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, ptr %109, i64 %112
  %114 = load double, ptr %113, align 8
  %115 = fneg double %114
  store double %115, ptr %15, align 8
  %116 = load i32, ptr %13, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load double, ptr %15, align 8
  %119 = load ptr, ptr %7, align 8
  %120 = getelementptr inbounds double, ptr %119, i64 0
  %121 = load i32, ptr %13, align 4
  %122 = sub nsw i32 %121, 1
  %123 = load i32, ptr %8, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, ptr %120, i64 %125
  %127 = load ptr, ptr %11, align 8
  call void @daxpy(i32 noundef %117, double noundef %118, ptr noundef %126, i32 noundef 1, ptr noundef %127, i32 noundef 1)
  br label %128

128:                                              ; preds = %85
  %129 = load i32, ptr %13, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, ptr %13, align 4
  br label %82, !llvm.loop !24

131:                                              ; preds = %82
  br label %253

132:                                              ; preds = %6
  store i32 1, ptr %13, align 4
  br label %133

133:                                              ; preds = %175, %132
  %134 = load i32, ptr %13, align 4
  %135 = load i32, ptr %9, align 4
  %136 = icmp sle i32 %134, %135
  br i1 %136, label %137, label %178

137:                                              ; preds = %133
  %138 = load i32, ptr %13, align 4
  %139 = sub nsw i32 %138, 1
  %140 = load ptr, ptr %7, align 8
  %141 = getelementptr inbounds double, ptr %140, i64 0
  %142 = load i32, ptr %13, align 4
  %143 = sub nsw i32 %142, 1
  %144 = load i32, ptr %8, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double, ptr %141, i64 %146
  %148 = load ptr, ptr %11, align 8
  %149 = call double @ddot(i32 noundef %139, ptr noundef %147, i32 noundef 1, ptr noundef %148, i32 noundef 1)
  store double %149, ptr %15, align 8
  %150 = load ptr, ptr %11, align 8
  %151 = load i32, ptr %13, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds double, ptr %150, i64 %153
  %155 = load double, ptr %154, align 8
  %156 = load double, ptr %15, align 8
  %157 = fsub double %155, %156
  %158 = load ptr, ptr %7, align 8
  %159 = load i32, ptr %13, align 4
  %160 = sub nsw i32 %159, 1
  %161 = load i32, ptr %13, align 4
  %162 = sub nsw i32 %161, 1
  %163 = load i32, ptr %8, align 4
  %164 = mul nsw i32 %162, %163
  %165 = add nsw i32 %160, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double, ptr %158, i64 %166
  %168 = load double, ptr %167, align 8
  %169 = fdiv double %157, %168
  %170 = load ptr, ptr %11, align 8
  %171 = load i32, ptr %13, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds double, ptr %170, i64 %173
  store double %169, ptr %174, align 8
  br label %175

175:                                              ; preds = %137
  %176 = load i32, ptr %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, ptr %13, align 4
  br label %133, !llvm.loop !25

178:                                              ; preds = %133
  %179 = load i32, ptr %9, align 4
  %180 = sub nsw i32 %179, 1
  store i32 %180, ptr %13, align 4
  br label %181

181:                                              ; preds = %249, %178
  %182 = load i32, ptr %13, align 4
  %183 = icmp sle i32 1, %182
  br i1 %183, label %184, label %252

184:                                              ; preds = %181
  %185 = load ptr, ptr %11, align 8
  %186 = load i32, ptr %13, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds double, ptr %185, i64 %188
  %190 = load double, ptr %189, align 8
  %191 = load i32, ptr %9, align 4
  %192 = load i32, ptr %13, align 4
  %193 = sub nsw i32 %191, %192
  %194 = load ptr, ptr %7, align 8
  %195 = load i32, ptr %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds double, ptr %194, i64 %196
  %198 = load i32, ptr %13, align 4
  %199 = sub nsw i32 %198, 1
  %200 = load i32, ptr %8, align 4
  %201 = mul nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds double, ptr %197, i64 %202
  %204 = load ptr, ptr %11, align 8
  %205 = load i32, ptr %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds double, ptr %204, i64 %206
  %208 = call double @ddot(i32 noundef %193, ptr noundef %203, i32 noundef 1, ptr noundef %207, i32 noundef 1)
  %209 = fadd double %190, %208
  %210 = load ptr, ptr %11, align 8
  %211 = load i32, ptr %13, align 4
  %212 = sub nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double, ptr %210, i64 %213
  store double %209, ptr %214, align 8
  %215 = load ptr, ptr %10, align 8
  %216 = load i32, ptr %13, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, ptr %215, i64 %218
  %220 = load i32, ptr %219, align 4
  store i32 %220, ptr %14, align 4
  %221 = load i32, ptr %14, align 4
  %222 = load i32, ptr %13, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %248

224:                                              ; preds = %184
  %225 = load ptr, ptr %11, align 8
  %226 = load i32, ptr %14, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds double, ptr %225, i64 %228
  %230 = load double, ptr %229, align 8
  store double %230, ptr %15, align 8
  %231 = load ptr, ptr %11, align 8
  %232 = load i32, ptr %13, align 4
  %233 = sub nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds double, ptr %231, i64 %234
  %236 = load double, ptr %235, align 8
  %237 = load ptr, ptr %11, align 8
  %238 = load i32, ptr %14, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds double, ptr %237, i64 %240
  store double %236, ptr %241, align 8
  %242 = load double, ptr %15, align 8
  %243 = load ptr, ptr %11, align 8
  %244 = load i32, ptr %13, align 4
  %245 = sub nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds double, ptr %243, i64 %246
  store double %242, ptr %247, align 8
  br label %248

248:                                              ; preds = %224, %184
  br label %249

249:                                              ; preds = %248
  %250 = load i32, ptr %13, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, ptr %13, align 4
  br label %181, !llvm.loop !26

252:                                              ; preds = %181
  br label %253

253:                                              ; preds = %252, %131
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @r8_abs(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, ptr %2, align 8
  %4 = load double, ptr %2, align 8
  %5 = fcmp ole double 0.000000e+00, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load double, ptr %2, align 8
  store double %7, ptr %3, align 8
  br label %11

8:                                                ; preds = %1
  %9 = load double, ptr %2, align 8
  %10 = fneg double %9
  store double %10, ptr %3, align 8
  br label %11

11:                                               ; preds = %8, %6
  %12 = load double, ptr %3, align 8
  ret double %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @cpu_time() #0 {
  %1 = alloca double, align 8
  %2 = call i64 @clock() #9
  %3 = sitofp i64 %2 to double
  %4 = fdiv double %3, 1.000000e+06
  store double %4, ptr %1, align 8
  %5 = load double, ptr %1, align 8
  ret double %5
}

; Function Attrs: nounwind
declare i64 @clock() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, ptr %7, align 4
  store double %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store i32 %3, ptr %10, align 4
  store ptr %4, ptr %11, align 8
  store i32 %5, ptr %12, align 4
  %17 = load i32, ptr %7, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %194

20:                                               ; preds = %6
  %21 = load double, ptr %8, align 8
  %22 = fcmp oeq double %21, 0.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %194

24:                                               ; preds = %20
  %25 = load i32, ptr %10, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %12, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %82

30:                                               ; preds = %27, %24
  %31 = load i32, ptr %10, align 4
  %32 = icmp sle i32 0, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, ptr %14, align 4
  br label %40

34:                                               ; preds = %30
  %35 = load i32, ptr %7, align 4
  %36 = sub nsw i32 0, %35
  %37 = add nsw i32 %36, 1
  %38 = load i32, ptr %10, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, ptr %14, align 4
  br label %40

40:                                               ; preds = %34, %33
  %41 = load i32, ptr %12, align 4
  %42 = icmp sle i32 0, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, ptr %15, align 4
  br label %50

44:                                               ; preds = %40
  %45 = load i32, ptr %7, align 4
  %46 = sub nsw i32 0, %45
  %47 = add nsw i32 %46, 1
  %48 = load i32, ptr %12, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, ptr %15, align 4
  br label %50

50:                                               ; preds = %44, %43
  store i32 0, ptr %13, align 4
  br label %51

51:                                               ; preds = %78, %50
  %52 = load i32, ptr %13, align 4
  %53 = load i32, ptr %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %51
  %56 = load ptr, ptr %11, align 8
  %57 = load i32, ptr %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, ptr %56, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = load double, ptr %8, align 8
  %62 = load ptr, ptr %9, align 8
  %63 = load i32, ptr %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, ptr %62, i64 %64
  %66 = load double, ptr %65, align 8
  %67 = call double @llvm.fmuladd.f64(double %61, double %66, double %60)
  %68 = load ptr, ptr %11, align 8
  %69 = load i32, ptr %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, ptr %68, i64 %70
  store double %67, ptr %71, align 8
  %72 = load i32, ptr %14, align 4
  %73 = load i32, ptr %10, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, ptr %14, align 4
  %75 = load i32, ptr %15, align 4
  %76 = load i32, ptr %12, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, ptr %15, align 4
  br label %78

78:                                               ; preds = %55
  %79 = load i32, ptr %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %13, align 4
  br label %51, !llvm.loop !27

81:                                               ; preds = %51
  br label %193

82:                                               ; preds = %27
  %83 = load i32, ptr %7, align 4
  %84 = srem i32 %83, 4
  store i32 %84, ptr %16, align 4
  store i32 0, ptr %13, align 4
  br label %85

85:                                               ; preds = %106, %82
  %86 = load i32, ptr %13, align 4
  %87 = load i32, ptr %16, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %85
  %90 = load ptr, ptr %11, align 8
  %91 = load i32, ptr %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, ptr %90, i64 %92
  %94 = load double, ptr %93, align 8
  %95 = load double, ptr %8, align 8
  %96 = load ptr, ptr %9, align 8
  %97 = load i32, ptr %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, ptr %96, i64 %98
  %100 = load double, ptr %99, align 8
  %101 = call double @llvm.fmuladd.f64(double %95, double %100, double %94)
  %102 = load ptr, ptr %11, align 8
  %103 = load i32, ptr %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, ptr %102, i64 %104
  store double %101, ptr %105, align 8
  br label %106

106:                                              ; preds = %89
  %107 = load i32, ptr %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %13, align 4
  br label %85, !llvm.loop !28

109:                                              ; preds = %85
  %110 = load i32, ptr %16, align 4
  store i32 %110, ptr %13, align 4
  br label %111

111:                                              ; preds = %189, %109
  %112 = load i32, ptr %13, align 4
  %113 = load i32, ptr %7, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %192

115:                                              ; preds = %111
  %116 = load ptr, ptr %11, align 8
  %117 = load i32, ptr %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, ptr %116, i64 %118
  %120 = load double, ptr %119, align 8
  %121 = load double, ptr %8, align 8
  %122 = load ptr, ptr %9, align 8
  %123 = load i32, ptr %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds double, ptr %122, i64 %124
  %126 = load double, ptr %125, align 8
  %127 = call double @llvm.fmuladd.f64(double %121, double %126, double %120)
  %128 = load ptr, ptr %11, align 8
  %129 = load i32, ptr %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds double, ptr %128, i64 %130
  store double %127, ptr %131, align 8
  %132 = load ptr, ptr %11, align 8
  %133 = load i32, ptr %13, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds double, ptr %132, i64 %135
  %137 = load double, ptr %136, align 8
  %138 = load double, ptr %8, align 8
  %139 = load ptr, ptr %9, align 8
  %140 = load i32, ptr %13, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, ptr %139, i64 %142
  %144 = load double, ptr %143, align 8
  %145 = call double @llvm.fmuladd.f64(double %138, double %144, double %137)
  %146 = load ptr, ptr %11, align 8
  %147 = load i32, ptr %13, align 4
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds double, ptr %146, i64 %149
  store double %145, ptr %150, align 8
  %151 = load ptr, ptr %11, align 8
  %152 = load i32, ptr %13, align 4
  %153 = add nsw i32 %152, 2
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds double, ptr %151, i64 %154
  %156 = load double, ptr %155, align 8
  %157 = load double, ptr %8, align 8
  %158 = load ptr, ptr %9, align 8
  %159 = load i32, ptr %13, align 4
  %160 = add nsw i32 %159, 2
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds double, ptr %158, i64 %161
  %163 = load double, ptr %162, align 8
  %164 = call double @llvm.fmuladd.f64(double %157, double %163, double %156)
  %165 = load ptr, ptr %11, align 8
  %166 = load i32, ptr %13, align 4
  %167 = add nsw i32 %166, 2
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds double, ptr %165, i64 %168
  store double %164, ptr %169, align 8
  %170 = load ptr, ptr %11, align 8
  %171 = load i32, ptr %13, align 4
  %172 = add nsw i32 %171, 3
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds double, ptr %170, i64 %173
  %175 = load double, ptr %174, align 8
  %176 = load double, ptr %8, align 8
  %177 = load ptr, ptr %9, align 8
  %178 = load i32, ptr %13, align 4
  %179 = add nsw i32 %178, 3
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds double, ptr %177, i64 %180
  %182 = load double, ptr %181, align 8
  %183 = call double @llvm.fmuladd.f64(double %176, double %182, double %175)
  %184 = load ptr, ptr %11, align 8
  %185 = load i32, ptr %13, align 4
  %186 = add nsw i32 %185, 3
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds double, ptr %184, i64 %187
  store double %183, ptr %188, align 8
  br label %189

189:                                              ; preds = %115
  %190 = load i32, ptr %13, align 4
  %191 = add nsw i32 %190, 4
  store i32 %191, ptr %13, align 4
  br label %111, !llvm.loop !29

192:                                              ; preds = %111
  br label %193

193:                                              ; preds = %192, %81
  br label %194

194:                                              ; preds = %193, %23, %19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @ddot(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, ptr %7, align 4
  store ptr %1, ptr %8, align 8
  store i32 %2, ptr %9, align 4
  store ptr %3, ptr %10, align 8
  store i32 %4, ptr %11, align 4
  store double 0.000000e+00, ptr %12, align 8
  %17 = load i32, ptr %7, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load double, ptr %12, align 8
  store double %20, ptr %6, align 8
  br label %175

21:                                               ; preds = %5
  %22 = load i32, ptr %9, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %11, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %75

27:                                               ; preds = %24, %21
  %28 = load i32, ptr %9, align 4
  %29 = icmp sle i32 0, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, ptr %14, align 4
  br label %37

31:                                               ; preds = %27
  %32 = load i32, ptr %7, align 4
  %33 = sub nsw i32 0, %32
  %34 = add nsw i32 %33, 1
  %35 = load i32, ptr %9, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, ptr %14, align 4
  br label %37

37:                                               ; preds = %31, %30
  %38 = load i32, ptr %11, align 4
  %39 = icmp sle i32 0, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, ptr %15, align 4
  br label %47

41:                                               ; preds = %37
  %42 = load i32, ptr %7, align 4
  %43 = sub nsw i32 0, %42
  %44 = add nsw i32 %43, 1
  %45 = load i32, ptr %11, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, ptr %15, align 4
  br label %47

47:                                               ; preds = %41, %40
  store i32 0, ptr %13, align 4
  br label %48

48:                                               ; preds = %71, %47
  %49 = load i32, ptr %13, align 4
  %50 = load i32, ptr %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %48
  %53 = load double, ptr %12, align 8
  %54 = load ptr, ptr %8, align 8
  %55 = load i32, ptr %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, ptr %54, i64 %56
  %58 = load double, ptr %57, align 8
  %59 = load ptr, ptr %10, align 8
  %60 = load i32, ptr %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %59, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = call double @llvm.fmuladd.f64(double %58, double %63, double %53)
  store double %64, ptr %12, align 8
  %65 = load i32, ptr %14, align 4
  %66 = load i32, ptr %9, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, ptr %14, align 4
  %68 = load i32, ptr %15, align 4
  %69 = load i32, ptr %11, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, ptr %15, align 4
  br label %71

71:                                               ; preds = %52
  %72 = load i32, ptr %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %13, align 4
  br label %48, !llvm.loop !30

74:                                               ; preds = %48
  br label %173

75:                                               ; preds = %24
  %76 = load i32, ptr %7, align 4
  %77 = srem i32 %76, 5
  store i32 %77, ptr %16, align 4
  store i32 0, ptr %13, align 4
  br label %78

78:                                               ; preds = %95, %75
  %79 = load i32, ptr %13, align 4
  %80 = load i32, ptr %16, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load double, ptr %12, align 8
  %84 = load ptr, ptr %8, align 8
  %85 = load i32, ptr %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, ptr %84, i64 %86
  %88 = load double, ptr %87, align 8
  %89 = load ptr, ptr %10, align 8
  %90 = load i32, ptr %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, ptr %89, i64 %91
  %93 = load double, ptr %92, align 8
  %94 = call double @llvm.fmuladd.f64(double %88, double %93, double %83)
  store double %94, ptr %12, align 8
  br label %95

95:                                               ; preds = %82
  %96 = load i32, ptr %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %13, align 4
  br label %78, !llvm.loop !31

98:                                               ; preds = %78
  %99 = load i32, ptr %16, align 4
  store i32 %99, ptr %13, align 4
  br label %100

100:                                              ; preds = %169, %98
  %101 = load i32, ptr %13, align 4
  %102 = load i32, ptr %7, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %172

104:                                              ; preds = %100
  %105 = load double, ptr %12, align 8
  %106 = load ptr, ptr %8, align 8
  %107 = load i32, ptr %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, ptr %106, i64 %108
  %110 = load double, ptr %109, align 8
  %111 = load ptr, ptr %10, align 8
  %112 = load i32, ptr %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double, ptr %111, i64 %113
  %115 = load double, ptr %114, align 8
  %116 = call double @llvm.fmuladd.f64(double %110, double %115, double %105)
  %117 = load ptr, ptr %8, align 8
  %118 = load i32, ptr %13, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds double, ptr %117, i64 %120
  %122 = load double, ptr %121, align 8
  %123 = load ptr, ptr %10, align 8
  %124 = load i32, ptr %13, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds double, ptr %123, i64 %126
  %128 = load double, ptr %127, align 8
  %129 = call double @llvm.fmuladd.f64(double %122, double %128, double %116)
  %130 = load ptr, ptr %8, align 8
  %131 = load i32, ptr %13, align 4
  %132 = add nsw i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double, ptr %130, i64 %133
  %135 = load double, ptr %134, align 8
  %136 = load ptr, ptr %10, align 8
  %137 = load i32, ptr %13, align 4
  %138 = add nsw i32 %137, 2
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, ptr %136, i64 %139
  %141 = load double, ptr %140, align 8
  %142 = call double @llvm.fmuladd.f64(double %135, double %141, double %129)
  %143 = load ptr, ptr %8, align 8
  %144 = load i32, ptr %13, align 4
  %145 = add nsw i32 %144, 3
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double, ptr %143, i64 %146
  %148 = load double, ptr %147, align 8
  %149 = load ptr, ptr %10, align 8
  %150 = load i32, ptr %13, align 4
  %151 = add nsw i32 %150, 3
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds double, ptr %149, i64 %152
  %154 = load double, ptr %153, align 8
  %155 = call double @llvm.fmuladd.f64(double %148, double %154, double %142)
  %156 = load ptr, ptr %8, align 8
  %157 = load i32, ptr %13, align 4
  %158 = add nsw i32 %157, 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds double, ptr %156, i64 %159
  %161 = load double, ptr %160, align 8
  %162 = load ptr, ptr %10, align 8
  %163 = load i32, ptr %13, align 4
  %164 = add nsw i32 %163, 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, ptr %162, i64 %165
  %167 = load double, ptr %166, align 8
  %168 = call double @llvm.fmuladd.f64(double %161, double %167, double %155)
  store double %168, ptr %12, align 8
  br label %169

169:                                              ; preds = %104
  %170 = load i32, ptr %13, align 4
  %171 = add nsw i32 %170, 5
  store i32 %171, ptr %13, align 4
  br label %100, !llvm.loop !32

172:                                              ; preds = %100
  br label %173

173:                                              ; preds = %172, %74
  %174 = load double, ptr %12, align 8
  store double %174, ptr %6, align 8
  br label %175

175:                                              ; preds = %173, %19
  %176 = load double, ptr %6, align 8
  ret double %176
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 0, ptr %11, align 4
  %12 = load i32, ptr %5, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, ptr %7, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = load i32, ptr %11, align 4
  store i32 %18, ptr %4, align 4
  br label %99

19:                                               ; preds = %14
  store i32 1, ptr %11, align 4
  %20 = load i32, ptr %5, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, ptr %11, align 4
  store i32 %23, ptr %4, align 4
  br label %99

24:                                               ; preds = %19
  %25 = load i32, ptr %7, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds double, ptr %28, i64 0
  %30 = load double, ptr %29, align 8
  %31 = call double @r8_abs(double noundef %30)
  store double %31, ptr %8, align 8
  store i32 1, ptr %9, align 4
  br label %32

32:                                               ; preds = %55, %27
  %33 = load i32, ptr %9, align 4
  %34 = load i32, ptr %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = load double, ptr %8, align 8
  %38 = load ptr, ptr %6, align 8
  %39 = load i32, ptr %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, ptr %38, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = call double @r8_abs(double noundef %42)
  %44 = fcmp olt double %37, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = load i32, ptr %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %11, align 4
  %48 = load ptr, ptr %6, align 8
  %49 = load i32, ptr %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, ptr %48, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = call double @r8_abs(double noundef %52)
  store double %53, ptr %8, align 8
  br label %54

54:                                               ; preds = %45, %36
  br label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %9, align 4
  br label %32, !llvm.loop !33

58:                                               ; preds = %32
  br label %97

59:                                               ; preds = %24
  store i32 0, ptr %10, align 4
  %60 = load ptr, ptr %6, align 8
  %61 = getelementptr inbounds double, ptr %60, i64 0
  %62 = load double, ptr %61, align 8
  %63 = call double @r8_abs(double noundef %62)
  store double %63, ptr %8, align 8
  %64 = load i32, ptr %10, align 4
  %65 = load i32, ptr %7, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, ptr %10, align 4
  store i32 1, ptr %9, align 4
  br label %67

67:                                               ; preds = %93, %59
  %68 = load i32, ptr %9, align 4
  %69 = load i32, ptr %5, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %67
  %72 = load double, ptr %8, align 8
  %73 = load ptr, ptr %6, align 8
  %74 = load i32, ptr %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, ptr %73, i64 %75
  %77 = load double, ptr %76, align 8
  %78 = call double @r8_abs(double noundef %77)
  %79 = fcmp olt double %72, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %71
  %81 = load i32, ptr %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %11, align 4
  %83 = load ptr, ptr %6, align 8
  %84 = load i32, ptr %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, ptr %83, i64 %85
  %87 = load double, ptr %86, align 8
  %88 = call double @r8_abs(double noundef %87)
  store double %88, ptr %8, align 8
  br label %89

89:                                               ; preds = %80, %71
  %90 = load i32, ptr %10, align 4
  %91 = load i32, ptr %7, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, ptr %10, align 4
  br label %93

93:                                               ; preds = %89
  %94 = load i32, ptr %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %9, align 4
  br label %67, !llvm.loop !34

96:                                               ; preds = %67
  br label %97

97:                                               ; preds = %96, %58
  %98 = load i32, ptr %11, align 4
  store i32 %98, ptr %4, align 4
  br label %99

99:                                               ; preds = %97, %22, %17
  %100 = load i32, ptr %4, align 4
  ret i32 %100
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store double %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  %12 = load i32, ptr %5, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %149

15:                                               ; preds = %4
  %16 = load i32, ptr %8, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %114

18:                                               ; preds = %15
  %19 = load i32, ptr %5, align 4
  %20 = srem i32 %19, 5
  store i32 %20, ptr %11, align 4
  store i32 0, ptr %9, align 4
  br label %21

21:                                               ; preds = %37, %18
  %22 = load i32, ptr %9, align 4
  %23 = load i32, ptr %11, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load double, ptr %6, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = load i32, ptr %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, ptr %27, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = fmul double %26, %31
  %33 = load ptr, ptr %7, align 8
  %34 = load i32, ptr %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, ptr %33, i64 %35
  store double %32, ptr %36, align 8
  br label %37

37:                                               ; preds = %25
  %38 = load i32, ptr %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %9, align 4
  br label %21, !llvm.loop !35

40:                                               ; preds = %21
  %41 = load i32, ptr %11, align 4
  store i32 %41, ptr %9, align 4
  br label %42

42:                                               ; preds = %110, %40
  %43 = load i32, ptr %9, align 4
  %44 = load i32, ptr %5, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %113

46:                                               ; preds = %42
  %47 = load double, ptr %6, align 8
  %48 = load ptr, ptr %7, align 8
  %49 = load i32, ptr %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, ptr %48, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = fmul double %47, %52
  %54 = load ptr, ptr %7, align 8
  %55 = load i32, ptr %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, ptr %54, i64 %56
  store double %53, ptr %57, align 8
  %58 = load double, ptr %6, align 8
  %59 = load ptr, ptr %7, align 8
  %60 = load i32, ptr %9, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, ptr %59, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = fmul double %58, %64
  %66 = load ptr, ptr %7, align 8
  %67 = load i32, ptr %9, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, ptr %66, i64 %69
  store double %65, ptr %70, align 8
  %71 = load double, ptr %6, align 8
  %72 = load ptr, ptr %7, align 8
  %73 = load i32, ptr %9, align 4
  %74 = add nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, ptr %72, i64 %75
  %77 = load double, ptr %76, align 8
  %78 = fmul double %71, %77
  %79 = load ptr, ptr %7, align 8
  %80 = load i32, ptr %9, align 4
  %81 = add nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, ptr %79, i64 %82
  store double %78, ptr %83, align 8
  %84 = load double, ptr %6, align 8
  %85 = load ptr, ptr %7, align 8
  %86 = load i32, ptr %9, align 4
  %87 = add nsw i32 %86, 3
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, ptr %85, i64 %88
  %90 = load double, ptr %89, align 8
  %91 = fmul double %84, %90
  %92 = load ptr, ptr %7, align 8
  %93 = load i32, ptr %9, align 4
  %94 = add nsw i32 %93, 3
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, ptr %92, i64 %95
  store double %91, ptr %96, align 8
  %97 = load double, ptr %6, align 8
  %98 = load ptr, ptr %7, align 8
  %99 = load i32, ptr %9, align 4
  %100 = add nsw i32 %99, 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, ptr %98, i64 %101
  %103 = load double, ptr %102, align 8
  %104 = fmul double %97, %103
  %105 = load ptr, ptr %7, align 8
  %106 = load i32, ptr %9, align 4
  %107 = add nsw i32 %106, 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, ptr %105, i64 %108
  store double %104, ptr %109, align 8
  br label %110

110:                                              ; preds = %46
  %111 = load i32, ptr %9, align 4
  %112 = add nsw i32 %111, 5
  store i32 %112, ptr %9, align 4
  br label %42, !llvm.loop !36

113:                                              ; preds = %42
  br label %148

114:                                              ; preds = %15
  %115 = load i32, ptr %8, align 4
  %116 = icmp sle i32 0, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 0, ptr %10, align 4
  br label %124

118:                                              ; preds = %114
  %119 = load i32, ptr %5, align 4
  %120 = sub nsw i32 0, %119
  %121 = add nsw i32 %120, 1
  %122 = load i32, ptr %8, align 4
  %123 = mul nsw i32 %121, %122
  store i32 %123, ptr %10, align 4
  br label %124

124:                                              ; preds = %118, %117
  store i32 0, ptr %9, align 4
  br label %125

125:                                              ; preds = %144, %124
  %126 = load i32, ptr %9, align 4
  %127 = load i32, ptr %5, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %147

129:                                              ; preds = %125
  %130 = load double, ptr %6, align 8
  %131 = load ptr, ptr %7, align 8
  %132 = load i32, ptr %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double, ptr %131, i64 %133
  %135 = load double, ptr %134, align 8
  %136 = fmul double %130, %135
  %137 = load ptr, ptr %7, align 8
  %138 = load i32, ptr %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, ptr %137, i64 %139
  store double %136, ptr %140, align 8
  %141 = load i32, ptr %10, align 4
  %142 = load i32, ptr %8, align 4
  %143 = add nsw i32 %141, %142
  store i32 %143, ptr %10, align 4
  br label %144

144:                                              ; preds = %129
  %145 = load i32, ptr %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %9, align 4
  br label %125, !llvm.loop !37

147:                                              ; preds = %125
  br label %148

148:                                              ; preds = %147, %113
  br label %149

149:                                              ; preds = %148, %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @r8_epsilon() #0 {
  %1 = alloca double, align 8
  store double 0x3CB0000000000000, ptr %1, align 8
  ret double 0x3CB0000000000000
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @r8_random(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store ptr %0, ptr %2, align 8
  store i32 4096, ptr %3, align 4
  store i32 494, ptr %8, align 4
  store i32 322, ptr %9, align 4
  store i32 2508, ptr %10, align 4
  store i32 2549, ptr %11, align 4
  store double 1.000000e+00, ptr %12, align 8
  store double 0x3F30000000000000, ptr %13, align 8
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds i32, ptr %15, i64 3
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %11, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, ptr %7, align 4
  %20 = load i32, ptr %7, align 4
  %21 = load i32, ptr %3, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, ptr %6, align 4
  %23 = load i32, ptr %7, align 4
  %24 = load i32, ptr %3, align 4
  %25 = load i32, ptr %6, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sub nsw i32 %23, %26
  store i32 %27, ptr %7, align 4
  %28 = load i32, ptr %6, align 4
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds i32, ptr %29, i64 2
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %11, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 %28, %33
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds i32, ptr %35, i64 3
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %10, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %34, %39
  store i32 %40, ptr %6, align 4
  %41 = load i32, ptr %6, align 4
  %42 = load i32, ptr %3, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, ptr %5, align 4
  %44 = load i32, ptr %6, align 4
  %45 = load i32, ptr %3, align 4
  %46 = load i32, ptr %5, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sub nsw i32 %44, %47
  store i32 %48, ptr %6, align 4
  %49 = load i32, ptr %5, align 4
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds i32, ptr %50, i64 1
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %11, align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %49, %54
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds i32, ptr %56, i64 2
  %58 = load i32, ptr %57, align 4
  %59 = load i32, ptr %10, align 4
  %60 = mul nsw i32 %58, %59
  %61 = add nsw i32 %55, %60
  %62 = load ptr, ptr %2, align 8
  %63 = getelementptr inbounds i32, ptr %62, i64 3
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %9, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %61, %66
  store i32 %67, ptr %5, align 4
  %68 = load i32, ptr %5, align 4
  %69 = load i32, ptr %3, align 4
  %70 = sdiv i32 %68, %69
  store i32 %70, ptr %4, align 4
  %71 = load i32, ptr %5, align 4
  %72 = load i32, ptr %3, align 4
  %73 = load i32, ptr %4, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sub nsw i32 %71, %74
  store i32 %75, ptr %5, align 4
  %76 = load i32, ptr %4, align 4
  %77 = load ptr, ptr %2, align 8
  %78 = getelementptr inbounds i32, ptr %77, i64 0
  %79 = load i32, ptr %78, align 4
  %80 = load i32, ptr %11, align 4
  %81 = mul nsw i32 %79, %80
  %82 = add nsw i32 %76, %81
  %83 = load ptr, ptr %2, align 8
  %84 = getelementptr inbounds i32, ptr %83, i64 1
  %85 = load i32, ptr %84, align 4
  %86 = load i32, ptr %10, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %82, %87
  %89 = load ptr, ptr %2, align 8
  %90 = getelementptr inbounds i32, ptr %89, i64 2
  %91 = load i32, ptr %90, align 4
  %92 = load i32, ptr %9, align 4
  %93 = mul nsw i32 %91, %92
  %94 = add nsw i32 %88, %93
  %95 = load ptr, ptr %2, align 8
  %96 = getelementptr inbounds i32, ptr %95, i64 3
  %97 = load i32, ptr %96, align 4
  %98 = load i32, ptr %8, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %94, %99
  store i32 %100, ptr %4, align 4
  %101 = load i32, ptr %4, align 4
  %102 = load i32, ptr %3, align 4
  %103 = srem i32 %101, %102
  store i32 %103, ptr %4, align 4
  %104 = load i32, ptr %4, align 4
  %105 = load ptr, ptr %2, align 8
  %106 = getelementptr inbounds i32, ptr %105, i64 0
  store i32 %104, ptr %106, align 4
  %107 = load i32, ptr %5, align 4
  %108 = load ptr, ptr %2, align 8
  %109 = getelementptr inbounds i32, ptr %108, i64 1
  store i32 %107, ptr %109, align 4
  %110 = load i32, ptr %6, align 4
  %111 = load ptr, ptr %2, align 8
  %112 = getelementptr inbounds i32, ptr %111, i64 2
  store i32 %110, ptr %112, align 4
  %113 = load i32, ptr %7, align 4
  %114 = load ptr, ptr %2, align 8
  %115 = getelementptr inbounds i32, ptr %114, i64 3
  store i32 %113, ptr %115, align 4
  %116 = load double, ptr %13, align 8
  %117 = load i32, ptr %4, align 4
  %118 = sitofp i32 %117 to double
  %119 = load double, ptr %13, align 8
  %120 = load i32, ptr %5, align 4
  %121 = sitofp i32 %120 to double
  %122 = load double, ptr %13, align 8
  %123 = load i32, ptr %6, align 4
  %124 = sitofp i32 %123 to double
  %125 = load double, ptr %13, align 8
  %126 = load i32, ptr %7, align 4
  %127 = sitofp i32 %126 to double
  %128 = call double @llvm.fmuladd.f64(double %125, double %127, double %124)
  %129 = call double @llvm.fmuladd.f64(double %122, double %128, double %121)
  %130 = call double @llvm.fmuladd.f64(double %119, double %129, double %118)
  %131 = fmul double %116, %130
  store double %131, ptr %14, align 8
  %132 = load double, ptr %14, align 8
  ret double %132
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

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
