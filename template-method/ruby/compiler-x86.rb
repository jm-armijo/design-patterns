require_relative 'compiler'

class CompilerX86 < Compiler
	def initialize()
		puts("\n\nInitialize X86 Compiler\n\n")
	end

	def preprocess(code)
		output = 'void main() { cout << 2147483647 << endl; }'
		puts("X86 preprocesor generated '#{output}'")
		return output
	end

	def compile(code)
		output = 'msg  db "2147483647", 0x0d, 0x0a, "$"'
		puts("X86 compiler generated '#{output}'")
		return output
	end

	def assemble(code)
		output = _to_binary(code)
		puts("X86 assembler generated '#{output}'")
		return output
	end

	def link(code)
		output = _to_binary("CompilerX86")+code
		puts("X86 linker generated '#{output}'")
		return output
	end

private

	def _to_binary(code)
		return code.bytes.map{|value| value.to_i.to_s(2)}.join[0,16]
	end
end
