abstract class Compiler {

    void build(String code) {
		print("Source code: $code\n");
		code = preprocess(code);
		code = compile(code);
		code = assemble(code);
		code = link(code);
	}

    String preprocess(String code);
    String compile(String code);
    String assemble(String code);
    String link(String code);
}
