class Compiler:
	def build(self, code):
		print("Source code: {}".format(code))
		code = self.preprocess(code)
		code = self.compile(code)
		code = self.assemble(code)
		code = self.link(code)
