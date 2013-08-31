<%@ page contentType="text/html;charset=UTF-8" language="java" %> 

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

<title>3D Art</title>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="js/includes.js"></script>

<!-- main style -->
<link rel="stylesheet" type="text/css" href="css/art.css"></link>

<!-- Fonts -->
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Josefin+Sans">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Lusitana">

<!-- Slider CSS -->
<link rel="stylesheet" type="text/css" href="css/slider/style.css" />
<link rel="stylesheet" type="text/css" href="css/slider/elastislide.css" />

<!-- Popup CSS --> 
<link rel="stylesheet" href="css/popup.css" type="text/css" media="all" />

<!--  Carousel image wrapping template -->
<script id="img-wrapper-tmpl" type="text/x-jquery-tmpl">	
	<div class="rg-image-wrapper">
		{{if itemsCount > 1}}
			<div class="rg-image-nav">
				<a href="#" class="rg-image-nav-prev">Previous Image</a>
				<a href="#" class="rg-image-nav-next">Next Image</a>
			</div>
		{{/if}}
		<div class="rg-image"></div>
		<div class="rg-loading"></div>
		<div class="rg-caption-wrapper">
			<div class="rg-caption" style="display:none;">
				<p></p>
			</div>
		</div>
	</div>
</script>

</head>

<body>

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

<a href="#" class="topopup">Click Here Trigger</a>
<a href="#" class="test">Click Here Trigger TEST</a>


<form name="submitForm" method="post" action="art.do">
    <input type="hidden" name="gallery" value="Vouganth">
    <input type="hidden" name="description" value="Hybrid dragon">
    <a href="javascript:document.submitForm.submit()">Click Me</a>
</form>

<form name="submitForm2" method="post" action="art.do">
    <input type="hidden" name="gallery" value="Chess Set">
    <input type="hidden" name="description" value="Custom chess set">
    <a href="javascript:document.submitForm2.submit()">Click Me 2</a>
</form>

<form name="submitBlank" method="post" action="art.do">
    <input type="hidden" name="gallery" value="">
    <a href="javascript:document.submitBlank.submit()">Click Me 3</a>
</form>

<%
String gallery = (String) request.getAttribute("gallery");
// Check if this page was loaded because a user clicked on a gallery.
if ( gallery != null && gallery != "" ) {
%>
    <script>
    //includeGallery1();
    $(window).bind("load", function() {
    	loading();
    	setTimeout(function(){
			loadPopup();
		}, 500); // 0.5 second delay
	});
    </script>
<%
}
%>
	<div id="toPopup">  
		<div class="close"></div>
	    <span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
		<div class="content">
			<h1>${messages.gallery} <span>${messages.description}</span></h1>
			<div id="rg-gallery" class="rg-gallery">
				<div class="rg-thumbs">
					<!-- Elastislide Carousel Thumbnail Viewer -->
					<div class="es-carousel-wrapper">
						<div class="es-nav">
							<span class="es-nav-prev">Previous</span>
							<span class="es-nav-next">Next</span>
						</div>
						<div class="es-carousel">
							<ul>
<%
if ( gallery != null && gallery.equals("Vouganth") ) {
%>
								<li><a href="#"><img src="images/popup/loading.gif" data-large="images/Background_Tilable.png" alt="" data-description="Vouganth" /></a></li>
								<li><a href="#"><img src="images/popup/closebox.png" data-large="images/Background_Tilable.png" alt="" data-description="Vouganth" /></a></li>
								<li><a href="#"><img src="images/popup/closebox.png" data-large="images/Background_Tilable.png" alt="" data-description="Vouganth" /></a></li>
<%
} else if ( gallery != null && gallery.equals("Chess Set") ) {
%>
								<li><a href="#"><img src="images/popup/loading.gif" data-large="images/one.png" alt="" data-description="Chess" /></a></li>
								<li><a href="#"><img src="images/popup/closebox.png" data-large="images/Background_Tilable.png" alt="" data-description="Chess" /></a></li>
								<li><a href="#"><img src="images/popup/closebox.png" data-large="images/popup/closebox.png" alt="" data-description=Chess" /></a></li>
<%
}
else{
%>
								<li><a href="#"><img src="images/popup/loading.gif" data-large="images/one.png" alt="" data-description="Default" /></a></li>
								<li><a href="#"><img src="images/popup/closebox.png" data-large="images/Background_Tilable.png" alt="" data-description="Default" /></a></li>
								<li><a href="#"><img src="images/popup/closebox.png" data-large="images/popup/closebox.png" alt="" data-description="Default" /></a></li>
<%
}
%>
							</ul>
						</div>
					</div>
					<!-- End Elastislide Carousel Thumbnail Viewer -->
				</div><!-- rg-thumbs -->
			</div><!-- rg-gallery -->
		</div><!-- content -->
	</div>


<div class="loader"></div>
<div id="backgroundPopup"></div>

<script type="text/javascript" src="js/slider/jquery.tmpl.min.js"></script>
<script type="text/javascript" src="js/slider/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/slider/jquery.elastislide.js"></script>
<script type="text/javascript" src="js/slider/gallery.js"></script>
<script type="text/javascript" src="js/popup.js"></script>

</body>
</html>