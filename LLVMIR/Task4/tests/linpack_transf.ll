; ModuleID = 'tests/linpack.ll'
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
  br i1 true, label %7, label %.split

.split:                                           ; preds = %0
  %5 = alloca i16, align 2
  store i16 47, ptr %5, align 2
  %6 = alloca i32, align 4
  store i32 13412, ptr %6, align 4
  br label %7

7:                                                ; preds = %0, %.split
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  br label %12

12:                                               ; preds = %7
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  br label %17

17:                                               ; preds = %12
  %18 = alloca double, align 8
  %19 = alloca ptr, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  br label %22

22:                                               ; preds = %17
  %23 = alloca ptr, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca [6 x double], align 16
  br label %27

27:                                               ; preds = %22
  %28 = alloca double, align 8
  %29 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  store double 5.600000e-02, ptr %9, align 8
  br label %30

30:                                               ; preds = %27
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %35

35:                                               ; preds = %30
  %36 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %39 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef 200)
  br label %40

40:                                               ; preds = %35
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef 201)
  store double 0x4154A67555555555, ptr %18, align 8
  %42 = call ptr @r8mat_gen(i32 noundef 201, i32 noundef 200)
  store ptr %42, ptr %2, align 8
  br label %43

43:                                               ; preds = %40
  %44 = call noalias ptr @malloc(i64 noundef 1600) #7
  store ptr %44, ptr %4, align 8
  %45 = call noalias ptr @malloc(i64 noundef 800) #7
  store ptr %45, ptr %14, align 8
  br label %46

46:                                               ; preds = %43
  %47 = call noalias ptr @malloc(i64 noundef 1600) #7
  store ptr %47, ptr %19, align 8
  %48 = call noalias ptr @malloc(i64 noundef 1600) #7
  store ptr %48, ptr %23, align 8
  br label %49

49:                                               ; preds = %46
  %50 = call noalias ptr @malloc(i64 noundef 1600) #7
  store ptr %50, ptr %29, align 8
  store double 0.000000e+00, ptr %3, align 8
  store i32 0, ptr %15, align 4
  br label %51

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %76, %51
  %53 = load i32, ptr %15, align 4
  %54 = icmp slt i32 %53, 200
  br i1 %54, label %55, label %79

55:                                               ; preds = %52
  store i32 0, ptr %11, align 4
  br label %56

56:                                               ; preds = %72, %55
  %57 = load i32, ptr %11, align 4
  %58 = icmp slt i32 %57, 200
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load double, ptr %3, align 8
  %61 = load ptr, ptr %2, align 8
  %62 = load i32, ptr %11, align 4
  %63 = load i32, ptr %15, align 4
  br label %64

64:                                               ; preds = %59
  %65 = mul nsw i32 %63, 201
  %66 = add nsw i32 %62, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, ptr %61, i64 %67
  br label %69

69:                                               ; preds = %64
  %70 = load double, ptr %68, align 8
  %71 = call double @r8_max(double noundef %60, double noundef %70)
  store double %71, ptr %3, align 8
  br label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %11, align 4
  br label %56, !llvm.loop !6

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %15, align 4
  br label %52, !llvm.loop !8

79:                                               ; preds = %52
  store i32 0, ptr %11, align 4
  br label %80

80:                                               ; preds = %89, %79
  %81 = load i32, ptr %11, align 4
  %82 = icmp slt i32 %81, 200
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load ptr, ptr %29, align 8
  %85 = load i32, ptr %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, ptr %84, i64 %86
  br label %88

88:                                               ; preds = %83
  store double 1.000000e+00, ptr %87, align 8
  br label %89

89:                                               ; preds = %88
  %90 = load i32, ptr %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %11, align 4
  br label %80, !llvm.loop !9

92:                                               ; preds = %80
  store i32 0, ptr %11, align 4
  br label %93

93:                                               ; preds = %139, %92
  %94 = load i32, ptr %11, align 4
  %95 = icmp slt i32 %94, 200
  br i1 %95, label %96, label %142

96:                                               ; preds = %93
  %97 = load ptr, ptr %4, align 8
  %98 = load i32, ptr %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, ptr %97, i64 %99
  br label %101

101:                                              ; preds = %96
  store double 0.000000e+00, ptr %100, align 8
  store i32 0, ptr %15, align 4
  br label %102

102:                                              ; preds = %135, %101
  %103 = load i32, ptr %15, align 4
  %104 = icmp slt i32 %103, 200
  br i1 %104, label %105, label %138

105:                                              ; preds = %102
  %106 = load ptr, ptr %4, align 8
  %107 = load i32, ptr %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, ptr %106, i64 %108
  br label %110

110:                                              ; preds = %105
  %111 = load double, ptr %109, align 8
  %112 = load ptr, ptr %2, align 8
  %113 = load i32, ptr %11, align 4
  %114 = load i32, ptr %15, align 4
  br label %115

115:                                              ; preds = %110
  %116 = mul nsw i32 %114, 201
  %117 = add nsw i32 %113, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, ptr %112, i64 %118
  br label %120

120:                                              ; preds = %115
  %121 = load double, ptr %119, align 8
  %122 = load ptr, ptr %29, align 8
  %123 = load i32, ptr %15, align 4
  %124 = sext i32 %123 to i64
  br label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds double, ptr %122, i64 %124
  %127 = load double, ptr %126, align 8
  %128 = call double @llvm.fmuladd.f64(double %121, double %127, double %111)
  %129 = load ptr, ptr %4, align 8
  br label %130

130:                                              ; preds = %125
  %131 = load i32, ptr %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds double, ptr %129, i64 %132
  store double %128, ptr %133, align 8
  br label %134

134:                                              ; preds = %130
  br label %135

135:                                              ; preds = %134
  %136 = load i32, ptr %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, ptr %15, align 4
  br label %102, !llvm.loop !10

138:                                              ; preds = %102
  br label %139

139:                                              ; preds = %138
  %140 = load i32, ptr %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr %11, align 4
  br label %93, !llvm.loop !11

142:                                              ; preds = %93
  %143 = call double @cpu_time()
  store double %143, ptr %24, align 8
  %144 = load ptr, ptr %2, align 8
  %145 = load ptr, ptr %14, align 8
  br label %146

146:                                              ; preds = %142
  %147 = call i32 @dgefa(ptr noundef %144, i32 noundef 201, i32 noundef 200, ptr noundef %145)
  store i32 %147, ptr %13, align 4
  %148 = load i32, ptr %13, align 4
  %149 = icmp ne i32 %148, 0
  br label %150

150:                                              ; preds = %146
  br i1 %149, label %151, label %157

151:                                              ; preds = %150
  %152 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %153 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %154 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %155 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %156

156:                                              ; preds = %151
  call void @exit(i32 noundef 1) #8
  unreachable

157:                                              ; preds = %150
  %158 = call double @cpu_time()
  store double %158, ptr %25, align 8
  %159 = load double, ptr %25, align 8
  %160 = load double, ptr %24, align 8
  br label %161

161:                                              ; preds = %157
  %162 = fsub double %159, %160
  %163 = getelementptr inbounds [6 x double], ptr %26, i64 0, i64 0
  store double %162, ptr %163, align 16
  %164 = call double @cpu_time()
  br label %165

165:                                              ; preds = %161
  store double %164, ptr %24, align 8
  store i32 0, ptr %16, align 4
  %166 = load ptr, ptr %2, align 8
  %167 = load ptr, ptr %14, align 8
  br label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr %4, align 8
  %170 = load i32, ptr %16, align 4
  call void @dgesl(ptr noundef %166, i32 noundef 201, i32 noundef 200, ptr noundef %167, ptr noundef %169, i32 noundef %170)
  %171 = call double @cpu_time()
  br label %172

172:                                              ; preds = %168
  store double %171, ptr %25, align 8
  %173 = load double, ptr %25, align 8
  %174 = load double, ptr %24, align 8
  %175 = fsub double %173, %174
  br label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds [6 x double], ptr %26, i64 0, i64 1
  store double %175, ptr %177, align 8
  %178 = getelementptr inbounds [6 x double], ptr %26, i64 0, i64 0
  %179 = load double, ptr %178, align 16
  br label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds [6 x double], ptr %26, i64 0, i64 1
  %182 = load double, ptr %181, align 8
  %183 = fadd double %179, %182
  store double %183, ptr %28, align 8
  br label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %185) #9
  %186 = call ptr @r8mat_gen(i32 noundef 201, i32 noundef 200)
  store ptr %186, ptr %2, align 8
  br label %187

187:                                              ; preds = %184
  store i32 0, ptr %11, align 4
  br label %188

188:                                              ; preds = %197, %187
  %189 = load i32, ptr %11, align 4
  %190 = icmp slt i32 %189, 200
  br i1 %190, label %191, label %200

191:                                              ; preds = %188
  %192 = load ptr, ptr %29, align 8
  %193 = load i32, ptr %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds double, ptr %192, i64 %194
  br label %196

196:                                              ; preds = %191
  store double 1.000000e+00, ptr %195, align 8
  br label %197

197:                                              ; preds = %196
  %198 = load i32, ptr %11, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, ptr %11, align 4
  br label %188, !llvm.loop !12

200:                                              ; preds = %188
  store i32 0, ptr %11, align 4
  br label %201

201:                                              ; preds = %247, %200
  %202 = load i32, ptr %11, align 4
  %203 = icmp slt i32 %202, 200
  br i1 %203, label %204, label %250

204:                                              ; preds = %201
  %205 = load ptr, ptr %23, align 8
  %206 = load i32, ptr %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds double, ptr %205, i64 %207
  br label %209

209:                                              ; preds = %204
  store double 0.000000e+00, ptr %208, align 8
  store i32 0, ptr %15, align 4
  br label %210

210:                                              ; preds = %243, %209
  %211 = load i32, ptr %15, align 4
  %212 = icmp slt i32 %211, 200
  br i1 %212, label %213, label %246

213:                                              ; preds = %210
  %214 = load ptr, ptr %23, align 8
  %215 = load i32, ptr %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds double, ptr %214, i64 %216
  br label %218

218:                                              ; preds = %213
  %219 = load double, ptr %217, align 8
  %220 = load ptr, ptr %2, align 8
  %221 = load i32, ptr %11, align 4
  %222 = load i32, ptr %15, align 4
  br label %223

223:                                              ; preds = %218
  %224 = mul nsw i32 %222, 201
  %225 = add nsw i32 %221, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds double, ptr %220, i64 %226
  br label %228

228:                                              ; preds = %223
  %229 = load double, ptr %227, align 8
  %230 = load ptr, ptr %29, align 8
  %231 = load i32, ptr %15, align 4
  %232 = sext i32 %231 to i64
  br label %233

233:                                              ; preds = %228
  %234 = getelementptr inbounds double, ptr %230, i64 %232
  %235 = load double, ptr %234, align 8
  %236 = call double @llvm.fmuladd.f64(double %229, double %235, double %219)
  %237 = load ptr, ptr %23, align 8
  br label %238

238:                                              ; preds = %233
  %239 = load i32, ptr %11, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds double, ptr %237, i64 %240
  store double %236, ptr %241, align 8
  br label %242

242:                                              ; preds = %238
  br label %243

243:                                              ; preds = %242
  %244 = load i32, ptr %15, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, ptr %15, align 4
  br label %210, !llvm.loop !13

246:                                              ; preds = %210
  br label %247

247:                                              ; preds = %246
  %248 = load i32, ptr %11, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, ptr %11, align 4
  br label %201, !llvm.loop !14

250:                                              ; preds = %201
  store i32 0, ptr %11, align 4
  br label %251

251:                                              ; preds = %305, %250
  %252 = load i32, ptr %11, align 4
  %253 = icmp slt i32 %252, 200
  br i1 %253, label %254, label %308

254:                                              ; preds = %251
  %255 = load ptr, ptr %23, align 8
  %256 = load i32, ptr %11, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds double, ptr %255, i64 %257
  br label %259

259:                                              ; preds = %254
  %260 = load double, ptr %258, align 8
  %261 = fneg double %260
  %262 = load ptr, ptr %19, align 8
  %263 = load i32, ptr %11, align 4
  br label %264

264:                                              ; preds = %259
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds double, ptr %262, i64 %265
  store double %261, ptr %266, align 8
  store i32 0, ptr %15, align 4
  br label %267

267:                                              ; preds = %264
  br label %268

268:                                              ; preds = %301, %267
  %269 = load i32, ptr %15, align 4
  %270 = icmp slt i32 %269, 200
  br i1 %270, label %271, label %304

271:                                              ; preds = %268
  %272 = load ptr, ptr %19, align 8
  %273 = load i32, ptr %11, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds double, ptr %272, i64 %274
  br label %276

276:                                              ; preds = %271
  %277 = load double, ptr %275, align 8
  %278 = load ptr, ptr %2, align 8
  %279 = load i32, ptr %11, align 4
  %280 = load i32, ptr %15, align 4
  br label %281

281:                                              ; preds = %276
  %282 = mul nsw i32 %280, 201
  %283 = add nsw i32 %279, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds double, ptr %278, i64 %284
  br label %286

286:                                              ; preds = %281
  %287 = load double, ptr %285, align 8
  %288 = load ptr, ptr %4, align 8
  %289 = load i32, ptr %15, align 4
  %290 = sext i32 %289 to i64
  br label %291

291:                                              ; preds = %286
  %292 = getelementptr inbounds double, ptr %288, i64 %290
  %293 = load double, ptr %292, align 8
  %294 = call double @llvm.fmuladd.f64(double %287, double %293, double %277)
  %295 = load ptr, ptr %19, align 8
  br label %296

296:                                              ; preds = %291
  %297 = load i32, ptr %11, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds double, ptr %295, i64 %298
  store double %294, ptr %299, align 8
  br label %300

300:                                              ; preds = %296
  br label %301

301:                                              ; preds = %300
  %302 = load i32, ptr %15, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, ptr %15, align 4
  br label %268, !llvm.loop !15

304:                                              ; preds = %268
  br label %305

305:                                              ; preds = %304
  %306 = load i32, ptr %11, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, ptr %11, align 4
  br label %251, !llvm.loop !16

308:                                              ; preds = %251
  store double 0.000000e+00, ptr %20, align 8
  store i32 0, ptr %11, align 4
  br label %309

309:                                              ; preds = %323, %308
  %310 = load i32, ptr %11, align 4
  %311 = icmp slt i32 %310, 200
  br i1 %311, label %312, label %326

312:                                              ; preds = %309
  %313 = load double, ptr %20, align 8
  %314 = load ptr, ptr %19, align 8
  %315 = load i32, ptr %11, align 4
  %316 = sext i32 %315 to i64
  br label %317

317:                                              ; preds = %312
  %318 = getelementptr inbounds double, ptr %314, i64 %316
  %319 = load double, ptr %318, align 8
  %320 = call double @r8_abs(double noundef %319)
  %321 = call double @r8_max(double noundef %313, double noundef %320)
  br label %322

322:                                              ; preds = %317
  store double %321, ptr %20, align 8
  br label %323

323:                                              ; preds = %322
  %324 = load i32, ptr %11, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, ptr %11, align 4
  br label %309, !llvm.loop !17

326:                                              ; preds = %309
  store double 0.000000e+00, ptr %8, align 8
  store i32 0, ptr %11, align 4
  br label %327

327:                                              ; preds = %341, %326
  %328 = load i32, ptr %11, align 4
  %329 = icmp slt i32 %328, 200
  br i1 %329, label %330, label %344

330:                                              ; preds = %327
  %331 = load double, ptr %8, align 8
  %332 = load ptr, ptr %4, align 8
  %333 = load i32, ptr %11, align 4
  %334 = sext i32 %333 to i64
  br label %335

335:                                              ; preds = %330
  %336 = getelementptr inbounds double, ptr %332, i64 %334
  %337 = load double, ptr %336, align 8
  %338 = call double @r8_abs(double noundef %337)
  %339 = call double @r8_max(double noundef %331, double noundef %338)
  br label %340

340:                                              ; preds = %335
  store double %339, ptr %8, align 8
  br label %341

341:                                              ; preds = %340
  %342 = load i32, ptr %11, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, ptr %11, align 4
  br label %327, !llvm.loop !18

344:                                              ; preds = %327
  %345 = call double @r8_epsilon()
  store double %345, ptr %10, align 8
  %346 = load double, ptr %20, align 8
  %347 = fdiv double %346, 2.000000e+02
  br label %348

348:                                              ; preds = %344
  %349 = load double, ptr %3, align 8
  %350 = fdiv double %347, %349
  %351 = load double, ptr %8, align 8
  %352 = fdiv double %350, %351
  br label %353

353:                                              ; preds = %348
  %354 = load double, ptr %10, align 8
  %355 = fdiv double %352, %354
  store double %355, ptr %21, align 8
  %356 = load double, ptr %28, align 8
  br label %357

357:                                              ; preds = %353
  %358 = getelementptr inbounds [6 x double], ptr %26, i64 0, i64 2
  store double %356, ptr %358, align 16
  %359 = load double, ptr %28, align 8
  %360 = fcmp olt double 0.000000e+00, %359
  br label %361

361:                                              ; preds = %357
  br i1 %360, label %362, label %369

362:                                              ; preds = %361
  %363 = load double, ptr %18, align 8
  %364 = load double, ptr %28, align 8
  %365 = fmul double 1.000000e+06, %364
  %366 = fdiv double %363, %365
  br label %367

367:                                              ; preds = %362
  %368 = getelementptr inbounds [6 x double], ptr %26, i64 0, i64 3
  store double %366, ptr %368, align 8
  br label %371

369:                                              ; preds = %361
  %370 = getelementptr inbounds [6 x double], ptr %26, i64 0, i64 3
  store double -1.000000e+00, ptr %370, align 8
  br label %371

371:                                              ; preds = %369, %367
  %372 = getelementptr inbounds [6 x double], ptr %26, i64 0, i64 3
  %373 = load double, ptr %372, align 8
  %374 = fdiv double 2.000000e+00, %373
  %375 = getelementptr inbounds [6 x double], ptr %26, i64 0, i64 4
  br label %376

376:                                              ; preds = %371
  store double %374, ptr %375, align 16
  %377 = load double, ptr %28, align 8
  %378 = load double, ptr %9, align 8
  %379 = fdiv double %377, %378
  br label %380

380:                                              ; preds = %376
  %381 = getelementptr inbounds [6 x double], ptr %26, i64 0, i64 5
  store double %379, ptr %381, align 8
  %382 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %383 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %384

384:                                              ; preds = %380
  %385 = load double, ptr %21, align 8
  %386 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, double noundef %385)
  %387 = load double, ptr %20, align 8
  %388 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %387)
  br label %389

389:                                              ; preds = %384
  %390 = load double, ptr %10, align 8
  %391 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %390)
  %392 = load ptr, ptr %4, align 8
  %393 = getelementptr inbounds double, ptr %392, i64 0
  br label %394

394:                                              ; preds = %389
  %395 = load double, ptr %393, align 8
  %396 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %395)
  %397 = load ptr, ptr %4, align 8
  %398 = getelementptr inbounds double, ptr %397, i64 199
  br label %399

399:                                              ; preds = %394
  %400 = load double, ptr %398, align 8
  %401 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %400)
  %402 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %403 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  br label %404

404:                                              ; preds = %399
  %405 = getelementptr inbounds [6 x double], ptr %26, i64 0, i64 0
  %406 = load double, ptr %405, align 16
  %407 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, double noundef %406)
  %408 = getelementptr inbounds [6 x double], ptr %26, i64 0, i64 1
  br label %409

409:                                              ; preds = %404
  %410 = load double, ptr %408, align 8
  %411 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, double noundef %410)
  %412 = getelementptr inbounds [6 x double], ptr %26, i64 0, i64 2
  %413 = load double, ptr %412, align 16
  br label %414

414:                                              ; preds = %409
  %415 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, double noundef %413)
  %416 = getelementptr inbounds [6 x double], ptr %26, i64 0, i64 3
  %417 = load double, ptr %416, align 8
  %418 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, double noundef %417)
  br label %419

419:                                              ; preds = %414
  %420 = getelementptr inbounds [6 x double], ptr %26, i64 0, i64 4
  %421 = load double, ptr %420, align 16
  %422 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, double noundef %421)
  %423 = getelementptr inbounds [6 x double], ptr %26, i64 0, i64 5
  br label %424

424:                                              ; preds = %419
  %425 = load double, ptr %423, align 8
  %426 = call i32 (ptr, ...) @printf(ptr noundef @.str.21, double noundef %425)
  %427 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %427) #9
  br label %428

428:                                              ; preds = %424
  %429 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %429) #9
  %430 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %430) #9
  br label %431

431:                                              ; preds = %428
  %432 = load ptr, ptr %19, align 8
  call void @free(ptr noundef %432) #9
  %433 = load ptr, ptr %23, align 8
  call void @free(ptr noundef %433) #9
  br label %434

434:                                              ; preds = %431
  %435 = load ptr, ptr %29, align 8
  call void @free(ptr noundef %435) #9
  %436 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %437 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %438

438:                                              ; preds = %434
  %439 = call i32 (ptr, ...) @printf(ptr noundef @.str.22)
  %440 = call i32 (ptr, ...) @printf(ptr noundef @.str)
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
  br i1 true, label %9, label %.split

.split:                                           ; preds = %2
  %7 = alloca i16, align 2
  store i16 47, ptr %7, align 2
  %8 = alloca i32, align 4
  store i32 13412, ptr %8, align 4
  br label %9

9:                                                ; preds = %2, %.split
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  br label %12

12:                                               ; preds = %9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %10, ptr align 16 @__const.r8mat_gen.init, i64 16, i1 false)
  %13 = load i32, ptr %3, align 4
  %14 = load i32, ptr %4, align 4
  %15 = mul nsw i32 %13, %14
  br label %16

16:                                               ; preds = %12
  %17 = sext i32 %15 to i64
  %18 = mul i64 %17, 8
  %19 = call noalias ptr @malloc(i64 noundef %18) #7
  store ptr %19, ptr %5, align 8
  br label %20

20:                                               ; preds = %16
  store i32 1, ptr %11, align 4
  br label %21

21:                                               ; preds = %51, %20
  %22 = load i32, ptr %11, align 4
  %23 = load i32, ptr %4, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  store i32 1, ptr %6, align 4
  br label %26

26:                                               ; preds = %47, %25
  %27 = load i32, ptr %6, align 4
  %28 = load i32, ptr %4, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 0
  %32 = call double @r8_random(ptr noundef %31)
  %33 = fsub double %32, 5.000000e-01
  %34 = load ptr, ptr %5, align 8
  br label %35

35:                                               ; preds = %30
  %36 = load i32, ptr %6, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, ptr %11, align 4
  %39 = sub nsw i32 %38, 1
  br label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %3, align 4
  %42 = mul nsw i32 %39, %41
  %43 = add nsw i32 %37, %42
  %44 = sext i32 %43 to i64
  br label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds double, ptr %34, i64 %44
  store double %33, ptr %46, align 8
  br label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %6, align 4
  br label %26, !llvm.loop !19

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %11, align 4
  br label %21, !llvm.loop !20

54:                                               ; preds = %21
  %55 = load ptr, ptr %5, align 8
  ret ptr %55
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @r8_max(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, ptr %3, align 8
  br i1 true, label %8, label %.split

.split:                                           ; preds = %2
  %6 = alloca i16, align 2
  store i16 47, ptr %6, align 2
  %7 = alloca i32, align 4
  store i32 13412, ptr %7, align 4
  br label %8

8:                                                ; preds = %2, %.split
  store double %1, ptr %4, align 8
  %9 = load double, ptr %4, align 8
  %10 = load double, ptr %3, align 8
  %11 = fcmp olt double %9, %10
  br label %12

12:                                               ; preds = %8
  br i1 %11, label %13, label %15

13:                                               ; preds = %12
  %14 = load double, ptr %3, align 8
  store double %14, ptr %5, align 8
  br label %17

15:                                               ; preds = %12
  %16 = load double, ptr %4, align 8
  store double %16, ptr %5, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = load double, ptr %5, align 8
  ret double %18
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dgefa(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  br i1 true, label %11, label %.split

.split:                                           ; preds = %4
  %9 = alloca i16, align 2
  store i16 47, ptr %9, align 2
  %10 = alloca i32, align 4
  store i32 13412, ptr %10, align 4
  br label %11

11:                                               ; preds = %4, %.split
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  br label %16

16:                                               ; preds = %11
  %17 = alloca double, align 8
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  br label %18

18:                                               ; preds = %16
  store ptr %3, ptr %8, align 8
  store i32 0, ptr %12, align 4
  store i32 1, ptr %14, align 4
  br label %19

19:                                               ; preds = %267, %18
  %20 = load i32, ptr %14, align 4
  %21 = load i32, ptr %7, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp sle i32 %20, %22
  br label %24

24:                                               ; preds = %19
  br i1 %23, label %25, label %270

25:                                               ; preds = %24
  %26 = load i32, ptr %7, align 4
  %27 = load i32, ptr %14, align 4
  %28 = sub nsw i32 %26, %27
  %29 = add nsw i32 %28, 1
  br label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %5, align 8
  %32 = load i32, ptr %14, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  br label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds double, ptr %31, i64 %34
  %37 = load i32, ptr %14, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, ptr %6, align 4
  br label %40

40:                                               ; preds = %35
  %41 = mul nsw i32 %38, %39
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, ptr %36, i64 %42
  %44 = call i32 @idamax(i32 noundef %29, ptr noundef %43, i32 noundef 1)
  br label %45

45:                                               ; preds = %40
  %46 = load i32, ptr %14, align 4
  %47 = add nsw i32 %44, %46
  %48 = sub nsw i32 %47, 1
  store i32 %48, ptr %15, align 4
  br label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %15, align 4
  %51 = load ptr, ptr %8, align 8
  %52 = load i32, ptr %14, align 4
  %53 = sub nsw i32 %52, 1
  br label %54

54:                                               ; preds = %49
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, ptr %51, i64 %55
  store i32 %50, ptr %56, align 4
  %57 = load ptr, ptr %5, align 8
  br label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %15, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, ptr %14, align 4
  %62 = sub nsw i32 %61, 1
  br label %63

63:                                               ; preds = %58
  %64 = load i32, ptr %6, align 4
  %65 = mul nsw i32 %62, %64
  %66 = add nsw i32 %60, %65
  %67 = sext i32 %66 to i64
  br label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds double, ptr %57, i64 %67
  %70 = load double, ptr %69, align 8
  %71 = fcmp oeq double %70, 0.000000e+00
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, ptr %14, align 4
  store i32 %73, ptr %12, align 4
  br label %267

74:                                               ; preds = %68
  %75 = load i32, ptr %15, align 4
  %76 = load i32, ptr %14, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %133

78:                                               ; preds = %74
  %79 = load ptr, ptr %5, align 8
  %80 = load i32, ptr %15, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load i32, ptr %14, align 4
  br label %83

83:                                               ; preds = %78
  %84 = sub nsw i32 %82, 1
  %85 = load i32, ptr %6, align 4
  %86 = mul nsw i32 %84, %85
  %87 = add nsw i32 %81, %86
  br label %88

88:                                               ; preds = %83
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds double, ptr %79, i64 %89
  %91 = load double, ptr %90, align 8
  store double %91, ptr %17, align 8
  br label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %5, align 8
  %94 = load i32, ptr %14, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load i32, ptr %14, align 4
  br label %97

97:                                               ; preds = %92
  %98 = sub nsw i32 %96, 1
  %99 = load i32, ptr %6, align 4
  %100 = mul nsw i32 %98, %99
  %101 = add nsw i32 %95, %100
  br label %102

102:                                              ; preds = %97
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds double, ptr %93, i64 %103
  %105 = load double, ptr %104, align 8
  %106 = load ptr, ptr %5, align 8
  br label %107

107:                                              ; preds = %102
  %108 = load i32, ptr %15, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load i32, ptr %14, align 4
  %111 = sub nsw i32 %110, 1
  br label %112

112:                                              ; preds = %107
  %113 = load i32, ptr %6, align 4
  %114 = mul nsw i32 %111, %113
  %115 = add nsw i32 %109, %114
  %116 = sext i32 %115 to i64
  br label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds double, ptr %106, i64 %116
  store double %105, ptr %118, align 8
  %119 = load double, ptr %17, align 8
  %120 = load ptr, ptr %5, align 8
  br label %121

121:                                              ; preds = %117
  %122 = load i32, ptr %14, align 4
  %123 = sub nsw i32 %122, 1
  %124 = load i32, ptr %14, align 4
  %125 = sub nsw i32 %124, 1
  br label %126

126:                                              ; preds = %121
  %127 = load i32, ptr %6, align 4
  %128 = mul nsw i32 %125, %127
  %129 = add nsw i32 %123, %128
  %130 = sext i32 %129 to i64
  br label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds double, ptr %120, i64 %130
  store double %119, ptr %132, align 8
  br label %133

133:                                              ; preds = %131, %74
  %134 = load ptr, ptr %5, align 8
  %135 = load i32, ptr %14, align 4
  %136 = sub nsw i32 %135, 1
  %137 = load i32, ptr %14, align 4
  br label %138

138:                                              ; preds = %133
  %139 = sub nsw i32 %137, 1
  %140 = load i32, ptr %6, align 4
  %141 = mul nsw i32 %139, %140
  %142 = add nsw i32 %136, %141
  br label %143

143:                                              ; preds = %138
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds double, ptr %134, i64 %144
  %146 = load double, ptr %145, align 8
  %147 = fdiv double -1.000000e+00, %146
  br label %148

148:                                              ; preds = %143
  store double %147, ptr %17, align 8
  %149 = load i32, ptr %7, align 4
  %150 = load i32, ptr %14, align 4
  %151 = sub nsw i32 %149, %150
  br label %152

152:                                              ; preds = %148
  %153 = load double, ptr %17, align 8
  %154 = load ptr, ptr %5, align 8
  %155 = load i32, ptr %14, align 4
  %156 = sext i32 %155 to i64
  br label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds double, ptr %154, i64 %156
  %159 = load i32, ptr %14, align 4
  %160 = sub nsw i32 %159, 1
  %161 = load i32, ptr %6, align 4
  br label %162

162:                                              ; preds = %157
  %163 = mul nsw i32 %160, %161
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, ptr %158, i64 %164
  call void @dscal(i32 noundef %151, double noundef %153, ptr noundef %165, i32 noundef 1)
  br label %166

166:                                              ; preds = %162
  %167 = load i32, ptr %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr %13, align 4
  br label %169

169:                                              ; preds = %263, %166
  %170 = load i32, ptr %13, align 4
  %171 = load i32, ptr %7, align 4
  %172 = icmp sle i32 %170, %171
  br i1 %172, label %173, label %266

173:                                              ; preds = %169
  %174 = load ptr, ptr %5, align 8
  %175 = load i32, ptr %15, align 4
  %176 = sub nsw i32 %175, 1
  %177 = load i32, ptr %13, align 4
  br label %178

178:                                              ; preds = %173
  %179 = sub nsw i32 %177, 1
  %180 = load i32, ptr %6, align 4
  %181 = mul nsw i32 %179, %180
  %182 = add nsw i32 %176, %181
  br label %183

183:                                              ; preds = %178
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds double, ptr %174, i64 %184
  %186 = load double, ptr %185, align 8
  store double %186, ptr %17, align 8
  br label %187

187:                                              ; preds = %183
  %188 = load i32, ptr %15, align 4
  %189 = load i32, ptr %14, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %232

191:                                              ; preds = %187
  %192 = load ptr, ptr %5, align 8
  %193 = load i32, ptr %14, align 4
  %194 = sub nsw i32 %193, 1
  %195 = load i32, ptr %13, align 4
  br label %196

196:                                              ; preds = %191
  %197 = sub nsw i32 %195, 1
  %198 = load i32, ptr %6, align 4
  %199 = mul nsw i32 %197, %198
  %200 = add nsw i32 %194, %199
  br label %201

201:                                              ; preds = %196
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds double, ptr %192, i64 %202
  %204 = load double, ptr %203, align 8
  %205 = load ptr, ptr %5, align 8
  br label %206

206:                                              ; preds = %201
  %207 = load i32, ptr %15, align 4
  %208 = sub nsw i32 %207, 1
  %209 = load i32, ptr %13, align 4
  %210 = sub nsw i32 %209, 1
  br label %211

211:                                              ; preds = %206
  %212 = load i32, ptr %6, align 4
  %213 = mul nsw i32 %210, %212
  %214 = add nsw i32 %208, %213
  %215 = sext i32 %214 to i64
  br label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds double, ptr %205, i64 %215
  store double %204, ptr %217, align 8
  %218 = load double, ptr %17, align 8
  %219 = load ptr, ptr %5, align 8
  br label %220

220:                                              ; preds = %216
  %221 = load i32, ptr %14, align 4
  %222 = sub nsw i32 %221, 1
  %223 = load i32, ptr %13, align 4
  %224 = sub nsw i32 %223, 1
  br label %225

225:                                              ; preds = %220
  %226 = load i32, ptr %6, align 4
  %227 = mul nsw i32 %224, %226
  %228 = add nsw i32 %222, %227
  %229 = sext i32 %228 to i64
  br label %230

230:                                              ; preds = %225
  %231 = getelementptr inbounds double, ptr %219, i64 %229
  store double %218, ptr %231, align 8
  br label %232

232:                                              ; preds = %230, %187
  %233 = load i32, ptr %7, align 4
  %234 = load i32, ptr %14, align 4
  %235 = sub nsw i32 %233, %234
  %236 = load double, ptr %17, align 8
  br label %237

237:                                              ; preds = %232
  %238 = load ptr, ptr %5, align 8
  %239 = load i32, ptr %14, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds double, ptr %238, i64 %240
  br label %242

242:                                              ; preds = %237
  %243 = load i32, ptr %14, align 4
  %244 = sub nsw i32 %243, 1
  %245 = load i32, ptr %6, align 4
  %246 = mul nsw i32 %244, %245
  br label %247

247:                                              ; preds = %242
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds double, ptr %241, i64 %248
  %250 = load ptr, ptr %5, align 8
  %251 = load i32, ptr %14, align 4
  br label %252

252:                                              ; preds = %247
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds double, ptr %250, i64 %253
  %255 = load i32, ptr %13, align 4
  %256 = sub nsw i32 %255, 1
  br label %257

257:                                              ; preds = %252
  %258 = load i32, ptr %6, align 4
  %259 = mul nsw i32 %256, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds double, ptr %254, i64 %260
  br label %262

262:                                              ; preds = %257
  call void @daxpy(i32 noundef %235, double noundef %236, ptr noundef %249, i32 noundef 1, ptr noundef %261, i32 noundef 1)
  br label %263

263:                                              ; preds = %262
  %264 = load i32, ptr %13, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, ptr %13, align 4
  br label %169, !llvm.loop !21

266:                                              ; preds = %169
  br label %267

267:                                              ; preds = %266, %72
  %268 = load i32, ptr %14, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, ptr %14, align 4
  br label %19, !llvm.loop !22

270:                                              ; preds = %24
  %271 = load i32, ptr %7, align 4
  %272 = load ptr, ptr %8, align 8
  %273 = load i32, ptr %7, align 4
  %274 = sub nsw i32 %273, 1
  br label %275

275:                                              ; preds = %270
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i32, ptr %272, i64 %276
  store i32 %271, ptr %277, align 4
  %278 = load ptr, ptr %5, align 8
  br label %279

279:                                              ; preds = %275
  %280 = load i32, ptr %7, align 4
  %281 = sub nsw i32 %280, 1
  %282 = load i32, ptr %7, align 4
  %283 = sub nsw i32 %282, 1
  br label %284

284:                                              ; preds = %279
  %285 = load i32, ptr %6, align 4
  %286 = mul nsw i32 %283, %285
  %287 = add nsw i32 %281, %286
  %288 = sext i32 %287 to i64
  br label %289

289:                                              ; preds = %284
  %290 = getelementptr inbounds double, ptr %278, i64 %288
  %291 = load double, ptr %290, align 8
  %292 = fcmp oeq double %291, 0.000000e+00
  br i1 %292, label %293, label %295

293:                                              ; preds = %289
  %294 = load i32, ptr %7, align 4
  store i32 %294, ptr %12, align 4
  br label %295

295:                                              ; preds = %293, %289
  %296 = load i32, ptr %12, align 4
  ret i32 %296
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dgesl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  br i1 true, label %13, label %.split

.split:                                           ; preds = %6
  %11 = alloca i16, align 2
  store i16 47, ptr %11, align 2
  %12 = alloca i32, align 4
  store i32 13412, ptr %12, align 4
  br label %13

13:                                               ; preds = %6, %.split
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  br label %18

18:                                               ; preds = %13
  %19 = alloca double, align 8
  store ptr %0, ptr %7, align 8
  store i32 %1, ptr %8, align 4
  store i32 %2, ptr %9, align 4
  br label %20

20:                                               ; preds = %18
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %14, align 8
  store i32 %5, ptr %15, align 4
  %21 = load i32, ptr %15, align 4
  br label %22

22:                                               ; preds = %20
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %162

24:                                               ; preds = %22
  store i32 1, ptr %16, align 4
  br label %25

25:                                               ; preds = %96, %24
  %26 = load i32, ptr %16, align 4
  %27 = load i32, ptr %9, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp sle i32 %26, %28
  br label %30

30:                                               ; preds = %25
  br i1 %29, label %31, label %99

31:                                               ; preds = %30
  %32 = load ptr, ptr %10, align 8
  %33 = load i32, ptr %16, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  br label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds i32, ptr %32, i64 %35
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %17, align 4
  %39 = load ptr, ptr %14, align 8
  br label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %17, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, ptr %39, i64 %43
  br label %45

45:                                               ; preds = %40
  %46 = load double, ptr %44, align 8
  store double %46, ptr %19, align 8
  %47 = load i32, ptr %17, align 4
  %48 = load i32, ptr %16, align 4
  br label %49

49:                                               ; preds = %45
  %50 = icmp ne i32 %47, %48
  br i1 %50, label %51, label %73

51:                                               ; preds = %49
  %52 = load ptr, ptr %14, align 8
  %53 = load i32, ptr %16, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  br label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds double, ptr %52, i64 %55
  %58 = load double, ptr %57, align 8
  %59 = load ptr, ptr %14, align 8
  %60 = load i32, ptr %17, align 4
  br label %61

61:                                               ; preds = %56
  %62 = sub nsw i32 %60, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, ptr %59, i64 %63
  store double %58, ptr %64, align 8
  br label %65

65:                                               ; preds = %61
  %66 = load double, ptr %19, align 8
  %67 = load ptr, ptr %14, align 8
  %68 = load i32, ptr %16, align 4
  %69 = sub nsw i32 %68, 1
  br label %70

70:                                               ; preds = %65
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds double, ptr %67, i64 %71
  store double %66, ptr %72, align 8
  br label %73

73:                                               ; preds = %70, %49
  %74 = load i32, ptr %9, align 4
  %75 = load i32, ptr %16, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load double, ptr %19, align 8
  br label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr %7, align 8
  %80 = load i32, ptr %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, ptr %79, i64 %81
  br label %83

83:                                               ; preds = %78
  %84 = load i32, ptr %16, align 4
  %85 = sub nsw i32 %84, 1
  %86 = load i32, ptr %8, align 4
  %87 = mul nsw i32 %85, %86
  br label %88

88:                                               ; preds = %83
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds double, ptr %82, i64 %89
  %91 = load ptr, ptr %14, align 8
  %92 = load i32, ptr %16, align 4
  br label %93

93:                                               ; preds = %88
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds double, ptr %91, i64 %94
  call void @daxpy(i32 noundef %76, double noundef %77, ptr noundef %90, i32 noundef 1, ptr noundef %95, i32 noundef 1)
  br label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr %16, align 4
  br label %25, !llvm.loop !23

99:                                               ; preds = %30
  %100 = load i32, ptr %9, align 4
  store i32 %100, ptr %16, align 4
  br label %101

101:                                              ; preds = %158, %99
  %102 = load i32, ptr %16, align 4
  %103 = icmp sle i32 1, %102
  br i1 %103, label %104, label %161

104:                                              ; preds = %101
  %105 = load ptr, ptr %14, align 8
  %106 = load i32, ptr %16, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  br label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds double, ptr %105, i64 %108
  %111 = load double, ptr %110, align 8
  %112 = load ptr, ptr %7, align 8
  %113 = load i32, ptr %16, align 4
  br label %114

114:                                              ; preds = %109
  %115 = sub nsw i32 %113, 1
  %116 = load i32, ptr %16, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load i32, ptr %8, align 4
  br label %119

119:                                              ; preds = %114
  %120 = mul nsw i32 %117, %118
  %121 = add nsw i32 %115, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, ptr %112, i64 %122
  br label %124

124:                                              ; preds = %119
  %125 = load double, ptr %123, align 8
  %126 = fdiv double %111, %125
  %127 = load ptr, ptr %14, align 8
  %128 = load i32, ptr %16, align 4
  br label %129

129:                                              ; preds = %124
  %130 = sub nsw i32 %128, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, ptr %127, i64 %131
  store double %126, ptr %132, align 8
  br label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr %14, align 8
  %135 = load i32, ptr %16, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  br label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds double, ptr %134, i64 %137
  %140 = load double, ptr %139, align 8
  %141 = fneg double %140
  store double %141, ptr %19, align 8
  br label %142

142:                                              ; preds = %138
  %143 = load i32, ptr %16, align 4
  %144 = sub nsw i32 %143, 1
  %145 = load double, ptr %19, align 8
  %146 = load ptr, ptr %7, align 8
  br label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds double, ptr %146, i64 0
  %149 = load i32, ptr %16, align 4
  %150 = sub nsw i32 %149, 1
  %151 = load i32, ptr %8, align 4
  br label %152

152:                                              ; preds = %147
  %153 = mul nsw i32 %150, %151
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds double, ptr %148, i64 %154
  %156 = load ptr, ptr %14, align 8
  br label %157

157:                                              ; preds = %152
  call void @daxpy(i32 noundef %144, double noundef %145, ptr noundef %155, i32 noundef 1, ptr noundef %156, i32 noundef 1)
  br label %158

158:                                              ; preds = %157
  %159 = load i32, ptr %16, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, ptr %16, align 4
  br label %101, !llvm.loop !24

161:                                              ; preds = %101
  br label %308

162:                                              ; preds = %22
  store i32 1, ptr %16, align 4
  br label %163

163:                                              ; preds = %214, %162
  %164 = load i32, ptr %16, align 4
  %165 = load i32, ptr %9, align 4
  %166 = icmp sle i32 %164, %165
  br i1 %166, label %167, label %217

167:                                              ; preds = %163
  %168 = load i32, ptr %16, align 4
  %169 = sub nsw i32 %168, 1
  %170 = load ptr, ptr %7, align 8
  %171 = getelementptr inbounds double, ptr %170, i64 0
  br label %172

172:                                              ; preds = %167
  %173 = load i32, ptr %16, align 4
  %174 = sub nsw i32 %173, 1
  %175 = load i32, ptr %8, align 4
  %176 = mul nsw i32 %174, %175
  br label %177

177:                                              ; preds = %172
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds double, ptr %171, i64 %178
  %180 = load ptr, ptr %14, align 8
  %181 = call double @ddot(i32 noundef %169, ptr noundef %179, i32 noundef 1, ptr noundef %180, i32 noundef 1)
  br label %182

182:                                              ; preds = %177
  store double %181, ptr %19, align 8
  %183 = load ptr, ptr %14, align 8
  %184 = load i32, ptr %16, align 4
  %185 = sub nsw i32 %184, 1
  br label %186

186:                                              ; preds = %182
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds double, ptr %183, i64 %187
  %189 = load double, ptr %188, align 8
  %190 = load double, ptr %19, align 8
  br label %191

191:                                              ; preds = %186
  %192 = fsub double %189, %190
  %193 = load ptr, ptr %7, align 8
  %194 = load i32, ptr %16, align 4
  %195 = sub nsw i32 %194, 1
  br label %196

196:                                              ; preds = %191
  %197 = load i32, ptr %16, align 4
  %198 = sub nsw i32 %197, 1
  %199 = load i32, ptr %8, align 4
  %200 = mul nsw i32 %198, %199
  br label %201

201:                                              ; preds = %196
  %202 = add nsw i32 %195, %200
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds double, ptr %193, i64 %203
  %205 = load double, ptr %204, align 8
  br label %206

206:                                              ; preds = %201
  %207 = fdiv double %192, %205
  %208 = load ptr, ptr %14, align 8
  %209 = load i32, ptr %16, align 4
  %210 = sub nsw i32 %209, 1
  br label %211

211:                                              ; preds = %206
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds double, ptr %208, i64 %212
  store double %207, ptr %213, align 8
  br label %214

214:                                              ; preds = %211
  %215 = load i32, ptr %16, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, ptr %16, align 4
  br label %163, !llvm.loop !25

217:                                              ; preds = %163
  %218 = load i32, ptr %9, align 4
  %219 = sub nsw i32 %218, 1
  store i32 %219, ptr %16, align 4
  br label %220

220:                                              ; preds = %304, %217
  %221 = load i32, ptr %16, align 4
  %222 = icmp sle i32 1, %221
  br i1 %222, label %223, label %307

223:                                              ; preds = %220
  %224 = load ptr, ptr %14, align 8
  %225 = load i32, ptr %16, align 4
  %226 = sub nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  br label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds double, ptr %224, i64 %227
  %230 = load double, ptr %229, align 8
  %231 = load i32, ptr %9, align 4
  %232 = load i32, ptr %16, align 4
  br label %233

233:                                              ; preds = %228
  %234 = sub nsw i32 %231, %232
  %235 = load ptr, ptr %7, align 8
  %236 = load i32, ptr %16, align 4
  %237 = sext i32 %236 to i64
  br label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds double, ptr %235, i64 %237
  %240 = load i32, ptr %16, align 4
  %241 = sub nsw i32 %240, 1
  %242 = load i32, ptr %8, align 4
  br label %243

243:                                              ; preds = %238
  %244 = mul nsw i32 %241, %242
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds double, ptr %239, i64 %245
  %247 = load ptr, ptr %14, align 8
  br label %248

248:                                              ; preds = %243
  %249 = load i32, ptr %16, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds double, ptr %247, i64 %250
  %252 = call double @ddot(i32 noundef %234, ptr noundef %246, i32 noundef 1, ptr noundef %251, i32 noundef 1)
  br label %253

253:                                              ; preds = %248
  %254 = fadd double %230, %252
  %255 = load ptr, ptr %14, align 8
  %256 = load i32, ptr %16, align 4
  %257 = sub nsw i32 %256, 1
  br label %258

258:                                              ; preds = %253
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds double, ptr %255, i64 %259
  store double %254, ptr %260, align 8
  %261 = load ptr, ptr %10, align 8
  br label %262

262:                                              ; preds = %258
  %263 = load i32, ptr %16, align 4
  %264 = sub nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, ptr %261, i64 %265
  br label %267

267:                                              ; preds = %262
  %268 = load i32, ptr %266, align 4
  store i32 %268, ptr %17, align 4
  %269 = load i32, ptr %17, align 4
  %270 = load i32, ptr %16, align 4
  br label %271

271:                                              ; preds = %267
  %272 = icmp ne i32 %269, %270
  br i1 %272, label %273, label %303

273:                                              ; preds = %271
  %274 = load ptr, ptr %14, align 8
  %275 = load i32, ptr %17, align 4
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  br label %278

278:                                              ; preds = %273
  %279 = getelementptr inbounds double, ptr %274, i64 %277
  %280 = load double, ptr %279, align 8
  store double %280, ptr %19, align 8
  %281 = load ptr, ptr %14, align 8
  br label %282

282:                                              ; preds = %278
  %283 = load i32, ptr %16, align 4
  %284 = sub nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds double, ptr %281, i64 %285
  br label %287

287:                                              ; preds = %282
  %288 = load double, ptr %286, align 8
  %289 = load ptr, ptr %14, align 8
  %290 = load i32, ptr %17, align 4
  %291 = sub nsw i32 %290, 1
  br label %292

292:                                              ; preds = %287
  %293 = sext i32 %291 to i64
  %294 = getelementptr inbounds double, ptr %289, i64 %293
  store double %288, ptr %294, align 8
  %295 = load double, ptr %19, align 8
  br label %296

296:                                              ; preds = %292
  %297 = load ptr, ptr %14, align 8
  %298 = load i32, ptr %16, align 4
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  br label %301

301:                                              ; preds = %296
  %302 = getelementptr inbounds double, ptr %297, i64 %300
  store double %295, ptr %302, align 8
  br label %303

303:                                              ; preds = %301, %271
  br label %304

304:                                              ; preds = %303
  %305 = load i32, ptr %16, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, ptr %16, align 4
  br label %220, !llvm.loop !26

307:                                              ; preds = %220
  br label %308

308:                                              ; preds = %307, %161
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
  br i1 true, label %7, label %.split

.split:                                           ; preds = %1
  %5 = alloca i16, align 2
  store i16 47, ptr %5, align 2
  %6 = alloca i32, align 4
  store i32 13412, ptr %6, align 4
  br label %7

7:                                                ; preds = %1, %.split
  %8 = fcmp ole double 0.000000e+00, %4
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = load double, ptr %2, align 8
  store double %10, ptr %3, align 8
  br label %14

11:                                               ; preds = %7
  %12 = load double, ptr %2, align 8
  %13 = fneg double %12
  store double %13, ptr %3, align 8
  br label %14

14:                                               ; preds = %11, %9
  %15 = load double, ptr %3, align 8
  ret double %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @cpu_time() #0 {
  %1 = alloca double, align 8
  %2 = call i64 @clock() #9
  %3 = sitofp i64 %2 to double
  %4 = fdiv double %3, 1.000000e+06
  br i1 true, label %7, label %.split

.split:                                           ; preds = %0
  %5 = alloca i16, align 2
  store i16 47, ptr %5, align 2
  %6 = alloca i32, align 4
  store i32 13412, ptr %6, align 4
  br label %7

7:                                                ; preds = %0, %.split
  store double %4, ptr %1, align 8
  %8 = load double, ptr %1, align 8
  ret double %8
}

; Function Attrs: nounwind
declare i64 @clock() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  br i1 true, label %13, label %.split

.split:                                           ; preds = %6
  %11 = alloca i16, align 2
  store i16 47, ptr %11, align 2
  %12 = alloca i32, align 4
  store i32 13412, ptr %12, align 4
  br label %13

13:                                               ; preds = %6, %.split
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  br label %18

18:                                               ; preds = %13
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, ptr %7, align 4
  store double %1, ptr %8, align 8
  br label %21

21:                                               ; preds = %18
  store ptr %2, ptr %9, align 8
  store i32 %3, ptr %10, align 4
  store ptr %4, ptr %14, align 8
  store i32 %5, ptr %15, align 4
  br label %22

22:                                               ; preds = %21
  %23 = load i32, ptr %7, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %232

26:                                               ; preds = %22
  %27 = load double, ptr %8, align 8
  %28 = fcmp oeq double %27, 0.000000e+00
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %232

30:                                               ; preds = %26
  %31 = load i32, ptr %10, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %15, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %96

36:                                               ; preds = %33, %30
  %37 = load i32, ptr %10, align 4
  %38 = icmp sle i32 0, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, ptr %17, align 4
  br label %47

40:                                               ; preds = %36
  %41 = load i32, ptr %7, align 4
  %42 = sub nsw i32 0, %41
  %43 = add nsw i32 %42, 1
  %44 = load i32, ptr %10, align 4
  br label %45

45:                                               ; preds = %40
  %46 = mul nsw i32 %43, %44
  store i32 %46, ptr %17, align 4
  br label %47

47:                                               ; preds = %45, %39
  %48 = load i32, ptr %15, align 4
  %49 = icmp sle i32 0, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, ptr %19, align 4
  br label %58

51:                                               ; preds = %47
  %52 = load i32, ptr %7, align 4
  %53 = sub nsw i32 0, %52
  %54 = add nsw i32 %53, 1
  %55 = load i32, ptr %15, align 4
  br label %56

56:                                               ; preds = %51
  %57 = mul nsw i32 %54, %55
  store i32 %57, ptr %19, align 4
  br label %58

58:                                               ; preds = %56, %50
  store i32 0, ptr %16, align 4
  br label %59

59:                                               ; preds = %92, %58
  %60 = load i32, ptr %16, align 4
  %61 = load i32, ptr %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %59
  %64 = load ptr, ptr %14, align 8
  %65 = load i32, ptr %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %64, i64 %66
  br label %68

68:                                               ; preds = %63
  %69 = load double, ptr %67, align 8
  %70 = load double, ptr %8, align 8
  %71 = load ptr, ptr %9, align 8
  %72 = load i32, ptr %17, align 4
  br label %73

73:                                               ; preds = %68
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds double, ptr %71, i64 %74
  %76 = load double, ptr %75, align 8
  %77 = call double @llvm.fmuladd.f64(double %70, double %76, double %69)
  br label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr %14, align 8
  %80 = load i32, ptr %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, ptr %79, i64 %81
  br label %83

83:                                               ; preds = %78
  store double %77, ptr %82, align 8
  %84 = load i32, ptr %17, align 4
  %85 = load i32, ptr %10, align 4
  %86 = add nsw i32 %84, %85
  br label %87

87:                                               ; preds = %83
  store i32 %86, ptr %17, align 4
  %88 = load i32, ptr %19, align 4
  %89 = load i32, ptr %15, align 4
  %90 = add nsw i32 %88, %89
  br label %91

91:                                               ; preds = %87
  store i32 %90, ptr %19, align 4
  br label %92

92:                                               ; preds = %91
  %93 = load i32, ptr %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %16, align 4
  br label %59, !llvm.loop !27

95:                                               ; preds = %59
  br label %231

96:                                               ; preds = %33
  %97 = load i32, ptr %7, align 4
  %98 = srem i32 %97, 4
  store i32 %98, ptr %20, align 4
  store i32 0, ptr %16, align 4
  br label %99

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %125, %99
  %101 = load i32, ptr %16, align 4
  %102 = load i32, ptr %20, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %128

104:                                              ; preds = %100
  %105 = load ptr, ptr %14, align 8
  %106 = load i32, ptr %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, ptr %105, i64 %107
  br label %109

109:                                              ; preds = %104
  %110 = load double, ptr %108, align 8
  %111 = load double, ptr %8, align 8
  %112 = load ptr, ptr %9, align 8
  %113 = load i32, ptr %16, align 4
  br label %114

114:                                              ; preds = %109
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds double, ptr %112, i64 %115
  %117 = load double, ptr %116, align 8
  %118 = call double @llvm.fmuladd.f64(double %111, double %117, double %110)
  br label %119

119:                                              ; preds = %114
  %120 = load ptr, ptr %14, align 8
  %121 = load i32, ptr %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, ptr %120, i64 %122
  br label %124

124:                                              ; preds = %119
  store double %118, ptr %123, align 8
  br label %125

125:                                              ; preds = %124
  %126 = load i32, ptr %16, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, ptr %16, align 4
  br label %100, !llvm.loop !28

128:                                              ; preds = %100
  %129 = load i32, ptr %20, align 4
  store i32 %129, ptr %16, align 4
  br label %130

130:                                              ; preds = %227, %128
  %131 = load i32, ptr %16, align 4
  %132 = load i32, ptr %7, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %230

134:                                              ; preds = %130
  %135 = load ptr, ptr %14, align 8
  %136 = load i32, ptr %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds double, ptr %135, i64 %137
  br label %139

139:                                              ; preds = %134
  %140 = load double, ptr %138, align 8
  %141 = load double, ptr %8, align 8
  %142 = load ptr, ptr %9, align 8
  %143 = load i32, ptr %16, align 4
  br label %144

144:                                              ; preds = %139
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds double, ptr %142, i64 %145
  %147 = load double, ptr %146, align 8
  %148 = call double @llvm.fmuladd.f64(double %141, double %147, double %140)
  br label %149

149:                                              ; preds = %144
  %150 = load ptr, ptr %14, align 8
  %151 = load i32, ptr %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds double, ptr %150, i64 %152
  br label %154

154:                                              ; preds = %149
  store double %148, ptr %153, align 8
  %155 = load ptr, ptr %14, align 8
  %156 = load i32, ptr %16, align 4
  %157 = add nsw i32 %156, 1
  br label %158

158:                                              ; preds = %154
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds double, ptr %155, i64 %159
  %161 = load double, ptr %160, align 8
  %162 = load double, ptr %8, align 8
  br label %163

163:                                              ; preds = %158
  %164 = load ptr, ptr %9, align 8
  %165 = load i32, ptr %16, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  br label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds double, ptr %164, i64 %167
  %170 = load double, ptr %169, align 8
  %171 = call double @llvm.fmuladd.f64(double %162, double %170, double %161)
  %172 = load ptr, ptr %14, align 8
  br label %173

173:                                              ; preds = %168
  %174 = load i32, ptr %16, align 4
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds double, ptr %172, i64 %176
  br label %178

178:                                              ; preds = %173
  store double %171, ptr %177, align 8
  %179 = load ptr, ptr %14, align 8
  %180 = load i32, ptr %16, align 4
  %181 = add nsw i32 %180, 2
  br label %182

182:                                              ; preds = %178
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds double, ptr %179, i64 %183
  %185 = load double, ptr %184, align 8
  %186 = load double, ptr %8, align 8
  br label %187

187:                                              ; preds = %182
  %188 = load ptr, ptr %9, align 8
  %189 = load i32, ptr %16, align 4
  %190 = add nsw i32 %189, 2
  %191 = sext i32 %190 to i64
  br label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds double, ptr %188, i64 %191
  %194 = load double, ptr %193, align 8
  %195 = call double @llvm.fmuladd.f64(double %186, double %194, double %185)
  %196 = load ptr, ptr %14, align 8
  br label %197

197:                                              ; preds = %192
  %198 = load i32, ptr %16, align 4
  %199 = add nsw i32 %198, 2
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double, ptr %196, i64 %200
  br label %202

202:                                              ; preds = %197
  store double %195, ptr %201, align 8
  %203 = load ptr, ptr %14, align 8
  %204 = load i32, ptr %16, align 4
  %205 = add nsw i32 %204, 3
  br label %206

206:                                              ; preds = %202
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds double, ptr %203, i64 %207
  %209 = load double, ptr %208, align 8
  %210 = load double, ptr %8, align 8
  br label %211

211:                                              ; preds = %206
  %212 = load ptr, ptr %9, align 8
  %213 = load i32, ptr %16, align 4
  %214 = add nsw i32 %213, 3
  %215 = sext i32 %214 to i64
  br label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds double, ptr %212, i64 %215
  %218 = load double, ptr %217, align 8
  %219 = call double @llvm.fmuladd.f64(double %210, double %218, double %209)
  %220 = load ptr, ptr %14, align 8
  br label %221

221:                                              ; preds = %216
  %222 = load i32, ptr %16, align 4
  %223 = add nsw i32 %222, 3
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds double, ptr %220, i64 %224
  br label %226

226:                                              ; preds = %221
  store double %219, ptr %225, align 8
  br label %227

227:                                              ; preds = %226
  %228 = load i32, ptr %16, align 4
  %229 = add nsw i32 %228, 4
  store i32 %229, ptr %16, align 4
  br label %130, !llvm.loop !29

230:                                              ; preds = %130
  br label %231

231:                                              ; preds = %230, %95
  br label %232

232:                                              ; preds = %231, %29, %25
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @ddot(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  br i1 true, label %12, label %.split

.split:                                           ; preds = %5
  %10 = alloca i16, align 2
  store i16 47, ptr %10, align 2
  %11 = alloca i32, align 4
  store i32 13412, ptr %11, align 4
  br label %12

12:                                               ; preds = %5, %.split
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  br label %17

17:                                               ; preds = %12
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, ptr %7, align 4
  br label %21

21:                                               ; preds = %17
  store ptr %1, ptr %8, align 8
  store i32 %2, ptr %9, align 4
  store ptr %3, ptr %13, align 8
  store i32 %4, ptr %14, align 4
  br label %22

22:                                               ; preds = %21
  store double 0.000000e+00, ptr %15, align 8
  %23 = load i32, ptr %7, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load double, ptr %15, align 8
  store double %26, ptr %6, align 8
  br label %208

27:                                               ; preds = %22
  %28 = load i32, ptr %9, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %14, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %88

33:                                               ; preds = %30, %27
  %34 = load i32, ptr %9, align 4
  %35 = icmp sle i32 0, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, ptr %18, align 4
  br label %44

37:                                               ; preds = %33
  %38 = load i32, ptr %7, align 4
  %39 = sub nsw i32 0, %38
  %40 = add nsw i32 %39, 1
  %41 = load i32, ptr %9, align 4
  br label %42

42:                                               ; preds = %37
  %43 = mul nsw i32 %40, %41
  store i32 %43, ptr %18, align 4
  br label %44

44:                                               ; preds = %42, %36
  %45 = load i32, ptr %14, align 4
  %46 = icmp sle i32 0, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, ptr %19, align 4
  br label %55

48:                                               ; preds = %44
  %49 = load i32, ptr %7, align 4
  %50 = sub nsw i32 0, %49
  %51 = add nsw i32 %50, 1
  %52 = load i32, ptr %14, align 4
  br label %53

53:                                               ; preds = %48
  %54 = mul nsw i32 %51, %52
  store i32 %54, ptr %19, align 4
  br label %55

55:                                               ; preds = %53, %47
  store i32 0, ptr %16, align 4
  br label %56

56:                                               ; preds = %84, %55
  %57 = load i32, ptr %16, align 4
  %58 = load i32, ptr %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %56
  %61 = load double, ptr %15, align 8
  %62 = load ptr, ptr %8, align 8
  %63 = load i32, ptr %18, align 4
  %64 = sext i32 %63 to i64
  br label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds double, ptr %62, i64 %64
  %67 = load double, ptr %66, align 8
  %68 = load ptr, ptr %13, align 8
  %69 = load i32, ptr %19, align 4
  br label %70

70:                                               ; preds = %65
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds double, ptr %68, i64 %71
  %73 = load double, ptr %72, align 8
  %74 = call double @llvm.fmuladd.f64(double %67, double %73, double %61)
  br label %75

75:                                               ; preds = %70
  store double %74, ptr %15, align 8
  %76 = load i32, ptr %18, align 4
  %77 = load i32, ptr %9, align 4
  %78 = add nsw i32 %76, %77
  br label %79

79:                                               ; preds = %75
  store i32 %78, ptr %18, align 4
  %80 = load i32, ptr %19, align 4
  %81 = load i32, ptr %14, align 4
  %82 = add nsw i32 %80, %81
  br label %83

83:                                               ; preds = %79
  store i32 %82, ptr %19, align 4
  br label %84

84:                                               ; preds = %83
  %85 = load i32, ptr %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %16, align 4
  br label %56, !llvm.loop !30

87:                                               ; preds = %56
  br label %206

88:                                               ; preds = %30
  %89 = load i32, ptr %7, align 4
  %90 = srem i32 %89, 5
  store i32 %90, ptr %20, align 4
  store i32 0, ptr %16, align 4
  br label %91

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %112, %91
  %93 = load i32, ptr %16, align 4
  %94 = load i32, ptr %20, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %92
  %97 = load double, ptr %15, align 8
  %98 = load ptr, ptr %8, align 8
  %99 = load i32, ptr %16, align 4
  %100 = sext i32 %99 to i64
  br label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds double, ptr %98, i64 %100
  %103 = load double, ptr %102, align 8
  %104 = load ptr, ptr %13, align 8
  %105 = load i32, ptr %16, align 4
  br label %106

106:                                              ; preds = %101
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds double, ptr %104, i64 %107
  %109 = load double, ptr %108, align 8
  %110 = call double @llvm.fmuladd.f64(double %103, double %109, double %97)
  br label %111

111:                                              ; preds = %106
  store double %110, ptr %15, align 8
  br label %112

112:                                              ; preds = %111
  %113 = load i32, ptr %16, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr %16, align 4
  br label %92, !llvm.loop !31

115:                                              ; preds = %92
  %116 = load i32, ptr %20, align 4
  store i32 %116, ptr %16, align 4
  br label %117

117:                                              ; preds = %202, %115
  %118 = load i32, ptr %16, align 4
  %119 = load i32, ptr %7, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %205

121:                                              ; preds = %117
  %122 = load double, ptr %15, align 8
  %123 = load ptr, ptr %8, align 8
  %124 = load i32, ptr %16, align 4
  %125 = sext i32 %124 to i64
  br label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds double, ptr %123, i64 %125
  %128 = load double, ptr %127, align 8
  %129 = load ptr, ptr %13, align 8
  %130 = load i32, ptr %16, align 4
  br label %131

131:                                              ; preds = %126
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds double, ptr %129, i64 %132
  %134 = load double, ptr %133, align 8
  %135 = call double @llvm.fmuladd.f64(double %128, double %134, double %122)
  br label %136

136:                                              ; preds = %131
  %137 = load ptr, ptr %8, align 8
  %138 = load i32, ptr %16, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  br label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds double, ptr %137, i64 %140
  %143 = load double, ptr %142, align 8
  %144 = load ptr, ptr %13, align 8
  %145 = load i32, ptr %16, align 4
  br label %146

146:                                              ; preds = %141
  %147 = add nsw i32 %145, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, ptr %144, i64 %148
  %150 = load double, ptr %149, align 8
  br label %151

151:                                              ; preds = %146
  %152 = call double @llvm.fmuladd.f64(double %143, double %150, double %135)
  %153 = load ptr, ptr %8, align 8
  %154 = load i32, ptr %16, align 4
  %155 = add nsw i32 %154, 2
  br label %156

156:                                              ; preds = %151
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds double, ptr %153, i64 %157
  %159 = load double, ptr %158, align 8
  %160 = load ptr, ptr %13, align 8
  br label %161

161:                                              ; preds = %156
  %162 = load i32, ptr %16, align 4
  %163 = add nsw i32 %162, 2
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, ptr %160, i64 %164
  br label %166

166:                                              ; preds = %161
  %167 = load double, ptr %165, align 8
  %168 = call double @llvm.fmuladd.f64(double %159, double %167, double %152)
  %169 = load ptr, ptr %8, align 8
  %170 = load i32, ptr %16, align 4
  br label %171

171:                                              ; preds = %166
  %172 = add nsw i32 %170, 3
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds double, ptr %169, i64 %173
  %175 = load double, ptr %174, align 8
  br label %176

176:                                              ; preds = %171
  %177 = load ptr, ptr %13, align 8
  %178 = load i32, ptr %16, align 4
  %179 = add nsw i32 %178, 3
  %180 = sext i32 %179 to i64
  br label %181

181:                                              ; preds = %176
  %182 = getelementptr inbounds double, ptr %177, i64 %180
  %183 = load double, ptr %182, align 8
  %184 = call double @llvm.fmuladd.f64(double %175, double %183, double %168)
  %185 = load ptr, ptr %8, align 8
  br label %186

186:                                              ; preds = %181
  %187 = load i32, ptr %16, align 4
  %188 = add nsw i32 %187, 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds double, ptr %185, i64 %189
  br label %191

191:                                              ; preds = %186
  %192 = load double, ptr %190, align 8
  %193 = load ptr, ptr %13, align 8
  %194 = load i32, ptr %16, align 4
  %195 = add nsw i32 %194, 4
  br label %196

196:                                              ; preds = %191
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds double, ptr %193, i64 %197
  %199 = load double, ptr %198, align 8
  %200 = call double @llvm.fmuladd.f64(double %192, double %199, double %184)
  br label %201

201:                                              ; preds = %196
  store double %200, ptr %15, align 8
  br label %202

202:                                              ; preds = %201
  %203 = load i32, ptr %16, align 4
  %204 = add nsw i32 %203, 5
  store i32 %204, ptr %16, align 4
  br label %117, !llvm.loop !32

205:                                              ; preds = %117
  br label %206

206:                                              ; preds = %205, %87
  %207 = load double, ptr %15, align 8
  store double %207, ptr %6, align 8
  br label %208

208:                                              ; preds = %206, %25
  %209 = load double, ptr %6, align 8
  ret double %209
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  br i1 true, label %10, label %.split

.split:                                           ; preds = %3
  %8 = alloca i16, align 2
  store i16 47, ptr %8, align 2
  %9 = alloca i32, align 4
  store i32 13412, ptr %9, align 4
  br label %10

10:                                               ; preds = %3, %.split
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  br label %15

15:                                               ; preds = %10
  store i32 %0, ptr %5, align 4
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 0, ptr %14, align 4
  br label %16

16:                                               ; preds = %15
  %17 = load i32, ptr %5, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %7, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16
  %23 = load i32, ptr %14, align 4
  store i32 %23, ptr %4, align 4
  br label %116

24:                                               ; preds = %19
  store i32 1, ptr %14, align 4
  %25 = load i32, ptr %5, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, ptr %14, align 4
  store i32 %28, ptr %4, align 4
  br label %116

29:                                               ; preds = %24
  %30 = load i32, ptr %7, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %69

32:                                               ; preds = %29
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds double, ptr %33, i64 0
  %35 = load double, ptr %34, align 8
  %36 = call double @r8_abs(double noundef %35)
  br label %37

37:                                               ; preds = %32
  store double %36, ptr %11, align 8
  store i32 1, ptr %12, align 4
  br label %38

38:                                               ; preds = %65, %37
  %39 = load i32, ptr %12, align 4
  %40 = load i32, ptr %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load double, ptr %11, align 8
  %44 = load ptr, ptr %6, align 8
  %45 = load i32, ptr %12, align 4
  %46 = sext i32 %45 to i64
  br label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds double, ptr %44, i64 %46
  %49 = load double, ptr %48, align 8
  %50 = call double @r8_abs(double noundef %49)
  %51 = fcmp olt double %43, %50
  br label %52

52:                                               ; preds = %47
  br i1 %51, label %53, label %64

53:                                               ; preds = %52
  %54 = load i32, ptr %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %14, align 4
  %56 = load ptr, ptr %6, align 8
  br label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, ptr %56, i64 %59
  %61 = load double, ptr %60, align 8
  br label %62

62:                                               ; preds = %57
  %63 = call double @r8_abs(double noundef %61)
  store double %63, ptr %11, align 8
  br label %64

64:                                               ; preds = %62, %52
  br label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %12, align 4
  br label %38, !llvm.loop !33

68:                                               ; preds = %38
  br label %114

69:                                               ; preds = %29
  store i32 0, ptr %13, align 4
  %70 = load ptr, ptr %6, align 8
  %71 = getelementptr inbounds double, ptr %70, i64 0
  %72 = load double, ptr %71, align 8
  br label %73

73:                                               ; preds = %69
  %74 = call double @r8_abs(double noundef %72)
  store double %74, ptr %11, align 8
  %75 = load i32, ptr %13, align 4
  %76 = load i32, ptr %7, align 4
  br label %77

77:                                               ; preds = %73
  %78 = add nsw i32 %75, %76
  store i32 %78, ptr %13, align 4
  store i32 1, ptr %12, align 4
  br label %79

79:                                               ; preds = %110, %77
  %80 = load i32, ptr %12, align 4
  %81 = load i32, ptr %5, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %113

83:                                               ; preds = %79
  %84 = load double, ptr %11, align 8
  %85 = load ptr, ptr %6, align 8
  %86 = load i32, ptr %13, align 4
  %87 = sext i32 %86 to i64
  br label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds double, ptr %85, i64 %87
  %90 = load double, ptr %89, align 8
  %91 = call double @r8_abs(double noundef %90)
  %92 = fcmp olt double %84, %91
  br label %93

93:                                               ; preds = %88
  br i1 %92, label %94, label %105

94:                                               ; preds = %93
  %95 = load i32, ptr %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %14, align 4
  %97 = load ptr, ptr %6, align 8
  br label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, ptr %97, i64 %100
  %102 = load double, ptr %101, align 8
  br label %103

103:                                              ; preds = %98
  %104 = call double @r8_abs(double noundef %102)
  store double %104, ptr %11, align 8
  br label %105

105:                                              ; preds = %103, %93
  %106 = load i32, ptr %13, align 4
  %107 = load i32, ptr %7, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, ptr %13, align 4
  br label %109

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %109
  %111 = load i32, ptr %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %12, align 4
  br label %79, !llvm.loop !34

113:                                              ; preds = %79
  br label %114

114:                                              ; preds = %113, %68
  %115 = load i32, ptr %14, align 4
  store i32 %115, ptr %4, align 4
  br label %116

116:                                              ; preds = %114, %27, %22
  %117 = load i32, ptr %4, align 4
  ret i32 %117
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  br i1 true, label %11, label %.split

.split:                                           ; preds = %4
  %9 = alloca i16, align 2
  store i16 47, ptr %9, align 2
  %10 = alloca i32, align 4
  store i32 13412, ptr %10, align 4
  br label %11

11:                                               ; preds = %4, %.split
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  br label %15

15:                                               ; preds = %11
  store double %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  %16 = load i32, ptr %5, align 4
  br label %17

17:                                               ; preds = %15
  %18 = icmp sle i32 %16, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  br label %180

20:                                               ; preds = %17
  %21 = load i32, ptr %8, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %140

23:                                               ; preds = %20
  %24 = load i32, ptr %5, align 4
  %25 = srem i32 %24, 5
  store i32 %25, ptr %14, align 4
  store i32 0, ptr %12, align 4
  br label %26

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %46, %26
  %28 = load i32, ptr %12, align 4
  %29 = load i32, ptr %14, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load double, ptr %6, align 8
  %33 = load ptr, ptr %7, align 8
  %34 = load i32, ptr %12, align 4
  %35 = sext i32 %34 to i64
  br label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds double, ptr %33, i64 %35
  %38 = load double, ptr %37, align 8
  %39 = fmul double %32, %38
  %40 = load ptr, ptr %7, align 8
  br label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, ptr %40, i64 %43
  store double %39, ptr %44, align 8
  br label %45

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %12, align 4
  br label %27, !llvm.loop !35

49:                                               ; preds = %27
  %50 = load i32, ptr %14, align 4
  store i32 %50, ptr %12, align 4
  br label %51

51:                                               ; preds = %136, %49
  %52 = load i32, ptr %12, align 4
  %53 = load i32, ptr %5, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %139

55:                                               ; preds = %51
  %56 = load double, ptr %6, align 8
  %57 = load ptr, ptr %7, align 8
  %58 = load i32, ptr %12, align 4
  %59 = sext i32 %58 to i64
  br label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds double, ptr %57, i64 %59
  %62 = load double, ptr %61, align 8
  %63 = fmul double %56, %62
  %64 = load ptr, ptr %7, align 8
  br label %65

65:                                               ; preds = %60
  %66 = load i32, ptr %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, ptr %64, i64 %67
  store double %63, ptr %68, align 8
  br label %69

69:                                               ; preds = %65
  %70 = load double, ptr %6, align 8
  %71 = load ptr, ptr %7, align 8
  %72 = load i32, ptr %12, align 4
  %73 = add nsw i32 %72, 1
  br label %74

74:                                               ; preds = %69
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds double, ptr %71, i64 %75
  %77 = load double, ptr %76, align 8
  %78 = fmul double %70, %77
  br label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr %7, align 8
  %81 = load i32, ptr %12, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  br label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds double, ptr %80, i64 %83
  store double %78, ptr %85, align 8
  %86 = load double, ptr %6, align 8
  %87 = load ptr, ptr %7, align 8
  br label %88

88:                                               ; preds = %84
  %89 = load i32, ptr %12, align 4
  %90 = add nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, ptr %87, i64 %91
  br label %93

93:                                               ; preds = %88
  %94 = load double, ptr %92, align 8
  %95 = fmul double %86, %94
  %96 = load ptr, ptr %7, align 8
  %97 = load i32, ptr %12, align 4
  br label %98

98:                                               ; preds = %93
  %99 = add nsw i32 %97, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, ptr %96, i64 %100
  store double %95, ptr %101, align 8
  br label %102

102:                                              ; preds = %98
  %103 = load double, ptr %6, align 8
  %104 = load ptr, ptr %7, align 8
  %105 = load i32, ptr %12, align 4
  %106 = add nsw i32 %105, 3
  br label %107

107:                                              ; preds = %102
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds double, ptr %104, i64 %108
  %110 = load double, ptr %109, align 8
  %111 = fmul double %103, %110
  br label %112

112:                                              ; preds = %107
  %113 = load ptr, ptr %7, align 8
  %114 = load i32, ptr %12, align 4
  %115 = add nsw i32 %114, 3
  %116 = sext i32 %115 to i64
  br label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds double, ptr %113, i64 %116
  store double %111, ptr %118, align 8
  %119 = load double, ptr %6, align 8
  %120 = load ptr, ptr %7, align 8
  br label %121

121:                                              ; preds = %117
  %122 = load i32, ptr %12, align 4
  %123 = add nsw i32 %122, 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds double, ptr %120, i64 %124
  br label %126

126:                                              ; preds = %121
  %127 = load double, ptr %125, align 8
  %128 = fmul double %119, %127
  %129 = load ptr, ptr %7, align 8
  %130 = load i32, ptr %12, align 4
  br label %131

131:                                              ; preds = %126
  %132 = add nsw i32 %130, 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double, ptr %129, i64 %133
  store double %128, ptr %134, align 8
  br label %135

135:                                              ; preds = %131
  br label %136

136:                                              ; preds = %135
  %137 = load i32, ptr %12, align 4
  %138 = add nsw i32 %137, 5
  store i32 %138, ptr %12, align 4
  br label %51, !llvm.loop !36

139:                                              ; preds = %51
  br label %179

140:                                              ; preds = %20
  %141 = load i32, ptr %8, align 4
  %142 = icmp sle i32 0, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 0, ptr %13, align 4
  br label %151

144:                                              ; preds = %140
  %145 = load i32, ptr %5, align 4
  %146 = sub nsw i32 0, %145
  %147 = add nsw i32 %146, 1
  %148 = load i32, ptr %8, align 4
  br label %149

149:                                              ; preds = %144
  %150 = mul nsw i32 %147, %148
  store i32 %150, ptr %13, align 4
  br label %151

151:                                              ; preds = %149, %143
  store i32 0, ptr %12, align 4
  br label %152

152:                                              ; preds = %175, %151
  %153 = load i32, ptr %12, align 4
  %154 = load i32, ptr %5, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %178

156:                                              ; preds = %152
  %157 = load double, ptr %6, align 8
  %158 = load ptr, ptr %7, align 8
  %159 = load i32, ptr %13, align 4
  %160 = sext i32 %159 to i64
  br label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds double, ptr %158, i64 %160
  %163 = load double, ptr %162, align 8
  %164 = fmul double %157, %163
  %165 = load ptr, ptr %7, align 8
  br label %166

166:                                              ; preds = %161
  %167 = load i32, ptr %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds double, ptr %165, i64 %168
  store double %164, ptr %169, align 8
  br label %170

170:                                              ; preds = %166
  %171 = load i32, ptr %13, align 4
  %172 = load i32, ptr %8, align 4
  %173 = add nsw i32 %171, %172
  store i32 %173, ptr %13, align 4
  br label %174

174:                                              ; preds = %170
  br label %175

175:                                              ; preds = %174
  %176 = load i32, ptr %12, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, ptr %12, align 4
  br label %152, !llvm.loop !37

178:                                              ; preds = %152
  br label %179

179:                                              ; preds = %178, %139
  br label %180

180:                                              ; preds = %179, %19
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
  br i1 true, label %8, label %.split

.split:                                           ; preds = %1
  %6 = alloca i16, align 2
  store i16 47, ptr %6, align 2
  %7 = alloca i32, align 4
  store i32 13412, ptr %7, align 4
  br label %8

8:                                                ; preds = %1, %.split
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  br label %13

13:                                               ; preds = %8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  br label %18

18:                                               ; preds = %13
  %19 = alloca double, align 8
  store ptr %0, ptr %2, align 8
  store i32 4096, ptr %3, align 4
  store i32 494, ptr %11, align 4
  br label %20

20:                                               ; preds = %18
  store i32 322, ptr %12, align 4
  store i32 2508, ptr %14, align 4
  store i32 2549, ptr %15, align 4
  store double 1.000000e+00, ptr %16, align 8
  br label %21

21:                                               ; preds = %20
  store double 0x3F30000000000000, ptr %17, align 8
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds i32, ptr %22, i64 3
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %15, align 4
  %27 = mul nsw i32 %24, %26
  store i32 %27, ptr %10, align 4
  %28 = load i32, ptr %10, align 4
  br label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %3, align 4
  %31 = sdiv i32 %28, %30
  store i32 %31, ptr %9, align 4
  %32 = load i32, ptr %10, align 4
  br label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %3, align 4
  %35 = load i32, ptr %9, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sub nsw i32 %32, %36
  br label %38

38:                                               ; preds = %33
  store i32 %37, ptr %10, align 4
  %39 = load i32, ptr %9, align 4
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds i32, ptr %40, i64 2
  br label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %41, align 4
  %44 = load i32, ptr %15, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %39, %45
  br label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds i32, ptr %48, i64 3
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %14, align 4
  br label %52

52:                                               ; preds = %47
  %53 = mul nsw i32 %50, %51
  %54 = add nsw i32 %46, %53
  store i32 %54, ptr %9, align 4
  %55 = load i32, ptr %9, align 4
  br label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %3, align 4
  %58 = sdiv i32 %55, %57
  store i32 %58, ptr %5, align 4
  %59 = load i32, ptr %9, align 4
  br label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %3, align 4
  %62 = load i32, ptr %5, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sub nsw i32 %59, %63
  br label %65

65:                                               ; preds = %60
  store i32 %64, ptr %9, align 4
  %66 = load i32, ptr %5, align 4
  %67 = load ptr, ptr %2, align 8
  %68 = getelementptr inbounds i32, ptr %67, i64 1
  br label %69

69:                                               ; preds = %65
  %70 = load i32, ptr %68, align 4
  %71 = load i32, ptr %15, align 4
  %72 = mul nsw i32 %70, %71
  %73 = add nsw i32 %66, %72
  br label %74

74:                                               ; preds = %69
  %75 = load ptr, ptr %2, align 8
  %76 = getelementptr inbounds i32, ptr %75, i64 2
  %77 = load i32, ptr %76, align 4
  %78 = load i32, ptr %14, align 4
  br label %79

79:                                               ; preds = %74
  %80 = mul nsw i32 %77, %78
  %81 = add nsw i32 %73, %80
  %82 = load ptr, ptr %2, align 8
  %83 = getelementptr inbounds i32, ptr %82, i64 3
  br label %84

84:                                               ; preds = %79
  %85 = load i32, ptr %83, align 4
  %86 = load i32, ptr %12, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %81, %87
  br label %89

89:                                               ; preds = %84
  store i32 %88, ptr %5, align 4
  %90 = load i32, ptr %5, align 4
  %91 = load i32, ptr %3, align 4
  %92 = sdiv i32 %90, %91
  br label %93

93:                                               ; preds = %89
  store i32 %92, ptr %4, align 4
  %94 = load i32, ptr %5, align 4
  %95 = load i32, ptr %3, align 4
  %96 = load i32, ptr %4, align 4
  br label %97

97:                                               ; preds = %93
  %98 = mul nsw i32 %95, %96
  %99 = sub nsw i32 %94, %98
  store i32 %99, ptr %5, align 4
  %100 = load i32, ptr %4, align 4
  br label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %2, align 8
  %103 = getelementptr inbounds i32, ptr %102, i64 0
  %104 = load i32, ptr %103, align 4
  %105 = load i32, ptr %15, align 4
  br label %106

106:                                              ; preds = %101
  %107 = mul nsw i32 %104, %105
  %108 = add nsw i32 %100, %107
  %109 = load ptr, ptr %2, align 8
  %110 = getelementptr inbounds i32, ptr %109, i64 1
  br label %111

111:                                              ; preds = %106
  %112 = load i32, ptr %110, align 4
  %113 = load i32, ptr %14, align 4
  %114 = mul nsw i32 %112, %113
  %115 = add nsw i32 %108, %114
  br label %116

116:                                              ; preds = %111
  %117 = load ptr, ptr %2, align 8
  %118 = getelementptr inbounds i32, ptr %117, i64 2
  %119 = load i32, ptr %118, align 4
  %120 = load i32, ptr %12, align 4
  br label %121

121:                                              ; preds = %116
  %122 = mul nsw i32 %119, %120
  %123 = add nsw i32 %115, %122
  %124 = load ptr, ptr %2, align 8
  %125 = getelementptr inbounds i32, ptr %124, i64 3
  br label %126

126:                                              ; preds = %121
  %127 = load i32, ptr %125, align 4
  %128 = load i32, ptr %11, align 4
  %129 = mul nsw i32 %127, %128
  %130 = add nsw i32 %123, %129
  br label %131

131:                                              ; preds = %126
  store i32 %130, ptr %4, align 4
  %132 = load i32, ptr %4, align 4
  %133 = load i32, ptr %3, align 4
  %134 = srem i32 %132, %133
  br label %135

135:                                              ; preds = %131
  store i32 %134, ptr %4, align 4
  %136 = load i32, ptr %4, align 4
  %137 = load ptr, ptr %2, align 8
  %138 = getelementptr inbounds i32, ptr %137, i64 0
  br label %139

139:                                              ; preds = %135
  store i32 %136, ptr %138, align 4
  %140 = load i32, ptr %5, align 4
  %141 = load ptr, ptr %2, align 8
  %142 = getelementptr inbounds i32, ptr %141, i64 1
  br label %143

143:                                              ; preds = %139
  store i32 %140, ptr %142, align 4
  %144 = load i32, ptr %9, align 4
  %145 = load ptr, ptr %2, align 8
  %146 = getelementptr inbounds i32, ptr %145, i64 2
  br label %147

147:                                              ; preds = %143
  store i32 %144, ptr %146, align 4
  %148 = load i32, ptr %10, align 4
  %149 = load ptr, ptr %2, align 8
  %150 = getelementptr inbounds i32, ptr %149, i64 3
  br label %151

151:                                              ; preds = %147
  store i32 %148, ptr %150, align 4
  %152 = load double, ptr %17, align 8
  %153 = load i32, ptr %4, align 4
  %154 = sitofp i32 %153 to double
  br label %155

155:                                              ; preds = %151
  %156 = load double, ptr %17, align 8
  %157 = load i32, ptr %5, align 4
  %158 = sitofp i32 %157 to double
  %159 = load double, ptr %17, align 8
  br label %160

160:                                              ; preds = %155
  %161 = load i32, ptr %9, align 4
  %162 = sitofp i32 %161 to double
  %163 = load double, ptr %17, align 8
  %164 = load i32, ptr %10, align 4
  br label %165

165:                                              ; preds = %160
  %166 = sitofp i32 %164 to double
  %167 = call double @llvm.fmuladd.f64(double %163, double %166, double %162)
  %168 = call double @llvm.fmuladd.f64(double %159, double %167, double %158)
  %169 = call double @llvm.fmuladd.f64(double %156, double %168, double %154)
  br label %170

170:                                              ; preds = %165
  %171 = fmul double %152, %169
  store double %171, ptr %19, align 8
  %172 = load double, ptr %19, align 8
  ret double %172
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
