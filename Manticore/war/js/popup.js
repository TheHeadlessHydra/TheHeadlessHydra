/**
 * Generate a greyed out popup div.
 * 
 * Based on: http://istockphp.com/jquery/creating-popup-div-with-jquery/
 */

jQuery(function($) {

	// Event that opens popup
	$("a.topopup").click(function() {
			loading();
			setTimeout(function(){
				loadPopup();
			}, 500); // 0.5 second delay
	return false;
	});

	// Event that closes the popup
	$("div.close").hover(
					function() {
						$('span.ecs_tooltip').show();
					},
					function () {
    					$('span.ecs_tooltip').hide();
  					}
				);

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

	 /************** start: functions. **************/
	function loading() {
		$("div.loader").show();
	}
	function closeloading() {
		$("div.loader").fadeOut('normal');
	}

	var popupStatus = 0;

	// Open the popup
	function loadPopup() {
		if(popupStatus == 0) {
			closeloading();
			$("#toPopup").fadeIn(0500);
			$("#backgroundPopup").css("opacity", "0.7"); // css opacity, supports IE7, IE8
			$("#backgroundPopup").fadeIn(0001);
			popupStatus = 1;
		}
	}

	// Close  the popup
	function disablePopup() {
		if(popupStatus == 1) {
			$("#toPopup").fadeOut("normal");
			$("#backgroundPopup").fadeOut("normal");
			popupStatus = 0;
		}
	}
	/************** end: functions. **************/
}); // jQuery End