#include "compiler.cpp"
#include <bitset>

class CompilerARM : public Compiler {

public:

    CompilerARM() {
		std::cout << "\n\nInitialize ARM Compiler\n\n";
	}

	std::string preprocess(const std::string &code) {
		std::string output = "void main() { cout << 32767 << endl; }";
		std::cout << "ARM preprocesor generated '" << output << "'" << std::endl;
		return output;
	}

	std::string compile(const std::string &code) {
		std::string output = ".asciz \"32767\\n\"";
		std::cout << "ARM compiler generated '" << output << "'" << std::endl;
		return output;
	}

	std::string assemble(const std::string &code) {
		std::string output = toBinary(code);
		std::cout << "ARM assembler generated '" << output << "'" << std::endl;
		return output;
	}

	std::string link(const std::string &code) {
		std::string output = toBinary("CompilerARM")+code;
		std::cout << "ARM linker generated '" << output << "'" << std::endl;
		return output;
	}

private:

    std::string toBinary(const std::string &code) {
        std::string output;
        for(char const &char_value : code) {
            output += std::bitset<8>(char_value).to_string();
        }

        return output.substr(0,12);
    }
};
