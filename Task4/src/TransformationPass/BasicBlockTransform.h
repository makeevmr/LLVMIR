#ifndef BASIC_BLOCK_TRANSFORM
#define BASIC_BLOCK_TRANSFORM

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"

static const int MAX_BLOCK_SIZE = 5;

namespace {
    struct FunctionPassSplitBB : public llvm::PassInfoMixin<FunctionPassSplitBB> {
    public:
        llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

        static bool isRequired();
    };

    struct FunctionPassInsertDeadBB : public llvm::PassInfoMixin<FunctionPassInsertDeadBB> {
    public:
        llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

        static bool isRequired();

    private:
        static void insertInstToBB(const llvm::Function &F, llvm::BasicBlock *bb_ptr);
    };

} // namespace

#endif // BASIC_BLOCK_TRANSFORM