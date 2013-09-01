<%@ page contentType="text/html;charset=UTF-8" language="java" %> 

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

<title>3D Art</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="lib/responsiveslides.js"></script>


<!-- main style -->
<link rel="stylesheet" type="text/css" href="css/art.css"></link>

<!-- Fonts -->
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Josefin+Sans">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Lusitana">

<!-- Slider CSS -->
<link rel="stylesheet" type="text/css" href="css/slider/responsiveslides.css" />
<link rel="stylesheet" type="text/css" href="css/slider/slider.css" />

<!-- Popup CSS --> 
<link rel="stylesheet" href="css/popup.css" type="text/css" media="all" />

<!-- Bind the galleries to the slider system -->
  <script>
    // You can also use "$(window).load(function() {"
    $(function () {

      // Slideshow 1
      $("#slider1").responsiveSlides({
        maxwidth: 500,
        speed: 800,
        nav: true,
        pager: true,
        namespace: "centered-btns"
      });

      // Slideshow 2
      $("#slider2").responsiveSlides({
    	  maxwidth: 500,
          speed: 800,
          nav: true,
          pager: true,
          namespace: "centered-btns"
      });

      // Slideshow 3
      $("#slider3").responsiveSlides({
    	  maxwidth: 500,
          speed: 800,
          nav: true,
          pager: true,
          namespace: "centered-btns"
      });

    });
  </script>

</head>

<body>

<!--  Main title -->
<div id="container">
	<div id="mainborder">
		<div id="content_container">
			<header id="header" class="clearfix">
					<span id="text-3d">
						<span class="char0">3</span>
						<span class="char1">D</span>
					</span> 
			</header>
			<header id="header2" class="clearfix">
					<span id="text-art">
						<span class="char2">A</span>
						<span class="char2">R</span>
						<span class="char2">T</span>
					</span> 
			</header>
		</div>
	</div>
</div>

<!--  Galleries -->
<div id="toPopup">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
		<ul class="rslides" id="slider1">
		  <li>
		  	<img src="images/one.png" alt="">
		  	<p class="caption">Caption 1</p>
		  </li>
		  <li>
		  	<img src="images/Background_Tilable.png" alt="">
		  	<p class="caption">Caption 1</p>
		  </li>
		</ul>
</div>

<div id="toPopup1">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
		<ul class="rslides" id="slider2">
		  <li>
		  	<img src="images/SideCracks.png" alt="">
		  	<p class="caption">Caption 2</p>
		  </li>
		  <li>
		  	<img src="images/one.png" alt="">
		  	<p class="caption">Caption 2</p>
		  </li>
		</ul>
</div>

<div id="toPopup2">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
		<ul class="rslides" id="slider3">
		  <li>
		  	<img src="images/one.png" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="images/one.png" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		</ul>
</div>

<br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br>

<!--  Gallery thumbnails - Click to open -->
<a href="#" class="toPopup">Click Here Trigger 1</a><br>
<a href="#" class="toPopup1">Click Here Trigger 2</a><br>
<a href="#" class="toPopup2">Click Here Trigger 3</a><br>

<img src="images/Background_Tilable.png" class="toPopup">
<img src="images/Background_Tilable.png" class="toPopup1">

<!--  Popup helpers -->
<div class="loader"></div>
<div id="backgroundPopup"></div>
<script type="text/javascript" src="js/popup.js"></script>

</body>
</html>