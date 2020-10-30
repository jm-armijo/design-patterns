#ifndef ___COMPILER___
#define ___COMPILER___

#include <string>
#include <iostream>

class Compiler {

public:

    void build(std::string code) {
		std::cout << "Source code: " << code << std::endl;
		code = preprocess(code);
		code = compile(code);
		code = assemble(code);
		code = link(code);
	}

private:

    virtual std::string preprocess(const std::string &code) = 0;
    virtual std::string compile(const std::string &code) = 0;
    virtual std::string assemble(const std::string &code) = 0;
    virtual std::string link(const std::string &code) = 0;
};

#endif // ___COMPILER___
