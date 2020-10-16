#include "logger.cpp"

class App2 {

private:

    std::shared_ptr<Logger> logger;

public:

    App2() {
        logger = Logger::instance();
    }

    void doJob() {
		// do something
		logger->log("App2 just finished something");
    }
};
