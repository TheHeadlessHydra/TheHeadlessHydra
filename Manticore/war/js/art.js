/**
 * Scripts for the art page
 * 
 */


$(document).ready(function(){
	
/**
 * Used to fade the galleries in/out on hover.
 */
  $("div.fade").hover(
  function() {
  $(this).stop().animate({"opacity": "0.3"}, "slow");
  },
  function() {
  $(this).stop().animate({"opacity": "1"}, "slow");
  });
/**
 * Used to glow the switch button
 */ 
  $( "#switch" ).click(function() {
		var redirectLocation = "/compsci";
		window.location = redirectLocation;
	});
	
	$("#switch").hover(function() {
		$(this).attr("src","images/art/transition-compsci-hover.png");
			}, function() {
		$(this).attr("src","images/art/transition-compsci.png");
	});
});


/**
 * Bind and initialize the various sliders
 * 
 */
//You can also use "$(window).load(function() {"
$(function () {

  // Slideshow 1
  $("#slider1").responsiveSlides({
    /*maxwidth: 800,*/
    auto: false,
    nav: true,
    pager: true,
    namespace: "centered-btns"
  });

  // Slideshow 2
  $("#slider2").responsiveSlides({
	  maxwidth: 800,
	  auto: false,
      nav: true,
      pager: true,
      namespace: "centered-btns"
  });

  // Slideshow 3
  $("#slider3").responsiveSlides({
	  maxwidth: 800,
	  auto: false,
      nav: true,
      pager: true,
      namespace: "centered-btns"
  });
  
  // Slideshow 4
  $("#slider4").responsiveSlides({
	  maxwidth: 800,
	  auto: false,
      nav: true,
      pager: true,
      namespace: "centered-btns"
  });
	  
  // Slideshow 5
  $("#slider5").responsiveSlides({
	  maxwidth: 800,
	  auto: false,
      nav: true,
      pager: true,
      namespace: "centered-btns"
  });
	  
  // Slideshow 6
  $("#slider6").responsiveSlides({
	  maxwidth: 800,
	  auto: false,
      nav: true,
      pager: true,
      namespace: "centered-btns"
  });
	  
  // Slideshow 7
  $("#slider7").responsiveSlides({
	  maxwidth: 800,
	  auto: false,
      nav: true,
      pager: true,
      namespace: "centered-btns"
  });
  
  // Slideshow 8
  $("#slider8").responsiveSlides({
	  maxwidth: 800,
	  auto: false,
      nav: true,
      pager: true,
      namespace: "centered-btns"
  });
  
  //Slideshow 9
  $("#slider9").responsiveSlides({
	  maxwidth: 800,
	  auto: false,
      nav: true,
      pager: true,
      namespace: "centered-btns"
  });

});