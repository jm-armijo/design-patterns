import "compiler.dart";

class CompilerX86 extends Compiler {

    CompilerX86() {
		print( "\n\nInitialize X86 Compiler\n");
	}

    @override
	String preprocess(String code) {
		String output = "void main() { cout << 2147483647 << endl; }";
		print( "X86 preprocesor generated '$output'");
		return output;
	}

    @override
	String compile(String code) {
		String output = "msg  db \"2147483647\", 0x0d, 0x0a, \"\$\"";
		print( "X86 compiler generated '$output'");
		return output;
	}

    @override
	String assemble(String code) {
        String output = _toBinary(code);
		print( "X86 assembler generated '$output'");
		return output;
	}

    @override
	String link(String code) {
		String output = _toBinary("CompilerX86")+code;
		print( "X86 linker generated '$output'");
		return output;
	}

    String _toBinary(String code) {
        return code.codeUnits.map((int unit) => unit.toRadixString(2)).toList().join().substring(0,16);
    }
}
