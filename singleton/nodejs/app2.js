const Logger = require('./logger.js');

class App2 {

    constructor() {
        this.logger = Logger.instance();
    }

    doJob() {
        // do something
        this.logger.log("App2 just finished something");
    }
}

module.exports = App2;
