<%@ page contentType="text/html;charset=UTF-8" language="java" %> 

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

<title>3D Art</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="lib/responsiveslides.js"></script>
<script src="js/art.js"></script>


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
        /*maxwidth: 800,*/
        speed: 800,
        nav: true,
        pager: true,
        namespace: "centered-btns"
      });

      // Slideshow 2
      $("#slider2").responsiveSlides({
    	  maxwidth: 800,
          speed: 800,
          nav: true,
          pager: true,
          namespace: "centered-btns"
      });

      // Slideshow 3
      $("#slider3").responsiveSlides({
    	  maxwidth: 800,
          speed: 800,
          nav: true,
          pager: true,
          namespace: "centered-btns"
      });

    });
  </script>

</head>

<body>
<!-- 
<img src=images/bg_left.png style="background-repeat:repeat-y; position:absolute; left:0px; top:0px; z-index:-10;">
<img src=images/bg_right.png style="background-repeat:repeat-y; position:absolute; right:0px; top:0px; z-index:-10;">
-->

<!--  Main title -->

<div id="title_container">
	<div id="title_inner_border">
		<div id="content_container">
			<header id="header-3d" class="clearfix">
					<span id="text-3d">
						<span class="char0">3</span>
						<span class="char1">D</span>
					</span> 
			</header>
			<header id="header-art" class="clearfix">
					<span id="text-art">
						<span class="char2">A</span>
						<span class="char2">R</span>
						<span class="char2">T</span>
					</span> 
			</header>
		</div>
	</div>
</div>

<!--  Gallery thumbnails - Click to open -->
<div id="thumbnail_outer_border">
<div id="thumbnail_container">
    <div id="head">
    <p>HEADER</p>
    </div>
    <div id="main">
        <div id="column-1">
	        <div id="thumbnail_item" class="fade">
				<img src="images/thumbnails/thumb_diamandra.png" class="toPopup"><br>
				<a href="#" class="toPopup">Diamandra</a><br>
			</div>
        </div>
        <div id="content-2">
            <div id="column-2">
		        <div id="thumbnail_item" class="fade">
					<img src="images/thumbnails/thumb_chess-set.png" class="toPopup1"><br>
					<a href="#" class="toPopup">Chess Set</a><br>
				</div>
            </div>
            <div id="column-3">
		        <div id="thumbnail_item" class="fade">
					<img src="images/thumbnails/thumb_kaliman.png" class="toPopup2"><br>
					<a href="#" class="toPopup">Chess Set</a><br>
				</div>
            </div>
        </div>
    </div>
    <div id="footer"></div>
</div> <!-- thumbnail_container -->
</div> <!-- thumbnail_outer_border -->


<!--  Galleries -->
<div id="toPopup">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
		<ul class="rslides" id="slider1">
		  <li style="background-color:(0,0,0,0.5);">
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Diamandra/screen01.jpg?w=AAAzph1of3zVtwwGUbXYvYXTNV1VEzO7mWKbiEZCUVr_kA" alt="">
		  	<p class="caption">Caption 1</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Diamandra/screen02.jpg?w=AAA3HicfJmPRtWfJG1iG1UBWB9lmjQvcRmDz2yOxNcxw1A" alt="">
		  	<p class="caption">Caption 1</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Diamandra/screen03.jpg?w=AACTcWciUljvdTmJ7owjk47zT_BbzLO5LUI7344GLaXZ-A" alt="">
		  	<p class="caption">Caption 1</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Diamandra/screen04.jpg?w=AABKsVpSBomkRla76o7tDMgsNMsUmMWnYmI9N2_IJA5u5Q" alt="">
		  	<p class="caption">Caption 1</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Diamandra/screen05.jpg?w=AADM-EnYjk5umipo8p6tv-VwBzM2xex4YUO_bVXx-JJRZw" alt="">
		  	<p class="caption">Caption 1</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Diamandra/screen06.jpg?w=AACg-ho6PBzkNg2y-7s_SCP7AT00LuvMTel8SQwOvVlfhQ" alt="">
		  	<p class="caption">Caption 1</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Diamandra/screen07.jpg?w=AADYez8uS47zel1q1b31OZg4Rn0MUDPzSBxZ0bf1ebqDUQ" alt="">
		  	<p class="caption">Caption 1</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Diamandra/screen08.jpg?w=AABsWatRms6GfW-wnxcL7FcYINdWeg44f6lVjwEh_0BMyA" alt="">
		  	<p class="caption">Caption 1</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Diamandra/screen09.jpg?w=AABdP2MGcq9_tRBcl8aGRPGITVGrMwpUsOtktZ11vBEUUA" alt="">
		  	<p class="caption">Caption 1</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Diamandra/screen10.jpg?w=AADMIk0GN4Wa4RmQwKuBRTj3etU-wdQ6nm4AnU6haJjz7A" alt="">
		  	<p class="caption">Caption 1</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Diamandra/screen11.jpg?w=AAAseH3Jkb9b9fBw1XuhnkXqAe99rmuvWY6qdpo4nH1WSA" alt="">
		  	<p class="caption">Caption 1</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Diamandra/screen12.jpg?w=AABGG_YzshzNbneubSJxrYGfHqj5wY9AfkAf2MMWPMw1Qw" alt="">
		  	<p class="caption">Caption 1</p>
		  </li>
		</ul>
</div>

<div id="toPopup1">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
		<ul class="rslides" id="slider2">
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Chess%20Piece/screen01.jpg?w=AAByC6ZeSQI8f6zqqDTggg0xJPfBAwqHZSrr8L-R2brDDg" alt="">
		  	<p class="caption">Caption 2</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Chess%20Piece/screen02.jpg?w=AAB4idF7eAzlEvVIKmtJqG6Zw25C3qdW516PduvV-mC5dg" alt="">
		  	<p class="caption">Caption 2</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Chess%20Piece/screen03.JPG?w=AAAkrg5viFyQxjQChISjfewsZat-3s9lsWJhK8ejMwZbvg" alt="">
		  	<p class="caption">Caption 2</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Chess%20Piece/screen04.JPG?w=AACzmcA0Ihc4DbbLKaZg9DvAcIx36xPuqvBtc_lBDSXtqQ" alt="">
		  	<p class="caption">Caption 2</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Chess%20Piece/screen05.jpg?w=AABunL2ZzuzhANHOYl0iZDth31z0oJfP1xYgZYk1TedcMA" alt="">
		  	<p class="caption">Caption 2</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Chess%20Piece/screen06.jpg?w=AABpX4cWf8XnVMk7yEWCopY-SXvy7TRGPxUj_e38ByIfQQ" alt="">
		  	<p class="caption">Caption 2</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Chess%20Piece/screen07.jpg?w=AAA8-Z_ewBr_JfofJ003pzAVYkRKN5A-WaRF5j7EyJ3ysA" alt="">
		  	<p class="caption">Caption 2</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Chess%20Piece/screen08.jpg?w=AADmuusJuu9lPL5m3TVN_ouOhtlaxi3WIr7QkK5SMSgpbg" alt="">
		  	<p class="caption">Caption 2</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Chess%20Piece/screen09.jpg?w=AAAqdNgMaD8UJ6PoC2AA7030wp4kGLGN-92KaTw1HTAXHQ" alt="">
		  	<p class="caption">Caption 2</p>
		  </li>
		</ul>
</div>

<div id="toPopup2">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
		<ul class="rslides" id="slider3">
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Kaliman/screen01.jpg?w=AAAsI8MqxacEUFdhmtt-Tvs-JOscJN2Ida4kdr6_GFt8UA" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Kaliman/screen02.jpg?w=AACh0QWbSIj0xhBr9HQX5ohZOr35_RQe4WI1gOuW_isbAA" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Kaliman/screen03.jpg?w=AAAo1avsUjnoRC5N0k2DS_sEMtBwV0hjFHwfsRqyBb23vw" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Kaliman/screen04.jpg?w=AABle3CjD2oO-X-yE5xHbKPINxzWko2Svd-1cmiY_MBt0A" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Kaliman/screen05.jpg?w=AABcvPMbiLafT_UKjEERteufpgvwcAC-fiNOiSKzRMYyVA" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Kaliman/screen06.jpg?w=AAB8YTliceeM7s82hxQPbbTrVKIt3VWPY-YNsOXcMsbOPA" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Kaliman/screen07.jpg?w=AAAYcQbyJEA5jD3rfSgKUYf8Ppk7DFbodll9MCaPT-42PA" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Kaliman/screen08.jpg?w=AAD3VRlaUHm5CqafV7SUmq_mCsFzSlTuwgMC0WVqB15teg" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Kaliman/screen09.jpg?w=AACkS79RR9IF95sSa-WUG2dTkQCPbMdX0SJCRne3Ki4Y4A" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		</ul>
</div>


<!--  Popup helpers -->
<div class="loader"></div>
<div id="backgroundPopup"></div>
<script type="text/javascript" src="js/popup.js"></script>

</body>
</html>