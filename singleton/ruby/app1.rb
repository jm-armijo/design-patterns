require_relative 'logger'

class App1
	def initialize()
		@logger = Logger.instance
	end

	def do_job()
		# do something
		@logger.log("App1 did something")
	end
end
