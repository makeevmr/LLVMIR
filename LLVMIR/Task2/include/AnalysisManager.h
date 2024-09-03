#ifndef ANALYSIS_MANAGER_H
#define ANALYSIS_MANAGER_H

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

namespace {
    struct FunctionPassPhiNodes : public llvm::PassInfoMixin<FunctionPassPhiNodes> {
        llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

        static bool isRequired();
    };

    struct FunctionPassLocalVariables : public llvm::PassInfoMixin<FunctionPassLocalVariables> {
        llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

        static bool isRequired();
    };
} // namespace

#endif // ANALYSIS_MANAGER_H