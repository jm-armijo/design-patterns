require_relative 'logger'

class App2
	def initialize()
		@logger = Logger.instance
	end

	def do_job()
		# do something
		@logger.log("App2 just finished something")
	end
end
