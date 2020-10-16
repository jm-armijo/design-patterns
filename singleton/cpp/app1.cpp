#include "logger.cpp"

class App1 {

private:

    std::shared_ptr<Logger> logger;

public:

    App1() {
        logger = Logger::instance();
    }

    void doJob() {
		// do something
		logger->log("App1 did something");
    }
};
