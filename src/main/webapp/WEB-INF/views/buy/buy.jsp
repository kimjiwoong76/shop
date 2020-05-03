<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
											action="/buy/buyProc.do" name="buy_form"
											enctype="multipart/form-data">
											<input type="hidden" name="buy_item" value="${result.prdName}" />
											<input type="hidden" name="buy_price" value="${result.prdPrice}" /> 
											<input type="hidden" name="buy_color" value="${result.prdColor}" /> 
											<input type="hidden" name="buy_size" value="${result.prdSize}" />
											<input type="hidden" name="buy_cate" value="${result.cateCode}" />
											<div class="form-wrap">
												<p>상품정보</p>
												<table>
													<tr>
														<th>상품명</th>
														<td>${result.prdName}</td>
													</tr>
													<tr>
														<th>상품가격</th>
														<td>${result.prdPrice}</td>
													</tr>
													<tr>
														<th>color</th>
														<td>${result.prdColor}</td>
													</tr>
													<tr>
														<th>사이즈</th>
														<td>${result.prdSize}</td>
													</tr>
												</table>
											</div>
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
																<input id="zonecode" type="text" name="buy_address1" style="width: 50px;" readonly /> &nbsp; 
																<input type="button" onClick="openDaumZipAddress();" value="주소 찾기" /> 
															</p>
															<p>
																<input type="text" id="address" name="buy_address2" style="width: 240px;" readonly />
															 	<input type="text" id="address_etc" name="buy_address3" style="width: 200px;" />
															</p>
														</td>
													</tr>
												</table>
											</div>
											<div class="buy-btn">
												<button type="submit">구매하기</button>
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

<%@ include file="/WEB-INF/views/inc/footer.jsp"%>

