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
<script src="lib/tabcontent.js" type="text/javascript"></script>

<!-- main style -->
<link rel="stylesheet" type="text/css" href="css/art.css"></link>

<!-- Fonts -->
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Josefin+Sans">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Lusitana">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Quando">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Fenix">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Quattrocento">

<!-- Slider CSS -->
<link rel="stylesheet" type="text/css" href="css/slider/responsiveslides.css" />
<link rel="stylesheet" type="text/css" href="css/slider/slider.css" />

<!-- Popup CSS --> 
<link rel="stylesheet" href="css/popup.css" type="text/css" media="all" />

<!-- Tab CSS --> 
<link href="css/tab/tabcontent.css" rel="stylesheet" type="text/css" />
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
		</div> <!-- content_container -->
	</div>
</div>

<div id="tab_container">
<ul class="tabs" data-persist="true">
	<li><a href="#view1">Image Galleries</a></li>
	<li><a href="#view2">Videos</a></li>
</ul>
<div class="tabcontents">
<!-- 
IMAGE GALLERIES TAB
 -->
	<div id="view1">
		<div id="thumbnail_outer_border">
		<div id="thumbnail_container">
		    <div id="sub_head">
		    	<p class="label">Environments</p>
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
							<img src="images/thumbnails/thumb_kaliman.png" class="toPopup2"><br>
							<a href="#" class="toPopup2">Kaliman</a><br>
						</div>
		            </div>
		            <div id="column-3">
				        <div id="thumbnail_item" class="fade">
							<img src="images/thumbnails/thumb_theatreofinsanity.png" class="toPopup4"><br>
							<a href="#" class="toPopup4">Theatre of Insanity</a><br>
						</div>
		            </div>
		        </div>
		    </div> <!-- main -->
		    <div id="sub_head">
		    	<p class="label">Creatures, characters and props</p>
		    </div>
		    <div id="main">
		        <div id="column-1">
		        	<div id="thumbnail_item" class="fade">
						<img src="images/thumbnails/thumb_vouganth.png" class="toPopup3"><br>
						<a href="#" class="toPopup3">Vouganth</a><br>
					</div>
					<div id="thumbnail_item" class="fade">
						<img src="images/thumbnails/thumb_first-character.png" class="toPopup5"><br>
						<a href="#" class="toPopup5">First Character</a><br>
					</div>
		        </div>
		        <div id="content-2">
		            <div id="column-2">
				        <div id="thumbnail_item" class="fade">
							<img src="images/thumbnails/thumb_chess-set.png" class="toPopup1"><br>
							<a href="#" class="toPopup1">Chess Set</a><br>
						</div>						
		            </div>
		            <div id="column-3">
						<div id="thumbnail_item" class="fade">
							<img src="images/thumbnails/thumb_overlord-hammer.png" class="toPopup7"><br>
							<a href="#" class="toPopup7">Overlord Hammer</a><br>
						</div>
		            </div>
		        </div>
		    </div> <!-- main -->
		    <div id="sub_head">
		    	<p class="label">Work in progress</p>
		    </div>
		    <div id="main">
		        <div id="column-1">
					<div id="thumbnail_item" class="fade">
						<img src="images/thumbnails/thumb_lich-dragon.png" class="toPopup6"><br>
						<a href="#" class="toPopup6">Lich Dragon</a><br>
					</div>
		        </div>
		        <div id="content-2">
		            <div id="column-2">					
		            </div>
		            <div id="column-3">
		            </div>
		        </div>
		    </div> <!-- main -->
		    <div id="footer"></div>
		</div> <!-- thumbnail_container -->
		</div> <!-- thumbnail_outer_border -->
	</div> <!-- view1 -->
<!-- 
VIDEOS TAB
 -->
	<div id="view2">
		<div id="thumbnail_outer_border">
		<div id="thumbnail_container">
		    <div id="sub_head">
		    	<p class="label">Production</p>
		    	<p class="subtitle">Worked on as part of the team over at <a href="http://www.topixfx.com/" target="_blank">TOPIX</a></p>
		    </div>
		    <div id="main">
		        <div id="column-1">
			        <div id="thumbnail_item" class="fade">
						<img src="images/thumbnails/thumb_help-eat.png" class="toPopup9"><br>
						<a href="#" class="toPopup9">Help Eat</a><br>
					</div>
					<div id="thumbnail_item" class="fade">
							<img src="images/thumbnails/thumb_arbie-outside.png" class="toPopup10"><br>
							<a href="#" class="toPopup10">Arbie Outside</a><br>
					</div>
		        </div>
		        <div id="content-2">
		            <div id="column-2">
						<div id="thumbnail_item" class="fade">
							<img src="images/thumbnails/thumb_sweet-smell.png" class="toPopup8"><br>
							<a href="#" class="toPopup8">Sweet Smell</a><br>
						</div>
		            </div>
		            <div id="column-3">
				        <div id="thumbnail_item" class="fade">
							<img src="images/thumbnails/thumb_rbc-spot.png" class="toPopup11"><br>
							<a href="#" class="toPopup11">RBC Spot</a><br>
						</div>
		            </div>
		        </div>
		    </div> <!-- main -->
		    <div id="sub_head">
		    	<p class="label">Personal videos</p>
		    </div>
		    <div id="main">
		        <div id="column-1">
		        	<div id="thumbnail_item" class="fade">
						<img src="images/thumbnails/thumb_demo-reel.png" class="toPopup12"><br>
						<a href="#" class="toPopup12">College Demo Reel</a><br>
					</div>
		        </div>
		        <div id="content-2">
		            <div id="column-2">
				        <div id="thumbnail_item" class="fade">
							<img src="images/thumbnails/thumb_kaliman-flythrough.png" class="toPopup13"><br>
							<a href="#" class="toPopup13">Kaliman Flythrough</a><br>
						</div>					
		            </div>
		            <div id="column-3">
						<div id="thumbnail_item" class="fade">
							<img src="images/thumbnails/thumb_theatre-flythrough.png" class="toPopup14"><br>
							<a href="#" class="toPopup14">Theatre of Insanity flythrough</a><br>
						</div>
		            </div>
		        </div>
		    </div> <!-- main -->
		    <div id="footer"></div>
		</div> <!-- thumbnail_container -->
		</div> <!-- thumbnail_outer_border -->           
	</div> <!-- view2 -->
</div> <!-- tabcontents -->
</div> <!-- tab_container --> 
		
		
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

<div id="toPopup3">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
		<ul class="rslides" id="slider4">
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Vouganth/screen01.JPG?w=AABsz9iOJbF5ZYv0o0lffVHIOFBjGEJp7AFKCbET_ChDmA" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Vouganth/screen02.JPG?w=AAAkx4BAZtjoz_uOhN8b9UGdWioRXeAAW92qVyM-lcZAWw" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Vouganth/screen03.JPG?w=AAACfn4mYVQOL4b4DWyXPpvVsDLNPk-BH4h8BtMaWX55CA" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Vouganth/screen04.JPG?w=AAAns5ydj81XEhcZDi0OCUct74PBJYdIWwh9-vERj82jTg" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Vouganth/screen05.JPG?w=AABW-G6rev0VOD3YId6Bis_YCB-Gx6ObF-ruXJqJSFjH-A" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Vouganth/screen06.JPG?w=AAB3eKXVrUYvyzJRrhk7nRW8_5NZ1SMOJV5YTPsXVjP6Dw" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		</ul>
</div>

<div id="toPopup4">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
		<ul class="rslides" id="slider5">
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Theatre%20of%20Insanity/screen01.jpg?w=AADpoXpzVZOkZVXYr6YoayTlF1xwXhfjLwdU3tbCNl2C7A" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Theatre%20of%20Insanity/screen02.jpg?w=AACqHKaQpqtVB2k2v3jFMA_L9a_EeiohABO-6x-LekuJ5g" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Theatre%20of%20Insanity/screen03.jpg?w=AACAPFwL9UX-t-EvP57D06cYMKxIhNkIk2E9HcEblJFj0g" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Theatre%20of%20Insanity/screen04.jpg?w=AAAqoGEJZbZsh7Pz10UNsGMZuj71yN0o_wUDCbwwxoYa4Q" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Theatre%20of%20Insanity/screen05.jpg?w=AAAnKE3nO5EkT9p_Gt6DsD6DXvsE81G-AL7SuNwGuesHaw" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Theatre%20of%20Insanity/screen06.jpg?w=AAC3rT1sN7LB9kTX6LFWEHTMp9ixLDJ3DMElz06DjJusWg" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Theatre%20of%20Insanity/screen07.jpg?w=AACAabRe3bk5MVJmTqeW9s0NDF1GIOUsx0g6qqUVvevj6w" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		</ul>
</div>

<div id="toPopup5">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
		<ul class="rslides" id="slider6">
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/First%20Character/screen01.JPG?w=AAAPMBhPHQFWqQnqdVJ4GKG6PYto0RwzK0ZN0xN8B7ljdg" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/First%20Character/screen02.JPG?w=AADvA_CPFWkWmm95fsV-zXaxA6_m3bs9oDKceXMH5jympQ" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/First%20Character/screen03.jpg?w=AABsezKv1bRoerZF3NYix0L57swFhAxmKF1S7aF-HYT_qg" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/First%20Character/screen04.jpg?w=AAC5urRteSkzTaz-vND7CqVy6k5VlCGigPr7b8YngJO85w" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/First%20Character/screen05.jpg?w=AABMHdyAFKp0839pjrgMwQbT01iepinHBv-m3o5wW69_4w" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/First%20Character/screen06.jpg?w=AACDWXJRkWiBfqvX-YlhhLsLp7SkJ9X5bdoJzsNjZ4-crA" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/First%20Character/screen08.JPG?w=AACELtBEl0-JIfvfG8OMl9uii4fqhrRRX69oxnoT-VY-2g" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		</ul>
</div>

<div id="toPopup6">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
		<ul class="rslides" id="slider7">
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Lich%20Dragon/screen01.jpg?w=AAAYvz1nsJ-uZOLzIBjR2ZhU9CSX-yXK28DGo_K86msH4A" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Lich%20Dragon/screen02.jpg?w=AACnHmIwiBCQBehOsK_K4d06bZAMunTv2wOeMl95UQh4Eg" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Lich%20Dragon/screen03.jpg?w=AADT4HoNJVqzefSI9OZEn_oSueiC6r0l9E1DuBwBeTXzfQ" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Lich%20Dragon/screen04.jpg?w=AABhcPxt4Rw7CIUB3CXFdkiu9Hfsy3J3jMD1o00WE580iA" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		</ul>
</div>

<div id="toPopup7">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
		<ul class="rslides" id="slider8">
		  <li>
		  	<img src="https://dl-web.dropbox.com/get/TheHeadlessHydra/galleries/Overlord%20Hammer/screen01.png?w=AABQy5nrmqlF5i3oXj55mrT3Vopr2CgpMTDqm7CgOAe0kg" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		</ul>
</div>

<!-- Videos -->
<div id="toPopup8">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<iframe id="sweet-smell" width="800" height="400" src="http://player.vimeo.com/video/41574478?autoplay=1&amp;api=1&amp;player_id=vidplayer&autoplay=false"></iframe>
</div>

<div id="toPopup9">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<iframe id="help-eat" width="800" height="400" src="http://player.vimeo.com/video/38582156?autoplay=1&api=1&player_id=vidplayer&autoplay=false"></iframe>
</div>

<div id="toPopup10">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<iframe id="arbie-outdoors" src="//player.vimeo.com/video/73575200" width="800" height="600" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
</div>

<div id="toPopup11">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<iframe id="rbc-spot" src="//player.vimeo.com/video/36252081" width="800" height="600" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
</div>

<div id="toPopup12">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<iframe id="demo-reel" src="//player.vimeo.com/video/17719128" width="800" height="600" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
</div>

<div id="toPopup13">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<iframe id="kaliman-flythrough" src="//player.vimeo.com/video/15713137" width="800" height="600" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
</div>

<div id="toPopup14">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<iframe id="theatre-flythrough" src="//player.vimeo.com/video/12143682" width="800" height="600" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
</div>


<!--  Popup helpers -->
<div class="loader"></div>
<div id="backgroundPopup"></div>
<script type="text/javascript" src="js/popup.js"></script>

</body>
</html>