import './logger.dart';

class App2 {
    Logger logger;

    App2() {
        logger = Logger();
    }

    void doJob() {
        // do something
        print("App2 just finished something");
    }
}
