/**
 * Scripts for the art page
 * 
 */

/**
 * Setup the vertical tabs
 */
$(function() {
    $( "#v-tab_container" ).tabs().addClass( "ui-tabs-vertical ui-helper-clearfix" );
    $( "#v-tab_container li" ).removeClass( "ui-corner-top" ).addClass( "ui-corner-left" );
  });

$(function() {
    $( "#v-tab_container-2" ).tabs().addClass( "ui-tabs-vertical ui-helper-clearfix" );
    $( "#v-tab_container-2 li" ).removeClass( "ui-corner-top" ).addClass( "ui-corner-left" );
  });


$(document).ready(function(){
	$( "#switch" ).click(function() {
		var redirectLocation = "/art";
		window.location = redirectLocation;
	});
	
	$("#switch").hover(function() {
		$(this).attr("src","images/compsci/transition-artpage-hover.png");
			}, function() {
		$(this).attr("src","images/compsci/transition-artpage.png");
	});
	
});