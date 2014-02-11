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
        <link rel="stylesheet" href="icomoon.css">
        <link rel="stylesheet" href="main.css">

        <script src="vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
    % include('navbar.tpl')

   <div class="jumbotron">
	 	<div class="container">
	        
	        <h1>Page not found</h1>
	          	
	        <p>Go back, you're drunk. The page you are calling is not found. You better have to go to <a href="/">homepage</a>.</p>

	        <p>
	        	<a class="btn btn-primary btn-lg" role="button" href="/">
	        		<span class="icon-home"></span> Go home
	        	</a>
	        </p>	        

		  	<hr>

	 	</div>
	</div>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="vendor/jquery-1.10.1.min.js"><\/script>')</script>

    <script src="vendor/bootstrap.min.js"></script>
    <script src="vendor/jquery.validate.min.js"></script>
    <script src="vendor/bootstrap-growl.min.js"></script>

    <script src="main.js"></script>

    <script>
        var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
        (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
        g.src='//www.google-analytics.com/ga.js';
        s.parentNode.insertBefore(g,s)}(document,'script'));
    </script>

    </body>
</html>
