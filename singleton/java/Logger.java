public class Logger {
	private static final Logger instance = new Logger();

	private Logger() {
		System.out.println("Initializing logger...");
		// Do somthing
		System.out.println("Done\n");
	}

	public static Logger getInstance() {
		return instance;
	}

	public void log(String message) {
		System.out.println(message);
	}
}
