#include "../include/AnalysisManager.h"

// FunctionPassPhiNodes
llvm::PreservedAnalyses FunctionPassPhiNodes::run(llvm::Function &F,
                                                  llvm::FunctionAnalysisManager &) {
    llvm::outs() << "Phi nodes in function: " << F.getName() << '\n';
    for (const llvm::BasicBlock &BB : F) {
        llvm::outs() << "\tBlock ";
        BB.printAsOperand(llvm::outs(), false);
        llvm::outs() << '\n';
        int phi_nodes_counter = 0;
        for (const llvm::Instruction &I : BB) {
            if (llvm::isa<llvm::PHINode>(I)) {
                llvm::outs() << "\t\tPhi Instruction ";
                I.printAsOperand(llvm::outs(), false);
                llvm::outs() << " has " << I.getNumOperands() << " operands\n";
                ++phi_nodes_counter;
            }
        }
        llvm::outs() << "\t\tPhi nodes amount " << phi_nodes_counter << '\n';
    }
    return llvm::PreservedAnalyses::all();
}

bool FunctionPassPhiNodes::isRequired() { return true; }

// FunctionPassLocalVariables
llvm::PreservedAnalyses FunctionPassLocalVariables::run(llvm::Function &F,
                                                        llvm::FunctionAnalysisManager &) {
    llvm::outs() << "Local variables in function: " << F.getName() << '\n';
    for (const llvm::BasicBlock &BB : F) {
        llvm::outs() << "\tBlock ";
        BB.printAsOperand(llvm::outs(), false);
        llvm::outs() << '\n';
        int local_variables_counter = 0;
        for (const llvm::Instruction &I : BB) {
            if (const llvm::DbgVariableIntrinsic *DVI =
                    llvm::dyn_cast<llvm::DbgVariableIntrinsic>(&I)) {
                if (DVI->isAddressOfVariable()) {
                    llvm::DILocalVariable *loc_var = DVI->getVariable();
                    llvm::Value *address = llvm::dyn_cast<llvm::DbgDeclareInst>(DVI)->getAddress();
                    ++local_variables_counter;
                    llvm::outs() << "\t\tVariable with name \"" << loc_var->getName()
                                 << "\" declared in IR as";
                    address->dump();
                }
            }
        }
        llvm::outs() << "\t\tLocal variables amount: " << local_variables_counter << '\n';
    }
    return llvm::PreservedAnalyses::all();
}

bool FunctionPassLocalVariables::isRequired() { return true; }

llvm::PassPluginLibraryInfo getHelloWorldPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "AnalysisManager", LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                    [](llvm::StringRef Name, llvm::FunctionPassManager &FPM,
                       llvm::ArrayRef<llvm::PassBuilder::PipelineElement>) {
                        if (Name == "simple-analysis") {
                            FPM.addPass(FunctionPassPhiNodes());
                            FPM.addPass(FunctionPassLocalVariables());
                            return true;
                        }
                        return false;
                    });
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getHelloWorldPluginInfo();
}