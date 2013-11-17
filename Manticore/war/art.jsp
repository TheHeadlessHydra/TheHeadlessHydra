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

<!-- styles -->
<link rel="stylesheet" type="text/css" href="css/art.css"></link>
<link rel="stylesheet" type="text/css" href="css/nav.css"></link>
<link rel="stylesheet" type="text/css" href="css/footer.css"></link>

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
<link href="css/tabcontent-art.css" rel="stylesheet" type="text/css" />
</head>

<body>



<!-- Navigation Bar -->
<div id="nav_bar">
	<ul id="nav_ul">
	<li class="nav_li"><a href="webgl.html"><img class="nav_img" src="images/nav/headlesshydra_logo.png"></a></li>
	<li class="nav_li"><div class="nav_element"><a class="nav_link" href="home">Home</a></div></li>
	<li class="nav_li"><div class="nav_selectedelement"><a class="nav_selected" href="art">Art</a></div></li>
	<li class="nav_li"><div class="nav_element"><a class="nav_link" href="compsci">Compsci</a></div></li>
	</ul>
</div>

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
						<img src="images/art/thumbnails/thumb_diamandra.png" class="toPopup_diamandra"><br>
						<a href="#" class="toPopup_diamandra">Diamandra</a><br>
					</div>
		        </div>
		        <div id="content-2">
		            <div id="column-2">
						<div id="thumbnail_item" class="fade">
							<img src="images/art/thumbnails/thumb_kaliman.png" class="toPopup_kaliman"><br>
							<a href="#" class="toPopup_kaliman">Kaliman</a><br>
						</div>
		            </div>
		            <div id="column-3">
				        <div id="thumbnail_item" class="fade">
							<img src="images/art/thumbnails/thumb_theatreofinsanity.png" class="toPopup_theatre"><br>
							<a href="#" class="toPopup_theatre">Theatre of Insanity</a><br>
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
						<img src="images/art/thumbnails/thumb_stylish-transport.png" class="toPopup_stylish-transport"><br>
						<a href="#" class="toPopup_stylish-transport">Stylish Transport</a><br>
					</div>
					<div id="thumbnail_item" class="fade">
						<img src="images/art/thumbnails/thumb_chess-set.png" class="toPopup_chess-set"><br>
						<a href="#" class="toPopup_chess-set">Chess Set</a><br>
					</div>	
		        </div>
		        <div id="content-2">
		            <div id="column-2">
		            	<div id="thumbnail_item" class="fade">
							<img src="images/art/thumbnails/thumb_overlord-hammer.png" class="toPopup_overlord-hammer"><br>
							<a href="#" class="toPopup_overlord-hammer">Overlord Hammer</a><br>
						</div>
						<div id="thumbnail_item" class="fade">
							<img src="images/art/thumbnails/thumb_first-character.png" class="toPopup_first-character"><br>
							<a href="#" class="toPopup_first-character">First Character</a><br>
						</div>					
		            </div>
		            <div id="column-3">
			            <div id="thumbnail_item" class="fade">
							<img src="images/art/thumbnails/thumb_vouganth.png" class="toPopup_vouganth"><br>
							<a href="#" class="toPopup_vouganth">Vouganth</a><br>
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
						<img src="images/art/thumbnails/thumb_lich-dragon.png" class="toPopup_lich-dragon"><br>
						<a href="#" class="toPopup_lich-dragon">Lich Dragon</a><br>
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
						<img src="images/art/thumbnails/thumb_help-eat.png" class="toPopup_help-eat"><br>
						<a href="#" class="toPopup_help-eat">Help Eat</a><br>
					</div>
					<div id="thumbnail_item" class="fade">
							<img src="images/art/thumbnails/thumb_arbie-outside.png" class="toPopup_arbie-outside"><br>
							<a href="#" class="toPopup_arbie-outside">Arbie Outside</a><br>
					</div>
		        </div>
		        <div id="content-2">
		            <div id="column-2">
						<div id="thumbnail_item" class="fade">
							<img src="images/art/thumbnails/thumb_sweet-smell.png" class="toPopup_sweet-smell"><br>
							<a href="#" class="toPopup_sweet-smell">Sweet Smell</a><br>
						</div>
		            </div>
		            <div id="column-3">
				        <div id="thumbnail_item" class="fade">
							<img src="images/art/thumbnails/thumb_rbc-spot.png" class="toPopup_rbc-spot"><br>
							<a href="#" class="toPopup_rbc-spot">RBC Spot</a><br>
						</div>
		            </div>
		        </div>
		    </div> <!-- main -->
		    <div id="sub_head">
		    	<p class="label">Personal</p>
		    </div>
		    <div id="main">
		        <div id="column-1">
		        	<div id="thumbnail_item" class="fade">
						<img src="images/art/thumbnails/thumb_demo-reel.png" class="toPopup_demo-reel"><br>
						<a href="#" class="toPopup_demo-reel">College Demo Reel</a><br>
					</div>
		        </div>
		        <div id="content-2">
		            <div id="column-2">
				        <div id="thumbnail_item" class="fade">
							<img src="images/art/thumbnails/thumb_kaliman-flythrough.png" class="toPopup_kaliman-flythrough"><br>
							<a href="#" class="toPopup_kaliman-flythrough">Kaliman Flythrough</a><br>
						</div>					
		            </div>
		            <div id="column-3">
						<div id="thumbnail_item" class="fade">
							<img src="images/art/thumbnails/thumb_theatre-flythrough.png" class="toPopup_theatre-flythrough"><br>
							<a href="#" class="toPopup_theatre-flythrough">Theatre of Insanity flythrough</a><br>
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

<div id="main_footer" style="margin-top:20px;">
	<div id="main_footer_innerborder">
		<h1 class="footer_h1" style="margin-top:10px;">Contact</h1>
		<p class="footer_p" style="font-size: 30px;">serjkazar@gmail.com</p>
		<ul id="footer_ul">
		<li class="footer_li"><a href="webgl.html" target="_blank"><div class="footer_element"><img class="footer_img" src="images/footer/headlesshydra_logo.png"></div></a></li>
		<li class="footer_li"><a href="https://github.com/TheHeadlessHydra" target="_blank"><div class="footer_element"><img class="footer_img" src="images/footer/github-logo-small.png"></div></a></li>
		<li class="footer_li"><a href="http://www.linkedin.com/pub/serj-kazar/25/192/231" target="_blank"><div class="footer_element"><img class="footer_img" src="images/footer/linkedin-logo-small.png"></div></a></li>
		</ul>
		<p class="footer_p" style="padding-top:15px;">&#169 2013 Serj Kazar. All Rights Reserved.</p>
	</div>
</div>
		
<!-- 
GALLERIES
 -->

<!-- Environments -->
<div id="toPopup_diamandra">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<div class="gallery_header">
		<h1>Diamandra</h1><br>
		<p class="date">Created Fall 2010</p><br>
		<p>Custom designed world built to display modularity in building design.</p>
	</div>
		<ul class="rslides" id="slider1">
		  <li style="background-color:(0,0,0,0.5);">
		  	<img src="images/art/galleries/Diamandra/screen01.jpg" alt="">
		  	<p class="caption">Made attempts to make the world feel more 'full' without everything looking like a copy by including many modular buildings thourghout the visible world.</p>
		  </li>
		  <li>
		  	<img src="images/art/galleries/Diamandra/screen02.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Diamandra/screen03.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Diamandra/screen04.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Diamandra/screen05.jpg" alt="">
		  	<p class="caption">All buildings in this building are built modularly - small pieces only.</p>
		  </li>
		  <li>
		  	<img src="images/art/galleries/Diamandra/screen06.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Diamandra/screen07.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Diamandra/screen08.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Diamandra/screen09.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Diamandra/screen10.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Diamandra/screen11.jpg" alt="">
		  	<p class="caption">Probably the more difficult aspect of this map was getting this water to look good.</p>
		  </li>
		  <li>
		  	<img src="images/art/galleries/Diamandra/screen12.jpg" alt="">
		  </li>
		</ul>
	</div>
</div>
<div id="toPopup_kaliman">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<div class="gallery_header">
		<h1>Kaliman</h1><br>
		<p class="date">Created Summer 2010</p><br>
		<p>College final project. Designed to have an eerie Halloween feel.</p>
	</div>
		<ul class="rslides" id="slider3">
		  <li>
		  	<img src="images/art/galleries/Kaliman/screen01.jpg" alt="">
		  	<p class="caption">An homage to my inspiration for this piece - Legend of Zelda Majoras Mask.</p>
		  </li>
		  <li>
		  	<img src="images/art/galleries/Kaliman/screen02.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Kaliman/screen03.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Kaliman/screen04.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Kaliman/screen05.jpg" alt="">
		  	<p class="caption">UDK's lighting engine used to display a 'Light Array' system.</p>
		  </li>
		  <li>
		  	<img src="images/art/galleries/Kaliman/screen06.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Kaliman/screen07.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Kaliman/screen08.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Kaliman/screen09.jpg" alt="">
		  </li>
		</ul>
</div>
<div id="toPopup_theatre">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<div class="gallery_header">
		<h1>Theatre of Insanity</h1><br>
		<p class="date">Created Winter 2009</p><br>
		<p>College project. This was my first environment I ever made that includes all custom assets.</p>
	</div>
		<ul class="rslides" id="slider5">
		  <li>
		  	<img src="images/art/galleries/TheatreofInsanity/screen01.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/TheatreofInsanity/screen02.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/TheatreofInsanity/screen03.jpg" alt="">
		  	<p class="caption">I had fun with the design for this guy.</p>
		  </li>
		  <li>
		  	<img src="images/art/galleries/TheatreofInsanity/screen04.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/TheatreofInsanity/screen05.jpg" alt="">
		  	<p class="caption">Check the videos section, this piece moves. Based on the ending video in <a href="http://en.wikipedia.org/wiki/Monogatari_(series)" target="_blank">Bakemonogatari</a>.</p>
		  </li>
		  <li>
		  	<img src="images/art/galleries/TheatreofInsanity/screen06.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/TheatreofInsanity/screen07.jpg" alt="">
		  </li>
		</ul>
</div>

<!-- Creatures, characters and props -->
<div id="toPopup_stylish-transport">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<div class="gallery_header">
		<h1>Stylish Transport</h1><br>
		<p class="date">Created Spring 2011</p><br>
		<p>An industrial design - A futuristic way to transport yourself in style.<br><br>
		Concept designed in weekly battles at <a href=http://www.conceptart.org target="_blank">conceptart.org</a></p>
	</div>
		<ul class="rslides" id="slider9">
		  <li>
		  	<img src="images/art/galleries/StylishTransport/screen01.jpg" alt="">
		  	<p class="caption">I loved the design for this transport!</p>
		  </li>
		  <li>
		  	<img src="images/art/galleries/StylishTransport/screen02.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/StylishTransport/screen03.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/StylishTransport/screen04.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/StylishTransport/screen05.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/StylishTransport/screen06.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/StylishTransport/screen07.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/StylishTransport/screen08.jpg" alt="">
		  </li>
		</ul>
</div>
<div id="toPopup_overlord-hammer">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<div class="gallery_header">
		<h1>Overlord Hammer</h1><br>
		<p class="date">Created Spring 2011</p><br>
		<p>A quick one-day project to make a hammer of an awesome game <a href="http://en.wikipedia.org/wiki/Overlord_(2007_video_game)" target="_blank">Overlord</a></p>
	</div>
		<ul class="rslides" id="slider8">
		  <li>
		  	<img src="images/art/galleries/OverlordHammer/screen01.png" alt="">
		  	<p class="caption">Caption 3</p>
		  </li>
		</ul>
</div>
<div id="toPopup_vouganth">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<div class="gallery_header">
		<h1>Vouganth</h1><br>
		<p class="date">Created Fall 2010</p><br>
		<p>An underwater, lava sea dragon.<br> 
		A design I had to bring to life after capturing my imagination.<br><br>
		Concept designed in weekly battles at <a href=http://www.conceptart.org target="_blank">conceptart.org</a></p>
	</div>
		<ul class="rslides" id="slider4">
		  <li>
		  	<img src="images/art/galleries/Vouganth/screen01.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Vouganth/screen02.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Vouganth/screen03.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Vouganth/screen04.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/Vouganth/screen05.jpg" alt="">
		  	<p class="caption">Head and body have seperate texture maps - each 2048x2048.</p>
		  </li>
		  <li>
		  	<img src="images/art/galleries/Vouganth/screen06.jpg" alt="">
		  </li>
		</ul>
</div>
<div id="toPopup_chess-set">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<div class="gallery_header">
		<h1>Chess Piece</h1><br>
		<p class="date">Created Fall 2010</p><br>
		<p>A chess set designed to have an industrial look.<br><br>
		Concept designed in weekly battles at <a href=http://www.conceptart.org target="_blank">conceptart.org</a></p>
	</div>
		<ul class="rslides" id="slider2">
		  <li>
		  	<img src="images/art/galleries/ChessPiece/screen01.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/ChessPiece/screen02.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/ChessPiece/screen03.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/ChessPiece/screen04.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/ChessPiece/screen05.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/ChessPiece/screen06.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/ChessPiece/screen07.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/ChessPiece/screen08.jpg" alt="">
		  	<p class="caption">Getting the Ambience to emit in an animated, crystalline like way was a hard task at the time.</p>
		  </li>
		  <li>
		  	<img src="images/art/galleries/ChessPiece/screen09.jpg" alt="">
		  </li>
		</ul>
</div>
<div id="toPopup_first-character">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<div class="gallery_header">
		<h1>First Character</h1><br>
		<p class="date">Created Fall 2009</p><br>
		<p>College project. This was my first character - or even one of my first 3d models - ever created.<br>
		   I debated putting it up - but it gives good contrast to how far someone can get in a year.</p>
	</div>
		<ul class="rslides" id="slider6">
		  <li>
		  	<img src="images/art/galleries/FirstCharacter/screen01.jpg" alt="">
		  	<p class="caption">I don't really know why I put a glow behind her hair? Maybe I thought it was cool?</p>
		  </li>
		  <li>
		  	<img src="images/art/galleries/FirstCharacter/screen02.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/FirstCharacter/screen03.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/FirstCharacter/screen04.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/FirstCharacter/screen05.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/FirstCharacter/screen06.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/FirstCharacter/screen08.jpg" alt="">
		  </li>
		</ul>
</div>

<!-- Work in progress -->
<div id="toPopup_lich-dragon">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<div class="gallery_header">
		<h1>Lich Dragon</h1><br>
		<p class="date">Created Summer 2011</p><br>
		<p>Another dragon I was in the process of creating. I never ended up completing it, but I think it has a lot of potential.<br><br>
		Concept designed in weekly battles at <a href=http://www.conceptart.org target="_blank">conceptart.org</a></p>
	</div>
		<ul class="rslides" id="slider7">
		  <li>
		  	<img src="images/art/galleries/LichDragon/screen01.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/LichDragon/screen02.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/LichDragon/screen03.jpg" alt="">
		  </li>
		  <li>
		  	<img src="images/art/galleries/LichDragon/screen04.jpg" alt="">
		  </li>
		</ul>
</div>



<!-- Videos -->
<div id="toPopup_help-eat">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<div class="gallery_header">
		<h1>Help Eat</h1><br>
		<p>An awesome spot, and also the last thing I worked on while at Topix. <a href="http://stimulantonline.ca/2011/09/28/baking-day/?utm_source=newsletter&utm_medium=email&utm_campaign=baking-day" target="_blank">Credits</a>.</p><br><br>
		<p>Worked on as part of the team over at <a href="http://www.topixfx.com/" target="_blank">Topix</a>.</p>
	</div>
	<iframe id="help-eat" width="100%" height="100%" frameborder="0" src="http://player.vimeo.com/video/38582156?autoplay=1&api=1&player_id=vidplayer&autoplay=false"></iframe>
</div>

<div id="toPopup_sweet-smell">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<div class="gallery_header">
		<h1>Sweet Smell</h1><br>
		<p>An overseas spot for the pes-clearing product by S. C. Johnson.</p><br><br>
		<p>Worked on as part of the team over at <a href="http://www.topixfx.com/" target="_blank">Topix</a>.</p>
	</div>
	<iframe id="sweet-smell" width="100%" height="100%" frameborder="0" src="http://player.vimeo.com/video/41574478?autoplay=1&amp;api=1&amp;player_id=vidplayer&autoplay=false"></iframe>
</div>

<div id="toPopup_rbc-spot">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<div class="gallery_header">
		<h1>RBC Spot</h1><br>
		<p>A pitch for RBC's Arbie.</p><br><br>
		<p>Worked on as part of the team over at <a href="http://www.topixfx.com/" target="_blank">Topix</a>.</p>
	</div>
	<iframe id="rbc-spot" src="//player.vimeo.com/video/36252081" width="100%" height="100%" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
</div>

<div id="toPopup_arbie-outside">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<div class="gallery_header">
		<h1>Arbie Outside</h1><br>
		<p>A second complementary pitch for RBC's Arbie.</p><br><br>
		<p>Worked on as part of the team over at <a href="http://www.topixfx.com/" target="_blank">Topix</a>.</p>
	</div>
	<iframe id="arbie-outdoors" src="//player.vimeo.com/video/73575200" width="100%" height="100%" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
</div>

<div id="toPopup_demo-reel">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<div class="gallery_header">
		<h1>Demo Reel</h1><br>
		<p class="date">Created Fall 2010</p><br>
		<p>My Demo Reel created before I did any production work. Contains mostly work I did outside of college.</p>
	</div>
	<iframe id="demo-reel" src="//player.vimeo.com/video/17719128" width="100%" height="100%" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
</div>

<div id="toPopup_kaliman-flythrough">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<div class="gallery_header">
		<h1>Demo Reel</h1><br>
		<p class="date">Created Summer 2010</p><br>
		<p>A flythrough of my final project worked on while at college.</p>
	</div>
	<iframe id="kaliman-flythrough" src="//player.vimeo.com/video/15713137" width="100%" height="100%" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
</div>

<div id="toPopup_theatre-flythrough">  
	<div class="close"></div>
	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
	<div class="gallery_header">
		<h1>Demo Reel</h1><br>
		<p class="date">Created Fall 2010</p><br>
		<p>A flythrough of my first environment made from scratch!</p>
	</div>
	<iframe id="theatre-flythrough" src="//player.vimeo.com/video/12143682" width="100%" height="100%" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
</div>


<!--  Popup helpers -->
<div class="loader"></div>
<div id="backgroundPopup"></div>
<script type="text/javascript" src="js/popup.js"></script>

</body>
</html>