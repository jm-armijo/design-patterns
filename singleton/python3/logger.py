# The fact that methods cannot be private in python make the implementation of this design
# patter a bit artificial to my taste. I have added it below nonetheless.

class Logger:
	__instance = None

	def instance():
		if Logger.__instance == None:
			Logger()

		return Logger.__instance


	def __init__(self):
		if Logger.__instance == None:
			Logger.__instance = self
			print("Initializing logger...")
			# Do somthing
			print("Done\n")
		else:
			raise Exception("Trying to instantiate a new instance of Logger.")

	@staticmethod
	def log(message):
		print(message)
		
