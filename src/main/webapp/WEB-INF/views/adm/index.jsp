<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/adm/inc/header.jsp"%>
<script>
	var cate = '<c:out value="${cate}" />';
	function fn_paging(curPage) {
		location.href = "/ado.do?cateCode="+ cate +"&curPage=" + curPage;
	}
</script>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>메인페이지</h1>
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
							<h3 class="card-title">구매리스트</h3>

							<div class="card-tools">
								<button type="button" class="btn btn-tool"
									data-card-widget="collapse" data-toggle="tooltip"
									title="Collapse">
									<i class="fas fa-minus"></i>
								</button>
								<button type="button" class="btn btn-tool"
									data-card-widget="remove" data-toggle="tooltip" title="Remove">
									<i class="fas fa-times"></i>
								</button>
							</div>
						</div>
						<div class="card-body">
							<table class="table">
								<thead>
									<th>구매자</th>
									<th>주소</th>
									<th>상품</th>
									<th>사이즈</th>
									<th>컬러</th>
								</thead>
								<tbody>
									<c:forEach items="${list}" var="buy_list">
										<tr>
											<td>${buy_list.BUY_NAME}</td>
											<td>${buy_list.BUY_ADDRESS1}${buy_list.BUY_ADDRESS2}
												${buy_list.BUY_ADDRESS3}</td>
											<td>${buy_list.BUY_ITEM}</td>
											<td>${buy_list.BUY_SIZE}</td>
											<td>${buy_list.BUY_COLOR}</td>
										</tr>
									</c:forEach>
								</tbody>
								</tr>
							</table>
						</div>
						<!-- /.card-body -->
						<div class="card-footer">
							<div class="paging">
								<div>
									<c:if test="${paging.curRange ne 1 }">
										<a href="#" onClick="fn_paging(1)">[처음]</a>
									</c:if>
									<c:if test="${paging.curPage ne 1}">
										<a href="#" onClick="fn_paging('${paging.prevPage }')">[이전]</a>
									</c:if>
									<c:forEach var="pageNum" begin="${paging.startPage }"
										end="${paging.endPage }">
										<c:choose>
											<c:when test="${pageNum eq  paging.curPage}">
												<a href="#" class="on" onClick="fn_paging('${pageNum }')">${pageNum }</a>
											</c:when>
											<c:otherwise>
												<a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<c:if
										test="${paging.curPage ne paging.pageCnt && paging.pageCnt > 0}">
										<a href="#" onClick="fn_paging('${paging.nextPage }')">[다음]</a>
									</c:if>
									<c:if
										test="${paging.curRange ne paging.rangeCnt && paging.rangeCnt > 0}">
										<a href="#" onClick="fn_paging('${paging.pageCnt }')">[끝]</a>
									</c:if>
								</div>
								<!--  
				                <div>
				                    	총 게시글 수 : ${paging.listCnt } /    총 페이지 수 : ${paging.pageCnt } / 현재 페이지 : ${paging.curPage } / 현재 블럭 : ${paging.curRange } / 총 블럭 수 : ${paging.rangeCnt }
				                </div>
				                -->
							</div>
						</div>
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
							<h3 class="card-title">판매 카테고리</h3>

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
<script type="text/javascript">
	$(function() {

		var man = "${man}";
		var woman = "${woman}";
		var children = "${children}";
		var un = "${un}";

		//- DONUT CHART -
		//-------------
		// Get context with jQuery - using jQuery's .get() method.
		var donutChartCanvas = $('#donutChart').get(0).getContext('2d')
		var donutData = {
			labels : [ 'Man', 'Woman', 'Children', 'Unclass' ],
			datasets : [ {
				data : [ man, woman, children, un ],
				backgroundColor : [ '#f56954', '#00a65a', '#f39c12', '#00bfff' ],
			} ]
		}
		var donutOptions = {
			maintainAspectRatio : false,
			responsive : true,
		}
		//Create pie or douhnut chart
		// You can switch between pie and douhnut using the method below.
		var donutChart = new Chart(donutChartCanvas, {
			type : 'doughnut',
			data : donutData,
			options : donutOptions
		})

		//-------------
	});
</script>
<%@ include file="/WEB-INF/views/adm/inc/footer.jsp"%>

