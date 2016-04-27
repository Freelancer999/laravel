<html>
<title>Source India</title>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="{{ URL::asset('assets/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ URL::asset('assets/css/slider.css') }}" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" href="{{ URL::asset('assets/css/font-awesome.css') }}">
<link rel="stylesheet" href="{{ URL::asset('assets/css/font-awesome.min.css') }}">
<link rel="stylesheet" href="{{ URL::asset('assets/css/animate.css') }}">
<link rel="stylesheet" href="{{ URL::asset('assets/css/style.css') }}">
<script src="{{ URL::asset('assets/js/jquery.min.js') }}"></script>
<script src="{{ URL::asset('assets/js/bootstrap.min.js') }}"></script>

</head>
<body>
  <div id="container-menu">
  <header>
	<div class="container">
	<div class="row">
	<div class="col-md-2">
	<a href="index.html"><img src="assets/img/logo.jpg" class="logo-img" /></a>
	</div>
	<div class="col-md-10 top-right-link"><div class="pull-right text-right" style="margin-bottom:5px;">&nbsp;&nbsp;<a href="" class="top-link">HOME</a> | <a href="" class="top-link">FAQ'S</a> | <a href="" class="top-link">SITEMAP</a><br/><br/>
	<a href="" class="pull-right text-right right-top-text" style="margin-top:-18px;"><strong>The Synthetic & Rayon Textiles Export Promotion Council</strong></a>
	</div>
	</div>
	
	</div></div>
		<nav class="navbar navbar-inverse">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!--<a class="navbar-brand" href="index.html">Start Bootstrap</a>-->
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li>
							<a href="index.html" style="color:orange;">About Event</a>
						</li>
						<li>
							<a href="company_profile.html" style="color:white;">Exibitors</a>
						</li>
						<li>
							<a href="our_product.html" style="color:white;">Buyer Area</a>
						</li>
						<li>
							<a href="contact.php" style="color:white;">Product on display</a>
						</li>
						<li>
							<a href="contact.php" style="color:white;">Contact Us</a>
						</li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container -->
		</nav>

	</header>

@yield('content')
<footer class="wow slideInLeft">
	<div class="text-center"><a href="">Home</a>&nbsp; | &nbsp;<a href="">FAQ's</a>&nbsp; | &nbsp;<a href="">Contact Us</a></div>
	<div class="container"><div class="row"><div class="copy col-md-5">&copy; 2016 Source India. All rights reserved.</div><div class="pull-right" style="">Created & Maintained by <a href="http://www.regalinfonet.com" target="_blank" class="designer">Regal InfoNet</a></div></div></div>
</footer>
</body>
</html>
