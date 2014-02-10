import pymongo
import cellarDAO

from bottle import route, run, template, request, redirect, static_file, error, get

# Static Routes
@get('/<filename:re:.*\.js>')
def javascripts(filename):
    return static_file(filename, root='public/js')

@get('/<filename:re:.*\.css>')
def stylesheets(filename):
    return static_file(filename, root='public/css')

@get('/<filename:re:.*\.(jpg|png|gif|ico)>')
def images(filename):
    return static_file(filename, root='public/img')

@get('/<filename:re:.*\.(eot|ttf|woff|svg)>')
def fonts(filename):
    return static_file(filename, root='public/fonts')

@error(404)
def error404(error):
	return 'Please dont stay here !'


#route index, we will show all our bottle of wine
@route('/')
def wine_index():
	bottle_list = cellar.find_bottles()
	return template('home', dict(bottles = bottle_list))

#Post new bottle of wine
@route('/bottle/new', method="POST")
def add_bottle():
	name = request.forms.get('name')
	color = request.forms.get('color')
	year = request.forms.get('year')

	cellar.insert_bottle(name, color, year)

	redirect('/')

#Connection setup
connection_address = "mongodb://localhost"

connection = pymongo.MongoClient(connection_address)

database = connection.bottles

cellar = cellarDAO.CellarDAO(database)

run(host='localhost', port=8080, debug=True)