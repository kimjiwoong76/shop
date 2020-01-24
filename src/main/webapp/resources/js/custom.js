
$(function(){
    $(".hamburger").click(function () {
        $(this).toggleClass("is-active");

    });

    $(".hamburger").click(function () {

        if ($(".m-menu").css("display") == "none") {
            $(".m-menu").show().animate({
                "right": "0"
            });
            $(".m-menu-bg").show();
            $(".m-menu").show();
//            $("m-menu-bg").css("position","fixed");

        } else {
            $("html, body").css("position","static");
            $(".m-menu").stop().animate({
                "right": "-100%"
            }, 400);
            $(".m-menu-bg").hide();
            setTimeout(function () {
                $(".m-menu").css("display", "none");
            }, 400);
//            $('m-menu-bg').css({"overflow": "", "position" : "static"});
        }
    });
});