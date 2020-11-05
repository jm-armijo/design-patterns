import "compiler-x86.dart";
import "compiler-arm.dart";

int main() {
    String code = "void main() { cout << INT_MAX << endl; }";

    CompilerX86 compiler_x86 = CompilerX86();
    compiler_x86.build(code);

    CompilerARM compiler_arm = CompilerARM();
    compiler_arm.build(code);
}
