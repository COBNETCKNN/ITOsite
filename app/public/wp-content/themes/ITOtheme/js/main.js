jQuery(document).ready(function (jQuery) {
  jQuery(".recipe_card").eq(1).addClass("second_card");
  jQuery(".nav-toggler").each(function (_, navToggler) {
    var target = jQuery(navToggler).data("target");
    jQuery(navToggler).on("click", function () {
      jQuery(target).animate({
        height: "toggle"
      });
    });
  });
});
