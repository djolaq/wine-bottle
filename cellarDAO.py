import string

class CellarDAO(object):

	#Init class with mongo database
	def __init__(self, database):
			self.db = database
			self.bottles = database.bottles

	#Get all bottles in cellar 
	def find_bottles(self):
		current_bottles = []
		for bottle in self.bottles.find():
			current_bottles.append({'name':bottle['name'], 'color':bottle['color'], 'year':bottle['year']})

		return current_bottles

	#Add new bottle of wine in cellar
	def insert_bottle(self, name, color, year):
		newbottle = {'name':name, 'color':color, 'year':year}
		self.bottle.insert(newbottle)