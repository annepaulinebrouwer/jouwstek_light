$(function(){

  $(".tab").on("click", function(e){
    $('.tab').removeClass('active');
    $(this).addClass('active');

    $(".tab-content").addClass("hidden");

    activetab = $(this).data("target");
    $(activetab).removeClass("hidden");

  });

});
