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
								action="/userJoinProc.do" name="shopMember">
								<div class="form-group" id="divPassword">
									<label for="inputPassword" class="col-lg-2 control-label">상품 카테고리</label>
									<div class="col-lg-10">
										<select name="cateCod" class="form-control" id="cateCod">
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
											data-rule-required="true"
											placeholder="상품명은 30자 이내로만 가능 합니다" value="${prdInsert.prdName}"
											maxlength="30">
									</div>
								</div>
								<div class="form-group" id="divPasswordCheck">
									<label for="inputPasswordCheck" class="col-lg-2 control-label">상품 가격</label>
									<div class="col-lg-10">
										<input name="prdPrice" type="number" class="form-control"
											id="prdPrice" data-rule-required="true"
											placeholder="100,000" maxlength="30">
									</div>
								</div>
								<div class="form-group" id="divName">
									<label for="inputName" class="col-lg-2 control-label">수량</label>
									<div class="col-lg-10">
										<input name="prdStock" type="number"
											class="form-control onlyHangul" id="prdStock"
											data-rule-required="true" placeholder="수량을 입력해주세요"
											maxlength="1000">
									</div>
								</div>

								<div class="form-group" id="divNickname">
									<label for="inputNickname" class="col-lg-2 control-label">상품 설명</label>
									<div class="col-lg-10">
										<input name="prdDes" type="text" class="form-control"
											id="nickname" data-rule-required="true" placeholder="상품 설명을 입력해주세요">
									</div>
								</div>

								<div class="form-group" id="divEmail">
									<label for="inputEmail" class="col-lg-2 control-label">이미지 등록</label>
									<div class="col-lg-10">
										<input name="imgFile" type="file" class="form-control"
											id="imgFile" data-rule-required="true">
									</div>
								</div>
								<div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<button type="submit" class="btn btn-default">상품 등록</button>
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
			<div class="row">
				<div class="col-12">
					<!-- DONUT CHART -->
					<div class="card card-danger">
						<div class="card-header">
							<h3 class="card-title">Donut Chart</h3>

							<div class="card-tools">
								<button type="button" class="btn btn-tool"
									data-card-widget="collapse">
									<i class="fas fa-minus"></i>
								</button>
								<button type="button" class="btn btn-tool"
									data-card-widget="remove">
									<i class="fas fa-times"></i>
								</button>
							</div>
						</div>
						<div class="card-body">
							<canvas id="donutChart"
								style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
						</div>
						<!-- /.card-body -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@ include file="/WEB-INF/views/adm/inc/footer.jsp"%>

