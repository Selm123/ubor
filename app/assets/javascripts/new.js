$(document).ready(function () {
  // hide the control panel of google map api
  $("#floating-panel").hide();

  $("#confirm-booking").on("click",function() {
    alert("Job created! Waiting for driver to take the job...")
  });
  
  $("#entrance-header-left").on("click",function() {
    $("#entrance-header-left").css("border-bottom", "2px solid black");
    $("#entrance-header-right").css("border-bottom", "none");
    // $("body.pages.home").attr("style","background-image: url('hero_banner_1.jpeg')");
    $("#entrance-main-1").show();
    $("#entrance-main-2").hide();
  });

  $("#entrance-header-right").on("click",function() {
    $("#entrance-header-right").css("border-bottom", "2px solid black")
    $("#entrance-header-left").css("border-bottom", "none");

    $("#entrance-main-2").show();
    $("#entrance-main-1").hide();
  });
});
