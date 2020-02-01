<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/adm/inc/header.jsp"%>

<script type="text/javascript">
	$(function() {
		var opt_color = [];
		var opt_size = [];
		var prdPrice;
		$("#prdPrice").keyup(function(){
			prdPrice = $("#prdPrice").val();
			numberFormat(uncomma(prdPrice));
		});
		$("#prdimg").change(
				function() {
					if (this.files && this.files[0]) {
						var reader = new FileReader;
						reader.onload = function(data) {
							$("#prdimg-thum").append(
									"<img src=" + data.target.result + ">");
						}
						reader.readAsDataURL(this.files[0]);
					}
				});

		$("#colorInput").click(
				function() {
					if($("#prdColor").val() == ""){
						alert("color를 입력해주세요");
						return false;
					} else {
						var ps = $("#prdColor").val();
						$("#color").append(
								"<option value='" + ps + "'>" + ps + "</option>");
						opt_color.push(ps);
						$("#prdColor").val("");	
					}
					opt_color.join(",");
					$("input[name=prdColor]").val(opt_color);
				});

		

		$("#sizeInput").click(
				function() {
					if($("#prdSize").val() == ""){
						alert("size를 입력해주세요");
						return false;
					} else {
						var ps2 = $("#prdSize").val();
						$("#size").append("<option value='" + ps2 + "'>" + ps2 + "</option>");
						opt_size.push(ps2);
						$("#prdSize").val("");
					}
					opt_size.join(",");
					$("input[name=prdSize]").val(opt_size);
				});
	});
	
	function uncomma(x){
		return x.toString().replace(/[^\d]+/g, '');
	}
	
	function numberFormat(x) {
	   $("#prdPrice").val(x.replace(/\B(?=(\d{3})+(?!\d))/g, ","));
	   
	}
</script>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Fixed Footer Layout</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Layout</a></li>
						<li class="breadcrumb-item active">Fixed Footer Layout</li>
					</ol>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<!-- Default box -->
					<div class="card">
						<div class="card-header">
							<h3 class="card-title">상품등록</h3>

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
								action="/adm/product/formInsert.do" name="shopMember"
								enctype="multipart/form-data">		
								<div class="form-group" id="divPassword">
									<label for="cateCode" class="col-lg-2 control-label">상품
										카테고리</label>
									<div class="col-lg-10">
										<select name="cateCode" class="form-control" id="cateCode">
											<option value="남자 의류">남자 의류</option>
											<option value="여자 의류">여자 의류</option>
										</select>
									</div>
								</div>
								<div class="form-group" id="divId">
									<label for="inputId" class="col-lg-2 control-label">상품명</label>
									<div class="col-lg-10">
										<input name="prdName" type="text"
											class="form-control onlyAlphabetAndNumber" id="id"
											data-rule-required="true" placeholder="상품명은 30자 이내로만 가능 합니다"
											maxlength="30">
									</div>
								</div>
								<div class="form-group" id="divPasswordCheck">
									<label for="prdPrice" class="col-lg-2 control-label">상품
										가격</label>
									<div class="col-lg-10">
										<input name="prdPrice" type="text" class="form-control mb-1"
											id="prdPrice" data-rule-required="true" placeholder="100,000"
											maxlength="30">
									</div>
								</div>
								<div class="form-group" id="divName">
									<label for="prdStock" class="col-lg-2 control-label">수량</label>
									<div class="col-lg-10">
										<input name="prdStock" type="number"
											class="form-control onlyHangul" id="prdStock"
											data-rule-required="true" placeholder="수량을 입력해주세요"
											maxlength="1000">
									</div>
								</div>
								<div class="form-group" id="divName">
									<label for="prdColor" class="col-lg-2 control-label">color</label>
									<div class="col-lg-10">
										<input name="" type="text"
											class="form-control onlyHangul mb-1" id="prdColor"
											data-rule-required="true" placeholder="색상을 입력해주세요."
											maxlength="1000">
										<button type='button' class="mb-1 btn btn-default"
											id="colorInput">입력</button>
									</div>
									<div class="col-lg-10">
										<select name="color" class="form-control mb-1" id="color">

										</select>
										<input type="text" name="prdColor" class="form-control onlyHangul" readonly>
									</div>
								</div>
								<div class="form-group" id="divName">
									<label for="prdSize" class="col-lg-2 control-label">사이즈</label>
									<div class="col-lg-10">
										<input name="" type="text"
											class="form-control onlyHangul mb-1" id="prdSize"
											data-rule-required="true" placeholder="사이즈를 입력해주세요."
											maxlength="1000">
										<button type='button' class="btn mb-1 btn-default"
											id="sizeInput">입력</button>
									</div>
									<div class="col-lg-10">
										<select name="size" class="form-control mb-1" id="size">

										</select>
										<input type="text" name="prdSize" class="form-control onlyHangul" readonly>	
									</div>
								</div>

								<div class="form-group" id="divNickname">
									<label for="inputNickname" class="col-lg-2 control-label">상품
										설명</label>
									<div class="col-lg-10">
										<input name="prdDes" type="text" class="form-control"
											id="nickname" data-rule-required="true"
											placeholder="상품 설명을 입력해주세요">
									</div>
								</div>

								<div class="form-group" id="divEmail">
									<label for="inputEmail" class="col-lg-2 control-label">이미지
										등록</label>
									<div class="col-lg-10">
										<input name="file" type="file" class="form-control"
											id="prdimg" data-rule-required="true">
									</div>
									<div id="prdimg-thum"></div>
								</div>
								<div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<button type="submit"
											class="btn btn-default">상품 등록</button>
									</div>
								</div>
							</form>
						</div>
						<!-- /.card-body -->
						<div class="card-footer">Footer</div>
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

<%@ include file="/WEB-INF/views/adm/inc/footer.jsp"%>

