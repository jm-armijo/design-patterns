public class App1 {
    private Logger logger;

    App1() {
        logger = Logger.getInstance();
    }

    void doJob() {
		// do something
		logger.log("App1 did something");
    }
}
