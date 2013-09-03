/**
 * Generate a grayed out popup div.
 * 
 * Usage:
 * 
 * 1. Declare what you wish to hide with an id: 		toPopup<identifier>
 * 
 * 2. Declare an image<img> or link<a> you wish
 *    to click with the same class as the above id: 	toPopup<identifier>
 * 
 * 3. Use the popup.css style, and add any ID's that 
 *    must be hidden to the hidden ID section: 			#toPopup<identifier>
 * 
 * 
 * Based on: http://istockphp.com/jquery/creating-popup-div-with-jquery/
 * 
 * @modifier: The Headless Hydra
 */

// Global used to declare which popup will be popped up next.
var toPopup = "#toPopup";

/** ************ selector functions ************* */
$('img').click(function() {
	// Get class description
	var classDecl = $(this).attr('class');
	
	// if it is a toPopup, declare the proper name and popup
	if (classDecl && classDecl.match(/^toPopup*/)) {
		toPopup = "#" + classDecl;
		loading();
		setTimeout(function() {
			loadPopup();
		}, 300); // 0.3 second delay
	}
	return false;
});

$('a').click(function() {
	// Get class description
	var classDecl = $(this).attr('class');

	// if it is a toPopup, declare the proper name and popup
	if (classDecl && classDecl.match(/^toPopup*/)) {
		toPopup = "#" + classDecl;
		loading();
		setTimeout(function() {
			loadPopup();
		}, 300); // 0.3 second delay
		return false;
	}
});

// Tooltip to show esc tooltip when hovering over close
$("div.close").hover(function() {
	$('span.ecs_tooltip').show();
}, function() {
	$('span.ecs_tooltip').hide();
});

// If close button clicked, close popup
$("div.close").click(function() {
	disablePopup();
});

// set up esc (27) key to close popup
$(this).keyup(function(event) {
	if (event.which == 27) {
		disablePopup();
	}
});

// If background is clicked, close popup
$("div#backgroundPopup").click(function() {
	disablePopup();
});

/** ************ main functions ************* */
function loading() {
	$("div.loader").show();
}
function closeloading() {
	$("div.loader").fadeOut('normal');
}

var popupStatus = 0;

// Fade in the popup
function loadPopup() {
	if (popupStatus == 0) {
		closeloading();
		$(toPopup).fadeIn(0500);
		$("#backgroundPopup").css("opacity", "0.9"); // css opacity, supports IE7, IE8
		$("#backgroundPopup").fadeIn(0001);
		popupStatus = 1;
	}
}

// Fade out the popup
function disablePopup() {
	if (popupStatus == 1) {
		reloadPlayers();
		$(toPopup).fadeOut("normal");
		$("#backgroundPopup").fadeOut("normal");
		popupStatus = 0;
	}
}

// Check if the thing being closed has an iframe id.
// If so, it is a video, so reload it to stop it from playing. 
function reloadPlayers() {   	
	var iframeID = $(toPopup).children('iframe').attr('id');
	
	if (iframeID){
		var iframe = document.getElementById(iframeID);
	    iframe.src = iframe.src;
	}
}