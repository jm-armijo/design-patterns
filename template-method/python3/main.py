from compiler_x86 import *
from compiler_arm import *

code = 'void main() { cout << INT_MAX << endl; }'

compiler_x86 = CompilerX86()
compiler_x86.build(code)

compiler_arm = CompilerARM()
compiler_arm.build(code)
