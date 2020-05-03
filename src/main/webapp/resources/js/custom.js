
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
    


    /* Assign actions */
    
    	 var subtotal = 0;
    	 var cartTax = 0;
    	 var total = 0;
         $('.product').each(function () {
             subtotal += parseFloat(uncomma($(this).children('.product-line-price').text()));
           });
         total = parseInt(subtotal) + 2500;
         $(".price-value").text(numberFormat(subtotal));
         $("#cart-total").text(numberFormat(total));
    $('.product-removal button').click( function() {
      removeItem(this);
    });
    
    function uncomma(x){
		return x.toString().replace(/[^\d]+/g, '');
	}
    function numberFormat(x) {
 	   return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
 	   
 	}

//    /* Remove item from cart */
//    function removeItem(removeButton)
//    {
//      /* Remove row from DOM and recalc cart total */
//      var productRow = $(removeButton).parent().parent();
//      productRow.slideUp(fadeTime, function() {
//        productRow.remove();
//      });
//    }
});