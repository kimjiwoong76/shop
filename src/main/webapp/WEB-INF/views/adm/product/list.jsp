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
							<h3 class="card-title">상품리스트</h3>

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
							<div class="jsgrid-grid-header jsgrid-header-scrollbar">
								<table class="jsgrid-table">
									<thead>
									<tr class="jsgrid-header-row">
										<th class="jsgrid-header-cell jsgrid-header-sortable" style="width: 150px">썸네일</th>
										<th class="jsgrid-header-cell jsgrid-header-sortable" style="width: 150px">번호</th>
										<th class="jsgrid-header-cell jsgrid-header-sortable" style="width: 150px">상품명</th>
										<th class="jsgrid-header-cell jsgrid-header-sortable" style="width: 150px">상품카테고리</th>
										<th class="jsgrid-header-cell jsgrid-header-sortable" style="width: 150px">상품가격</th>
										<th class="jsgrid-header-cell jsgrid-header-sortable" style="width: 150px">수량</th>
									</tr>
									</thead>
									<tbody>
										<c:forEach var="result" items="${admProductList}">
										<tr class="jsgrid-row">
											<td class="jsgrid-cell" style="width: 150px"><img src="<c:out value="${result.PRDIMG}" />"></td>
											<td class="jsgrid-cell" style="width: 150px"><c:out value="${result.PRDNUM}" /></td>
											<td class="jsgrid-cell" style="width: 150px"><c:out value="${result.PRDNAME}" /></td>
											<td class="jsgrid-cell" style="width: 150px"><c:out value="${result.CATECODE}" /></td>
											<td class="jsgrid-cell" style="width: 150px"><c:out value="${result.PRDPRICE}" /></td>
											<td class="jsgrid-cell" style="width: 150px"><c:out value="${result.PRDSTOCK}" /></td>
										</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
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

