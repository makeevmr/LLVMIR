#include "BasicBlockTransform.h"

// FunctionPassSplitBB
llvm::PreservedAnalyses FunctionPassSplitBB::run(llvm::Function &F,
                                                 llvm::FunctionAnalysisManager &) {
    bool is_modified = false;
    llvm::BasicBlock *curr_bb_ptr = &*F.begin();
    while (curr_bb_ptr != nullptr) {
        llvm::BasicBlock::iterator curr_inst_iter = curr_bb_ptr->begin();
        int curr_block_size = 1;
        while (curr_inst_iter != curr_bb_ptr->end() && curr_block_size < MAX_BLOCK_SIZE) {
            ++curr_inst_iter;
            ++curr_block_size;
        }
        if (curr_inst_iter == curr_bb_ptr->end()) {
            curr_bb_ptr = curr_bb_ptr->getNextNode();
        } else {
            curr_bb_ptr = curr_bb_ptr->splitBasicBlock(curr_inst_iter);
            is_modified = true;
        }
    }
    return is_modified ? llvm::PreservedAnalyses::none() : llvm::PreservedAnalyses::all();
}

bool FunctionPassSplitBB::isRequired() { return true; }

// FunctionPassInsertDeadBB
llvm::PreservedAnalyses FunctionPassInsertDeadBB::run(llvm::Function &F,
                                                      llvm::FunctionAnalysisManager &) {
    llvm::BasicBlock *first_bb_ptr = &*F.begin();
    llvm::BasicBlock *second_bb_ptr = first_bb_ptr->getNextNode();
    bool is_modified = false;
    if (second_bb_ptr) {
        is_modified = true;
        llvm::BasicBlock *dead_block = llvm::SplitEdge(first_bb_ptr, second_bb_ptr);
        llvm::BasicBlock::iterator first_bb_iter = first_bb_ptr->end();
        --first_bb_iter;
        llvm::BranchInst::Create(second_bb_ptr, dead_block,
                                 llvm::ConstantInt::get(F.getContext(), llvm::APInt(1, 1)),
                                 &*first_bb_iter);
        first_bb_iter->eraseFromParent();
        insertInstToBB(F, dead_block);
    }
    return is_modified ? llvm::PreservedAnalyses::none() : llvm::PreservedAnalyses::all();
}

bool FunctionPassInsertDeadBB::isRequired() { return true; }

void FunctionPassInsertDeadBB::insertInstToBB(const llvm::Function &F, llvm::BasicBlock *bb_ptr) {
    llvm::IRBuilder<> builder(F.getContext());
    builder.SetInsertPoint(&*bb_ptr->begin());
    llvm::LLVMContext &fn_context = F.getContext();
    llvm::IntegerType *i16_ptr = llvm::IntegerType::get(fn_context, 16);
    llvm::IntegerType *i32_ptr = llvm::IntegerType::get(fn_context, 32);
    llvm::ConstantInt *i16_val_ptr = llvm::ConstantInt::get(fn_context, llvm::APInt(16, 47));
    llvm::ConstantInt *i32_val_ptr = llvm::ConstantInt::get(fn_context, llvm::APInt(32, 13412));
    builder.CreateStore(i16_val_ptr, builder.CreateAlloca(i16_ptr));
    builder.CreateStore(i32_val_ptr, builder.CreateAlloca(i32_ptr));
}

llvm::PassPluginLibraryInfo getModifyBasicBlockPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "TransformationManager", LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                    [](llvm::StringRef Name, llvm::FunctionPassManager &FPM,
                       llvm::ArrayRef<llvm::PassBuilder::PipelineElement>) {
                        if (Name == "modify-block") {
                            FPM.addPass(FunctionPassSplitBB());
                            FPM.addPass(FunctionPassInsertDeadBB());
                            return true;
                        }
                        return false;
                    });
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getModifyBasicBlockPluginInfo();
}
