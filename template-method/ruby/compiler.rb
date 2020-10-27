class Compiler
	attr_reader :out

	def build(code)
		puts("Source code: #{code}")
		code = preprocess(code)
		code = compile(code)
		code = assemble(code)
		code = link(code)
	end

	# Subclasses are expected to implement methods preprocess, compile,
	# assemble and link. Not using the NotImplementedError exception as
	# it should be raised when the platform does not support a feature.
	# https://ruby-doc.org/core-2.7.0/NotImplementedError.html
end
