#ifndef ANALYSIS_MANAGER_H
#define ANALYSIS_MANAGER_H

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

namespace {
    struct ModulePassFuncList : public llvm::PassInfoMixin<ModulePassFuncList> {
        // Main entry point, takes IR unit to run the pass on (&F) and the
        // corresponding pass manager (to be queried if need be)
        llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &);

        // Without isRequired returning true, this pass will be skipped for functions
        // decorated with the optnone LLVM attribute. Note that clang -O0 decorates
        // all functions with optnone.
        static bool isRequired();
    };

    struct FunctionPassBranchCounter : public llvm::PassInfoMixin<FunctionPassBranchCounter> {
        llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

        static bool isRequired();
    };

    struct LoopPassLoopLength : public llvm::PassInfoMixin<LoopPassLoopLength> {
        llvm::PreservedAnalyses run(llvm::Loop &L, llvm::LoopAnalysisManager &AM,
                                    llvm::LoopStandardAnalysisResults &AR, llvm::LPMUpdater &U);

        static bool isRequired();
    };
} // namespace

#endif // ANALYSIS_MANAGER_H