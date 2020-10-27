require_relative 'compiler'

class CompilerARM < Compiler
	def initialize()
		puts("\n\nInitialize ARM Compiler\n\n")
	end

	def preprocess(code)
		output = 'void main() { cout << 32767 << endl; }'
		puts("ARM preprocesor generated '#{output}'")
		return output
	end

	def compile(code)
		output = '.asciz "32767\n"'
		puts("ARM compiler generated '#{output}'")
		return output
	end

	def assemble(code)
		output = _to_binary(code)
		puts("ARM assembler generated #{output}")
		return output
	end

	def link(code)
		output = _to_binary("CompilerARM")+code
		puts("ARM linker generated #{output}")
		return output
	end

private

	def _to_binary(code)
		return code.bytes.map{|value| value.to_i.to_s(2)}.join[0,12]
	end
end
