import 'logger.dart';

class App1 {
    Logger logger;

    App1() {
        logger = Logger();
    }

    void doJob() {
        // do something
        print("App1 did something");
    }
}
