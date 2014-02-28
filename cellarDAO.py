import pymongo
import string

from bson.objectid import ObjectId

class CellarDAO(object):

	connection_address = "mongodb://localhost"

	#Init class with mongo database
	def __init__(self):
		#Connection setup
		connection = pymongo.MongoClient(self.connection_address)

		self.db = connection.bottles
		self.bottles = self.db.bottles

	#Get all bottles in cellar 
	def find_bottles(self):
		current_bottles = []
		for bottle in self.bottles.find():
			current_bottles.append({
				'id':bottle['_id'], 
				'name':bottle['name'], 
				'color':bottle['color'], 
				'year':bottle['year'],
				'country':bottle['country']
			})

		return current_bottles

	#Add new bottle of wine in cellar
	def insert_bottle(self, name, color, year, country):
		newbottle = {'name':name, 'color':color, 'year':year, 'country':country}
		self.bottles.insert(newbottle)

	#Delete a bottle
	def delete_bottle(self, id):
		if self.bottles.find_one({'_id':ObjectId(id)}):
			self.bottles.remove({'_id':ObjectId(id)})
			return True
		else:
			return False