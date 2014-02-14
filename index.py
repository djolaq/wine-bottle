import cellarDAO

from bottle import route, run, template, request, redirect, static_file, error, get, post, response
from bottle import jinja2_view as view, jinja2_template as template

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
	return template('error/404')


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

@post('/bottle/delete')
def delete_bottle():
	id_bottle = request.POST['id']

	if cellar.delete_bottle(id_bottle):
		#success OK
		response.status = 200
	else:
		#error
		response.status = 500

cellar = cellarDAO.CellarDAO()

run(host='localhost', port=8080, debug=True)
