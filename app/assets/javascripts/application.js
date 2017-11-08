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
$(document).ready(function(){
  $("#owl-example").owlCarousel({
    navigation : true,
      slideSpeed : 300,
      paginationSpeed : 400,
      singleItem: true,
      pagination: false,
      rewindSpeed: 500
  });


  $(".hide-ingredient").click(function(){
    $(this).parent().parent().parent().find('input').val('');
    $(this).parent().parent().parent().removeClass('ingr-active');
    // if($('.ingr-active').length <= 0){
    //   $('.outside').show();
    // }
  });

  $(".show-ingredient").on("click", function(e) {
    e.preventDefault();
    var ingrets = $('.ingredient-form');
    // if($(e.target).hasClass('outside')){
      // $(e.target).hide();
    // }

    for(var int=0; int < 20; int++){
      if(!$(ingrets[int]).hasClass('ingr-active')){
        $(ingrets[int]).addClass('ingr-active');
        break;
      }
    }
  });
});
