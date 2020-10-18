// The fact that the constructor methods cannot be private in node.js make the
// implementation of this design patter far from perfect. Specifically, the
// constructor can still be sucessfully invoked directly at least once.


class Logger {
    static #_instance;

    constructor() {
        if (Logger.#_instance !== undefined) {
             throw ("Trying to create a new instance of Logger.");
        }
        console.log('build');
    }

    static instance() {
        if (Logger.#_instance === undefined) {
            Logger.#_instance = new Logger();
        }

        return Logger.#_instance;
    }

    log(message) {
        console.log(message);
    }
}

module.exports = Logger;
