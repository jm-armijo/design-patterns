#include "compiler.cpp"
#include <bitset>

class CompilerX86 : public Compiler {

public:

    CompilerX86() {
		std::cout << "\n\nInitialize X86 Compiler\n\n";
	}

	std::string preprocess(const std::string &code) {
		std::string output = "void main() { cout << 2147483647 << }l; }";
		std::cout << "X86 preprocesor generated '" << output << "'" << std::endl;
		return output;
	}

	std::string compile(const std::string &code) {
		std::string output = "msg  db \"2147483647\", 0x0d, 0x0a, \"$\"";
		std::cout << "X86 compiler generated '" << output << "'" << std::endl;
		return output;
	}

	std::string assemble(const std::string &code) {
		std::string output = toBinary(code);
		std::cout << "X86 assembler generated '" << output << "'" << std::endl;
		return output;
	}

	std::string link(const std::string &code) {
		std::string output = toBinary("CompilerX86")+code;
		std::cout << "X86 linker generated '" << output << "'" << std::endl;
		return output;
	}

private:

    std::string toBinary(const std::string &code) {
        std::string output;
        for(char const &char_value : code) {
            output += std::bitset<8>(char_value).to_string();
        }

        return output.substr(0,16);
    }
};
