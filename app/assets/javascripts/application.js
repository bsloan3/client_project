// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//


//= require rails-ujs
//= require_tree .
jQuery(document).ready(function() {

  jQuery("#owl-example").owlCarousel({
    navigation : true,
      slideSpeed : 300,
      paginationSpeed : 400,
      singleItem: true,
      pagination: false,
      rewindSpeed: 500
  });

});


$(document).ready(function(){
  $(".hide-ingredient").click(function(){
    $(this).parent().hide();
  })

  $(".show-ingredient").on("click", function(e) {
    e.preventDefault();
    // debugger
    var shits = $('.ingredient-form')
    // debugger

    for(var shit=0; shit < 20; shit++){
      if($(shits[shit]).css('display') === 'none'){
        $(shits[shit]).css('display', 'block');
        break;
      }
    }
    // var form = $(".new-ingredient-form").clone();
    // e.preventDefault();
    // $(".ingredients-form").append(form);
   })
})
