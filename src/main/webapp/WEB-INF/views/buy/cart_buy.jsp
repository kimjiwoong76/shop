<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	response.setContentType("text/html; charset=utf-8");
%>
<%@ include file="/WEB-INF/views/inc/header.jsp"%>
<%@ include file="/WEB-INF/views/inc/visual.jsp"%>

<script type="text/JavaScript"
	src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	function openDaumZipAddress() {
		new daum.Postcode({
			oncomplete : function(data) {
				jQuery("#postcode1").val(data.postcode1);
				jQuery("#postcode2").val(data.postcode2);
				jQuery("#zonecode").val(data.zonecode);
				jQuery("#address").val(data.address);
				jQuery("#address_etc").focus();
				console.log(data);
			}
		}).open();
	}
</script>

<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<div class="sub-content">
	<!-- Content Wrapper. Contains page content -->
	<div class="container">
		<div class="row">
			<div class="sub-tit">
				<p>Buy</p>
				<h3>구매페이지</h3>
			</div>

			<div class="content-wrapper">
				<!-- Main content -->
				<section class="content">
					<div class="container-fluid">
						<div class="row">
							<div class="col-12">
								<!-- Default box -->
								<div class="card">
									<div class="card-header">
										<div class="card-tools">
											<button type="button" class="btn btn-tool"
												data-card-widget="collapse" data-toggle="tooltip"
												title="Collapse">
												<i class="fas fa-minus"></i>
											</button>
											<!-- 
								<button type="button" class="btn btn-tool"
									data-card-widget="remove" data-toggle="tooltip" title="Remove">
									<i class="fas fa-times"></i>
								</button>
								 -->
										</div>
									</div>
									<div class="card-body">
										<form class="form-horizontal" role="form" method="post"
											action="#!" name="buy_form" enctype="multipart/form-data">
											<c:forEach var="result" items="${result}">
											<input type="hidden" name="prdNum" value="${result.prdNum}" >
											<input type="hidden" name="prdPrice" value="${result.pvo.prdPrice}">
											<div class="form-wrap">
												<p>상품정보</p>
												<table>
													<tr>
														<th>상품명</th>
														<td>${result.pvo.prdName}</td>
													</tr> 
													<tr>
														<th>상품가격</th>
														<td>${result.pvo.prdPrice}</td>
													</tr>
													<tr>
														<th>color</th>
														<td>${result.itemColor}</td>
													</tr>
													<tr>
														<th>사이즈</th>
														<td>${result.itemSize}</td>
													</tr>
												</table>
											</div>
											</c:forEach>
											<div class="form-wrap">
												<p>구매자 정보</p>
												<table>
													<tr>
														<th>받으시는분</th>
														<td><input type="text" name="buy_name" /></td>
													</tr>
													<tr>
														<th>연락처</th>
														<td><input type="text" name="buy_tel" /></td>
													</tr>
													<tr>
														<th>주소</th>
														<td>
															<p>
																<input id="zonecode" type="text" name="buy_address1"
																	style="width: 300px;" readonly /> &nbsp; <input
																	type="button" onClick="openDaumZipAddress();"
																	value="주소 찾기" />
															</p>
															<p>
																<input type="text" id="address" name="buy_address2"
																	style="width: 240px;" readonly /> <input type="text"
																	id="address_etc" name="buy_address3"
																	style="width: 200px;" />
															</p>
														</td>
													</tr>
												</table>
											</div>
											<div class="buy-btn">
												<button type="button" onclick="return check();">구매하기</button>
											</div>
										</form>
									</div>

									<!-- /.card-body -->
									<!-- /.card-footer-->
								</div>

								<!-- /.card -->
							</div>
						</div>
					</div>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->
		</div>
	</div>
</div>
<script>
									function check(){
										if($("input[name=buy_name]").val() == ""){
											alert("받으시는 분을 입력해 주세요");
											return false;
										}
										if($("input[name=buy_tel]").val() == ""){
											alert("연락처를 입력해 주세요");
											return false;
										}
										if($("input[name=buy_address1]").val() == ""){
											alert("주소를 입력해 주세요");
											return false;
										}
										
										buyApi();
										
									}
									
									function buyApi(){
										var price2;
										var price3 = 0;
										IMP.init('imp70997409');
										var name = $("input[name=buy_name]").val();
										var tel = $("input[name=buy_tel]").val();
										var address = $("input[name=buy_address2]").val();
										var address2 = $("input[name=buy_address3]").val();
										var price = $("input[name=prdPrice]").length;
											for(i=0; i<price; i++){
												price2 = parseInt($("input[name=prdPrice]").eq(i).val().replace(",",""));
												price3 += price2;
											}
										var form = $("form").serialize();
										IMP.request_pay({
										    pg : 'inicis', // version 1.1.0부터 지원.
										    pay_method : 'card',
										    merchant_uid : 'merchant_' + new Date().getTime(),
										    name : "장바구니 아이템",
										    amount : price3, //판매 가격
										    buyer_name : name,
										    buyer_tel : tel,
										    buyer_addr : address,
										    buyer_postcode : address2
										}, function(rsp) {
										    if ( rsp.success ) {
										        var msg = '결제가 완료되었습니다.';
										        msg += '고유ID : ' + rsp.imp_uid;
										        msg += '상점 거래ID : ' + rsp.merchant_uid;
										        msg += '결제 금액 : ' + rsp.paid_amount;
										        msg += '카드 승인번호 : ' + rsp.apply_num;
										        console.log(rsp.paid_amount);
										        $.ajax({
										        	type : "GET",
										        	url : "/buy/buyProc.do",
										        	data : form,
										        });
										        alert(msg);
										        return location.href="/buy/success.do";
										    } else {
										        var msg = '결제에 실패하였습니다.';
										        msg += '에러내용 : ' + rsp.error_msg;
										        alert(msg);
// 										        return location.href="/buy/fail.do";
										    }
										    
										});
									}
									
								</script>
<%@ include file="/WEB-INF/views/inc/footer.jsp"%>

