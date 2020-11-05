import "compiler.dart";

class CompilerARM extends Compiler {

    CompilerARM() {
		print( "\n\nInitialize ARM Compiler\n");
	}

    @override
	String preprocess(String code) {
		String output = "void main() { cout << 32767 << endl; }";
		print( "ARM preprocesor generated '$output'");
		return output;
	}

    @override
	String compile(String code) {
		String output = ".asciz \"32767\\n\"";
		print( "ARM compiler generated '$output'");
		return output;
	}

    @override
	String assemble(String code) {
        String output = _toBinary(code);
		print( "ARM assembler generated '$output'");
		return output;
	}

    @override
	String link(String code) {
		String output = _toBinary("CompilerARM")+code;
		print( "ARM linker generated '$output'");
		return output;
	}

    String _toBinary(String code) {
        return code.codeUnits.map((int unit) => unit.toRadixString(2)).toList().join().substring(0,12);
    }
}
