require_relative 'compiler-x86'
require_relative 'compiler-arm'

code = 'void main() { cout << INT_MAX << endl; }'

compiler_x86 = CompilerX86.new()
compiler_x86.build(code)

compiler_arm = CompilerARM.new()
compiler_arm.build(code)
