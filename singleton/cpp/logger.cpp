#include <iostream>
#include <memory>

#ifndef ___LOGGER___
#define ___LOGGER___

class Logger {

private:

    Logger() {
		std::cout << "Initializing logger...\n";
		// Do something
		std::cout << "Done\n\n";
    }

public:

    static std::shared_ptr<Logger> instance() {
        static std::shared_ptr<Logger> _instance(new Logger());
        return _instance;
    }

    void log(std::string message) {
        std::cout << message << std::endl;
    }

    // Delete copy constructor and assignment operator
    Logger(Logger const&) = delete;
    void operator=(Logger const&) = delete;
};

#endif // ___LOGGER___
