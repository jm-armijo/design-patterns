// The fact that the constructor methods cannot be private in node.js make the
// implementation of this design patter far from perfect. Specifically, the
// constructor can still be sucessfully invoked directly at least once.


class Logger {
    static final Logger _instance = Logger._internal();   

    factory Logger() {
        return _instance;
    }

    void log(message) {
        print(message);
    }

    Logger._internal() {
		print("Initializing logger...");
		// Do something
		print("Done\n");
    }
}
