#include "../include/PrintBlockNumber.h"

bool ModulePassInjPrintf::runOnModule(llvm::Module &M) {
    bool is_inserted_func = false;
    llvm::LLVMContext &context = M.getContext();
    llvm::PointerType *PrintfArgTy = llvm::PointerType::getUnqual(llvm::Type::getInt8Ty(context));
    llvm::FunctionType *PrintfTy =
        llvm::FunctionType::get(llvm::IntegerType::getInt32Ty(context), PrintfArgTy, true);
    llvm::FunctionCallee Printf = M.getOrInsertFunction("printf", PrintfTy);
    llvm::Function *PrintfF = dyn_cast<llvm::Function>(Printf.getCallee());
    PrintfF->setDoesNotThrow();
    PrintfF->addParamAttr(0, llvm::Attribute::NoCapture);
    PrintfF->addParamAttr(0, llvm::Attribute::ReadOnly);
    llvm::Constant *PrintfFormatStr =
        llvm::ConstantDataArray::getString(context, "Function: %s\tBasic block number: %d\n");
    llvm::Constant *PrintfFormatStrVar =
        M.getOrInsertGlobal("PrintfFormatStr", PrintfFormatStr->getType());
    dyn_cast<llvm::GlobalVariable>(PrintfFormatStrVar)->setInitializer(PrintfFormatStr);
    std::int32_t curr_block_number = 1;
    std::unordered_map<std::string, llvm::Constant *> func_name_map;
    for (llvm::Function &F : M) {
        const std::string fn_name = std::string(F.getName());
        for (llvm::BasicBlock &BB : F) {
            llvm::IRBuilder<> Builder(&*BB.getFirstInsertionPt());
            if (!func_name_map.contains(fn_name)) {
                func_name_map.insert({fn_name, Builder.CreateGlobalStringPtr(fn_name)});
            }
            llvm::Value *FormatStrPtr =
                Builder.CreatePointerCast(PrintfFormatStrVar, PrintfArgTy, "formatStr");
            Builder.CreateCall(Printf, {FormatStrPtr, func_name_map[fn_name],
                                        Builder.getInt32(curr_block_number++)});
            is_inserted_func = true;
        }
    }
    return is_inserted_func;
}

llvm::PreservedAnalyses ModulePassInjPrintf::run(llvm::Module &M, llvm::ModuleAnalysisManager &) {
    bool changed = runOnModule(M);
    return changed ? llvm::PreservedAnalyses::none() : llvm::PreservedAnalyses::all();
}

bool ModulePassInjPrintf::isRequired() { return true; }

llvm::PassPluginLibraryInfo getModifyBasicBlockPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "TransformationManager", LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                    [](llvm::StringRef Name, llvm::ModulePassManager &MPM,
                       llvm::ArrayRef<llvm::PassBuilder::PipelineElement>) {
                        if (Name == "block-number") {
                            MPM.addPass(ModulePassInjPrintf());
                            return true;
                        }
                        return false;
                    });
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getModifyBasicBlockPluginInfo();
}
