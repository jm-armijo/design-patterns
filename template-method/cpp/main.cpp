#include "compiler-x86.cpp"
#include "compiler-arm.cpp"

int main() {
    std::string code = "void main() { cout << INT_MAX << endl; }";

    CompilerX86 compiler_x86;
    compiler_x86.build(code);

    CompilerARM compiler_arm;
    compiler_arm.build(code);

    return 0;
}
