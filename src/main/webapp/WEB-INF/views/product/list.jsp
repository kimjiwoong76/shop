<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/header.jsp"%>

<script>
	var cate = '<c:out value="${cate}" />';
	function fn_paging(curPage) {
		location.href = "/product/list.do?cateCode="+ cate +"&curPage=" + curPage;
	}
</script>

<div class="sub-layout">
    <div class="sub-visual">
        <div class="sub-visual-txt">
            <h2>My Life Style</h2>
        </div>
    </div>
    <div class="sub-content">
        <div class="container">
            <div class="row">
                <div class="sub-tit">
                    <p>Item</p>
                    <h3>Product</h3>
                </div>
                <!--  
                <div class="sub-category">
                    <ul>
                        <li>
                            <a href="/product/list.do">Hood<span>(5)</span></a>
                        </li>
                        <li>
                            <a href="/product/list.do">Tees<span>(80)</span></a>
                        </li>
                        <li>
                            <a href="/product/list.do">Shirts<span>(16)</span></a>
                        </li>
                        <li>
                            <a href="/product/list.do">Vest<span>(5)</span></a>
                        </li>
                        <li>
                            <a href="/product/list.do">Neat<span>(2)</span></a>
                        </li>
                    </ul>
                </div>
                -->
                <div class="list-item-box">
                    <ul class="clearfix">
                    <c:forEach var="result" items="${result}">
                    	<li>
                            <a href="/product/view.do?prdNum=${result.PRDNUM}">
                                <div class="arrival-img">
                                	<img src='<c:out value="${result.PRDIMG}" />'>
                                </div>
                                <div class="arrival-txt">
                                    <p class="item-subject"><c:out value="${result.PRDNAME}" /></p>
                                    <p class="item-price">$<c:out value="${result.PRDPRICE}" /></p>
                                </div>
                                <!-- <div class="arrival-icon">
                                    <span class="new_icon">NEW</span>
                                    <span class="best_icon">BEST</span>
                                </div> -->
                            </a>
                        </li>
                    </c:forEach>
                    </ul>
                </div>
                <div class="paging">
                	<div>
	                    <c:if test="${paging.curRange ne 1 }">
	                        <a href="#" onClick="fn_paging(1)">[처음]</a> 
	                    </c:if>
	                    <c:if test="${paging.curPage ne 1}">
	                        <a href="#" onClick="fn_paging('${paging.prevPage }')">[이전]</a> 
	                    </c:if>
	                    <c:forEach var="pageNum" begin="${paging.startPage }" end="${paging.endPage }">
	                        <c:choose>
	                            <c:when test="${pageNum eq  paging.curPage}">
	                                <a href="#" class="on" onClick="fn_paging('${pageNum }')">${pageNum }</a> 
	                            </c:when>
	                            <c:otherwise>
	                                <a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a> 
	                            </c:otherwise>
	                        </c:choose>
	                    </c:forEach>
	                    <c:if test="${paging.curPage ne paging.pageCnt && paging.pageCnt > 0}">
	                        <a href="#" onClick="fn_paging('${paging.nextPage }')">[다음]</a> 
	                    </c:if>
	                    <c:if test="${paging.curRange ne paging.rangeCnt && paging.rangeCnt > 0}">
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
        </div>
    </div>
</div>


<%@ include file="/WEB-INF/views/inc/footer.jsp"%>
