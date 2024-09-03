#ifndef PRINT_BLOCK_NUMBER
#define PRINT_BLOCK_NUMBER

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include <cstdint>
#include <string>
#include <unordered_map>

namespace {
    struct ModulePassInjPrintf : public llvm::PassInfoMixin<ModulePassInjPrintf> {
    public:
        bool runOnModule(llvm::Module &M);

        llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &);

        static bool isRequired();
    };
} // namespace

#endif // PRINT_BLOCK_NUMBER
