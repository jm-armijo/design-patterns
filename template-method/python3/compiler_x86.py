from compiler import *

class CompilerX86(Compiler):
	def __init__(self):
		super()
		print("\n\nInitialize X86 Compiler\n\n")

	def preprocess(self, code):
		output = 'void main() { cout << 2147483647 << endl; }'
		print("X86 preprocesor generated '{}'".format(output))
		return output

	def compile(self, code):
		output = 'msg  db "2147483647", 0x0d, 0x0a, "$"'
		print("X86 compiler generated '{}'".format(output))
		return output

	def assemble(self, code):
		output = self._to_binary(code)
		print("X86 assembler generated '{}'".format(output))
		return output

	def link(self, code):
		output = self._to_binary("CompilerX86")+code
		print("X86 linker generated '{}'".format(output))
		return output

	def _to_binary(self, code):
		code_bytes = ''
		for char in code:
			code_bytes += format(ord(char), '08b')
		return code_bytes[:16]
