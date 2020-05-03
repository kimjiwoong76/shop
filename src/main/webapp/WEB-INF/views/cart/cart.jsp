<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	response.setContentType("text/html; charset=utf-8");
%>
<%@ include file="/WEB-INF/views/inc/header.jsp"%>
<div class="sub-layout">
	<div class="sub-visual">
		<div class="sub-visual-txt">
			<h2>My Life Style</h2>
		</div>
	</div>
	<div class="sub-content">
		<div class="container">
			<div class="row">
				<div class="shopping-cart">
					<div class="column-labels">
						<label class="product-image">Image</label> <label
							class="product-details">Product</label> <label
							class="product-price">Color</label> <label
							class="product-quantity">Size</label> <label
							class="product-removal">Remove</label> <label
							class="product-line-price">Price</label>
					</div>
					<form action="/product/buy.do">
					<c:set var="total" value="0" />
					<c:forEach var="result" items="${result}">
						<div class="product">
						<input type="hidden" name="prdNum" value="${result.prdNum}" >
						<div class="product-image">
							<img src="<c:out value='${result.pvo.prdImg}' />">
						</div>
						<div class="product-details">
							<div class="product-title">${result.pvo.prdName}</div>
						</div>
						<div class="product-price">${result.itemColor}</div>
						<div class="product-quantity">
							${result.itemSize}
						</div>
						<div class="product-removal">
							<button class="remove-product">Remove</button>
						</div>
						<div class="product-line-price">${result.pvo.prdPrice}</div>
					</div>
					</c:forEach>
					

					<div class="totals">
						<div class="totals-item">
							<label>가격</label>
							<div class="totals-value price-value" id="cart-subtotal">
								
							</div>
						</div>
						<div class="totals-item">
							<label>배송비 </label>
							<div class="totals-value" id="cart-tax">2,500원</div>
						</div>
						<div class="totals-item totals-item-total">
							<label>총 가격</label>
							<div class="totals-value" id="cart-total"></div>
						</div>
					</div>

					<button type="submit" class="checkout">구매하기</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


<script>

function refresh(){
	location.reload();
}

$(".remove-product").click(function(){
	$.ajax({
	 	contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	    url: "/cart/cartDelete.do",
	    type: "POST",
	    data: {"prdNum" : $("input[name=prdNum]").val()},
	    success: function(data){
	    	refresh();
	    },
	    error: function(data){
	    	alert("카트를 비우는 중 오류가 발생했습니다.");
	    }
	    /*
	    error: function (request, status, error){        
	        var msg = "ERROR : " + request.status + "<br>"
	      msg +=  + "내용 : " + request.responseText + "<br>" + error;
	      console.log(msg);              
	    }
	    */
	  });
});

 var txt = "${cartMessage}";

 if(txt.equals("")){
	 	alert("${cartMessage}");
	 	location.href="/";
	}
	
</script>

<%@ include file="/WEB-INF/views/inc/footer.jsp"%>