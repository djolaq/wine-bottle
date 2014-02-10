<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
    	<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Wine bottle application</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="bootstrap.min.css">
        <style>
            body {
                padding-top: 50px;
                padding-bottom: 20px;
            }
        </style>
        <link rel="stylesheet" href="bootstrap-theme.min.css">
        <link rel="stylesheet" href="main.css">

        <script src="vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
    % include('navbar.tpl')

    <div class="container">
     	<div class="row">
	        <div class="col-lg-8">
	        	<h2>All my bottles of wine</h2>
	          	<table class="table table-striped table-hover">
	          	<thead>
	          		<tr>
	          			<td>Name</td>
	          			<td>Color</td>
	          			<td>Year</td>
	          		</tr>
	          	</thead>
	          	<tbody>
	          	% for bottle in bottles:
	          		<tr>
	          			<td>{{bottle['name']}}</td>
	          			<td>{{bottle['color']}}</td>
	          			<td>{{bottle['year']}}</td>
	          		</tr>
	          	% end
	          	</tbody>
	          	</table>
	        </div>
	        <div class="col-lg-4">
	          	<h2>Add bottle</h2>
	        	<form id="formAddBottle" role="form" method="POST" action="/bottle/new">
	        		<div class="form-group">
	        			<label for="name">Name</label>
	        			<input type="text" name="name" id="name" class="form-control" placeholder="name of bottle"/>
	        		</div>
	        		<div class="form-group">
	        			<label for="color">Color</label>
	        			<select class="form-control" id="color" name="color">
	        				<option>red</option>
	        				<option>white</option>
	        				<option>rose</option>
	        			</select>
	        		</div>
	        		<div class="form-group">
	        			<label for="year">Year</label>
	        			<input type="text" name="year" id="year" class="form-control" placeholder="year, exemple : 1989"/>
	        		</div>
	        		<button type="button" class="btn btn-default" id="buttonSubmitNewBottle">
	        			<span class="glyphicon glyphicon-plus"></span> Add bottle
	        		</button>
	        	</form>
	       	</div>
     	</div>

      	<hr>

      	<footer>
        	<p>&copy; djolaq 2013</p>
      	</footer>
    </div>       


    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="vendor/jquery-1.10.1.min.js"><\/script>')</script>

    <script src="vendor/bootstrap.min.js"></script>

    <script src="main.js"></script>

    <script>
        var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
        (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
        g.src='//www.google-analytics.com/ga.js';
        s.parentNode.insertBefore(g,s)}(document,'script'));
    </script>

    </body>
</html>
