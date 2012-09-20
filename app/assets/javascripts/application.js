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


//modals
$('#Company').modal('show');
//end of modals


//sign up and login 
$(document).ready(function(){

  $(window).ready(function() {
    $("#flipbook").turn({
      display: "single",
      turnCorners: "tr"
    });
  });

  $("#login-button").click(function(){
    if ($("#fliptrip-login").is(":hidden")) {
      $("#fliptrip-join").slideUp("slow");
      $("#fliptrip-forgot").slideUp("slow"); 
      $("#fliptrip-login").slideDown("slow");
      $("#fliptrip-confirm").slideUp("slow");
    }
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

  $("#hide-confirm-button").click(function(){
  $("#fliptrip-confirm").slideUp("slow");
  });


  $("#join-button").click(function(){
  if ($("#fliptrip-join").is(":hidden")) {
    $("#fliptrip-login").slideUp("slow");
    $("#fliptrip-forgot").slideUp("slow");
    $("#fliptrip-confirm").slideUp("slow");
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


  $("#confirm-button").click(function(){
  if ($("#fliptrip-confirm").is(":hidden")) {
    $("#fliptrip-login").slideUp("slow");
    $("#fliptrip-join").slideUp("slow");
    $("#fliptrip-confirm").slideDown("slow");}
  else {
    $("#fliptrip-login").hide();
    $("#fliptrip-join").hide();
    $("#fliptrip-confirm").slideUp("slow");}
  });

  
 });

// end of signup and login

