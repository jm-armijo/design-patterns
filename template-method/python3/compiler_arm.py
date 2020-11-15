from compiler import *

class CompilerARM(Compiler):
	def __init__(self):
		super()
		print("\n\nInitialize ARM Compiler\n\n")

	def preprocess(self, code):
		output = 'void main() { cout << 32767 << endl; }'
		print("ARM preprocesor generated '{}'".format(output))
		return output

	def compile(self, code):
		output = '.asciz "32767\\n"'
		print("ARM compiler generated '{}'".format(output))
		return output

	def assemble(self, code):
		output = self._to_binary(code)
		print("ARM assembler generated {}".format(output))
		return output

	def link(self, code):
		output = self._to_binary("CompilerARM")+code
		print("ARM linker generated {}".format(output))
		return output

	def _to_binary(self, code):
		code_bytes = ''
		for char in code:
			code_bytes += format(ord(char), '08b')
		return code_bytes[:12]
