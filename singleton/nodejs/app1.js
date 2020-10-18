const Logger = require('./logger.js');

class App1 {

    constructor() {
        this.logger = Logger.instance();
    }

    doJob() {
        // do something
        this.logger.log("App1 did something");
    }
}

module.exports = App1;
