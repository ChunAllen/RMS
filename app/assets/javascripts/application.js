// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery

//= require jquery_ujs
//= require jquery.ui.all
//= require jquery-ui
//= require dataTables/jquery.dataTables
//= require twitter/bootstrap

//= require_tree .


$(document).ready(function(){

  $(window).ready(function() {
  $("#flipbook").turn({
    display: "single",
    turnCorners: "tr"
  });
  });

  $(window).bind('keydown', function(e){
  if (e.keyCode==37)
    $('#flipbook').turn('previous');
  else if (e.keyCode==39)
    $('#flipbook').turn('next');
  });



  $("#login-button").click(function(){
    if ($("#fliptrip-login").is(":hidden")) {
      $("#fliptrip-join").slideUp("slow");
      $("#fliptrip-forgot").slideUp("slow");
      $("#fliptrip-login").slideDown("slow");} 
    else {
    $("#fliptrip-login").slideUp("slow");
    $("#fliptrip-join").hide();}
  });

  $("#hide-login-button").click(function(){
    $("#fliptrip-login").slideUp("slow");
  });

  $("#hide-join-button").click(function(){
    $("#fliptrip-join").slideUp("slow");
  });

  $("#hide-forgot-button").click(function(){
  $("#fliptrip-forgot").slideUp("slow");
  });

  $("#join-button").click(function(){
  if ($("#fliptrip-join").is(":hidden")) {
    $("#fliptrip-login").slideUp("slow");
    $("#fliptrip-forgot").slideUp("slow");
    $("#fliptrip-join").slideDown("slow");}
  else {
    $("#fliptrip-login").hide();
    $("#fliptrip-join").slideUp("slow");}
  });

  $("#forgot-button").click(function(){
  if ($("#fliptrip-forgot").is(":hidden")) {
    $("#fliptrip-login").slideUp("slow");
    $("#fliptrip-join").slideUp("slow");
    $("#fliptrip-forgot").slideDown("slow");}
  else {
    $("#fliptrip-login").hide();
    $("#fliptrip-join").hide();
    $("#fliptrip-forgot").slideUp("slow");}
  });
  
 });


 $('#EditRestaurant').modal('show');


$(document).ready(function(){
 		openMyModal = function(restaurant){
 		$('#restaurantId').html(restaurant);
		$('#EditRestaurant').modal('show');
	}
 });

