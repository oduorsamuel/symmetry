<html>
<head>
<title>Allan</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/php; charset=utf-8" />
<link href='//fonts.googleapis.com/css?family=Merriweather+Sans' rel='stylesheet' type='text/css'>
<!--slider-->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/bootstrap/css/bootstrap-reboot.min.css" type="text/css" media="all" />
<style>
 /* h3{
	color:#C94848;
	margin-bottom: .5em;
	font-size:1.5em;
	line-height: 1.2;
	font-weight : normal;
	margin-top: 0px;
	letter-spacing: -1px;
} */
</style>
<script src="js/modernizr.js"></script>
<!-- jQuery -->
 <script src="js/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.min.js">\x3C/script>')</script>
  <!-- FlexSlider -->
  <script defer src="js/jquery.flexslider.js"></script>
  <script type="text/javascript">
    $(function(){
      SyntaxHighlighter.all();
    });
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>
</head>
<div class="header-box"></div>
<div class="wrap"> 
	<div class="total">
		<div class="header">
			<div class="header-bot">
				<div class="logo">
					<a href="index.php"><img src="images/sam2.png" alt=""/></a>
				</div>
				<ul class="follow_icon">
					<li><a href="#"><img src="images/fb1.png" alt=""></a></li>
					<li><a href="#"><img src="images/rss.png" alt=""></a></li>
					<li><a href="#"><img src="images/tw.png" alt=""></a></li>
					<li><a href="#"><img src="images/g+.png" alt=""></a></li>
				</ul>
			    <div class="clear"></div> 
			</div>
			<div class="search-bar">
		 <div class="clear"></div>
    		</div>
			<div class="clear"></div> 
		 </div>	
		<div class="menu"> 	
			<div class="top-nav">
				<ul>
					
					<li class="active"><a href="index.php">Home</a></li>
					<li><a href="gallery.php">Gallery</a></li>|
					<li><a href="services.php">Services</a></li> |
					<li><a href="about.php">About</a></li> |
					<!-- <li><a href="contact.php">Contact</a></li>| -->
					<li><a href="client/login.php">Login</a></li>
				</ul>
			</div>
        </div>
        <body>		