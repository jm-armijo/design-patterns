require 'singleton'

class Logger
	include Singleton

	def initialize()
		puts("Initializing logger...")
		# Do somthing
		print("Done\n\n")
	end

	def log(message)
		puts(message)
	end
end
