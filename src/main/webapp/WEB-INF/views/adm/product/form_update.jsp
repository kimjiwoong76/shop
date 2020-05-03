<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/adm/inc/header.jsp"%>

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
								 name="productForm" enctype="multipart/form-data">
								<input type="hidden" name="prdNum" value="${productUpdate.prdNum}" />
								<div class="form-group" id="divPassword">
									<label for="inputPassword" class="col-lg-2 control-label">상품 카테고리</label>
									<div class="col-lg-10">
										<select name="cateCode" class="form-control" id="cateCod">
										<c:set var="prdUpdate" value="${productUpdate.cateCode}" />
											<option value="남자 의류" <c:if test="${prdUpdate eq '남자 의류 '}" ><c:out value="selected" /></c:if>>남자 의류</option>
											<option value="여자 의류" <c:if test="${prdUpdate eq '여자 의류 '}" ><c:out value="selected" /></c:if>>여자 의류</option>
										</select>
									</div>
								</div>
								<div class="form-group" id="divId">
									<label for="inputId" class="col-lg-2 control-label">상품명</label>
									<div class="col-lg-10">
										<input name="prdName" type="text"
											class="form-control onlyAlphabetAndNumber" id="id"
											data-rule-required="true"
											placeholder="상품명은 30자 이내로만 가능 합니다" value="${productUpdate.prdName}"
											maxlength="30">
									</div>
								</div>
								<div class="form-group" id="divPasswordCheck">
									<label for="inputPasswordCheck" class="col-lg-2 control-label">상품 가격</label>
									<div class="col-lg-10">
										<input name="prdPrice" type="text" class="form-control"
											id="prdPrice" data-rule-required="true"
											placeholder="100,000" value="${productUpdate.prdPrice}">
									</div>
								</div>
								<div class="form-group" id="divName">
									<label for="inputName" class="col-lg-2 control-label">수량</label>
									<div class="col-lg-10">
										<input name="prdStock" type="number"
											class="form-control onlyHangul" id="prdStock"
											data-rule-required="true" placeholder="수량을 입력해주세요"
											maxlength="1000" value="${productUpdate.prdStock}">
									</div>
								</div>
								<div class="form-group" id="divName">
									<label for="prdColor" class="col-lg-2 control-label">color</label>
									<div class="col-lg-10">
										<input type="text" name="prdColor" class="form-control onlyHangul" value="${productUpdate.prdColor}">
									</div>
								</div>
								<div class="form-group" id="divName">
									<label for="prdSize" class="col-lg-2 control-label">사이즈</label>
									<div class="col-lg-10">
										<input type="text" name="prdSize" class="form-control onlyHangul" value="${productUpdate.prdSize}">	
									</div>
								</div>

								<div class="form-group" id="divNickname">
									<label for="inputNickname" class="col-lg-2 control-label">상품 설명</label>
									<div class="col-lg-10">
										<textarea name="prdDes" id="prdDes" cols="30" rows="10" placeholder="상품 설명을 입력해주세요"></textarea>
									</div>
								</div>

								<div class="form-group" id="divEmail">
									<label for="inputEmail" class="col-lg-2 control-label">이미지 등록</label>
									<div class="col-lg-10">
										<input name="file" type="file" class="form-control"
											id="prdimg1" data-rule-required="true" va>
										<p>${productUpdate.prdImg}</p>
									</div>
								</div>
								<div class="form-group" id="divEmail">
									<label for="inputEmail" class="col-lg-2 control-label">이미지
										등록</label>
									<div class="col-lg-10">
										<input name="file" type="file" class="form-control"
											id="prdimg2" data-rule-required="true">
										<p>${productUpdate.prdImg2}</p>
									</div>
									<div id="prdimg-thum"></div>
								</div>
								<div class="form-group" id="divEmail">
									<label for="inputEmail" class="col-lg-2 control-label">이미지
										등록</label>
									<div class="col-lg-10">
										<input name="file" type="file" class="form-control"
											id="prdimg3" data-rule-required="true">
										<p>${productUpdate.prdImg3}</p>
									</div>
									<div id="prdimg-thum"></div>
								</div>
								<div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<button type="submit" class="btn btn-default submit" value="/adm/product/form_updateProc.do">상품 수정</button>
										<button type="button" class="btn btn-default distroy">상품 삭제</button>
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
<script>
	$(function(){
		
		$("button.submit").click(function(){
			var form1 = document.productForm;
			form1.action = $(this).val();
			form1.submit();
		});
		
		$("button.distroy").click(function(){
			var form2 = document.productForm;
			var result = confirm("삭제 하시겠습니까?");
			
			if(result){
				<!--
				location.href = "/product/delete.do";
				-->
				form2.action = "/product/delete.do";
				form2.submit();
			}
			
		});
	});
</script>
<script>
	
	var ckeditor_config = {
			resize_enaleb : false,
			enterMode : CKEDITOR.ENTER_BR,
			shiftEnterMode : CKEDITOR.ENTER_P,
			filebrowserUploadUrl : "/editorUpload.do"
	};
	CKEDITOR.replace("prdDes", ckeditor_config);
	CKEDITOR.instances.prdDes.setData(' ${productUpdate.prdDes} ');
</script>

<%@ include file="/WEB-INF/views/adm/inc/footer.jsp"%>

