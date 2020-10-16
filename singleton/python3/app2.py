from logger import Logger

class App2:
	def __init__(self):
		self.logger = Logger.instance()

	def doJob(self):
		# do something
		self.logger.log("App2 just finished something")
