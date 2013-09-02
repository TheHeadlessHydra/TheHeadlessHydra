/*
 * art pages various scripts 
 * 
 */

$(document).ready(function(){
  $("div.fade").hover(
  function() {
  $(this).stop().animate({"opacity": "1"}, "slow");
  },
  function() {
  $(this).stop().animate({"opacity": "0.3"}, "slow");
  });
  
  });