#include "../include/AnalysisManager.h"

// ModuleFuncListPass
llvm::PreservedAnalyses ModulePassFuncList::run(llvm::Module &M, llvm::ModuleAnalysisManager &) {
    llvm::Module::FunctionListType &fn_list = M.getFunctionList();
    llvm::outs() << "Number of functions: " << fn_list.size() << '\n';
    for (auto fn_b_iter = fn_list.begin(); fn_b_iter != fn_list.end(); ++fn_b_iter) {
        llvm::outs() << fn_b_iter->getName() << '\n';
    }
    return llvm::PreservedAnalyses::all();
}

bool ModulePassFuncList::isRequired() { return true; }

llvm::PreservedAnalyses FunctionPassBranchCounter::run(llvm::Function &F,
                                                       llvm::FunctionAnalysisManager &) {
    std::size_t branch_inst_counter = 0;
    for (const llvm::BasicBlock &BB : F) {
        for (const llvm::Instruction &I : BB) {
            if (llvm::isa<llvm::BranchInst>(I)) {
                ++branch_inst_counter;
            }
        }
    }
    llvm::outs() << "Function " << F.getName() << " has " << branch_inst_counter
                 << " branch instructions\n";
    return llvm::PreservedAnalyses::all();
}

bool FunctionPassBranchCounter::isRequired() { return true; }

llvm::PreservedAnalyses LoopPassLoopLength::run(llvm::Loop &L, llvm::LoopAnalysisManager &AM,
                                            llvm::LoopStandardAnalysisResults &AR,
                                            llvm::LPMUpdater &U) {
    std::size_t loop_length = 0;
    for (auto block_b_iter = L.block_begin(), block_e_iter = L.block_end();
         block_b_iter != block_e_iter; ++block_b_iter) {
        loop_length += (*block_b_iter)->size();
    }
    llvm::outs() << "Length of loop: " << loop_length << '\n';
    return llvm::PreservedAnalyses::all();
}

bool LoopPassLoopLength::isRequired() { return true; }

//-----------------------------------------------------------------------------
// New PM Registration
//-----------------------------------------------------------------------------
llvm::PassPluginLibraryInfo getHelloWorldPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "AnalysisManager", LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                    [](llvm::StringRef Name, llvm::ModulePassManager &MPM,
                       llvm::ArrayRef<llvm::PassBuilder::PipelineElement>) {
                        if (Name == "simple-analysis") {
                            llvm::LoopPassManager LPM;
                            LPM.addPass(LoopPassLoopLength());
                            llvm::FunctionPassManager FPM;
                            FPM.addPass(FunctionPassBranchCounter());
                            FPM.addPass(llvm::createFunctionToLoopPassAdaptor(std::move(LPM)));
                            MPM.addPass(ModulePassFuncList());
                            MPM.addPass(llvm::createModuleToFunctionPassAdaptor(std::move(FPM)));
                            return true;
                        }
                        return false;
                    });
            }};
}

// This is the core interface for pass plugins. It guarantees that 'opt' will
// be able to recognize HelloWorld when added to the pass pipeline on the
// command line, i.e. via '-passes=hello-world'
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getHelloWorldPluginInfo();
}