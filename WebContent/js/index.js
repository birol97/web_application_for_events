$(document).ready(function(){
    $("#menubar").fadeOut();

//side panel menu fadein and fadout
 
$("#menu").on( "click" ,function() {
    $("#menubar").fadeIn();
  
  })
  $("#close").on( "click" ,function() {
    $("#menubar").fadeOut();
  
  })
 
})
let z = 0;

//image slide show
function change(n){ 
  
  $("#img22").fadeOut();
  
   if(n == 1){
  var x = document.getElementById('img22');
     x.src="pictures/gamble.jpg"
     $("#img22").fadeIn();
     $('.prev').attr('onclick','change(3)')
     $('.next').attr('onclick','change(2)')
   }
   if(n == 2){
    var x = document.getElementById('img22');
       x.src="pictures/party.jpg"
       $('.prev').attr('onclick','change(1)')
       $('.next').attr('onclick','change(3)')
    $("#img22").fadeIn();
     }
    
     if(n == 3){
      var x = document.getElementById('img22');
         x.src="pictures/revolt.jpg"
         $('.prev').attr('onclick','change(2)')
         $('.next').attr('onclick','change(1)')
      $("#img22").fadeIn();
       }
    
    
}
//Functions that are below is created for making a dom tree

function showdd(){
  $("#head1").css('display','block');
  $("#body1").css('display','block');
  $(".main").css('display','block');
}
function hidemain(){
  $("#head1").css('display','none');
  $("#body1").css('display','none');
  $(".main").css('display','none');
}
function show2(){
  $(".div2").css('display','block');
}
function hidehead(){
  $(".div2").css('display','none');
}
function show3(){
  $(".div1").css('display','block');

}
function showfooter(){
  $(".footer1").css('display','block');

}
function hidebody(){
  $(".div1").css('display','none');

}
function hidefooter(){
  $(".footer1").css('display','none');

}

function showDescription(){
  $(".Description1").css('display','block');

}
function hideDesc(){
  $(".Description1").css('display','block');

}
function showmenuitem(){
  $(".menubar1").css('display','block');

}

function hidemenuitem(){
  $(".menubar1").css('display','none');
}