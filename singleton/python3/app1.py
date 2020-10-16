from logger import *

class App1:
	logger = None

	def __init__(self):
		self.logger = Logger.instance()

	def doJob(self):
		# do something
		self.logger.log("App1 did something")
