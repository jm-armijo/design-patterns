public class App2 {
    private Logger logger;

    App2() {
        logger = Logger.getInstance();
    }

    void doJob() {
		// do something
		logger.log("App2 just finished something");
    }
}
