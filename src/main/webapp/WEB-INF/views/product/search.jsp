<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/header.jsp"%>
<%@ include file="/WEB-INF/views/inc/visual.jsp"%>


<div class="sub-layout">
    <div class="sub-content">
        <div class="container">
            <div class="row">
                <div class="sub-tit">
                    <p>검색결과</p>
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
                <c:set var="count" value="${count}" />
                <c:choose>
                <c:when test="${count > 0}">
                	<p>검색 결과 : ${count} </p>
                </c:when>
                <c:when test="${count < 0}">
                	<p>검색 결과가 없습니다.</p>
                </c:when>
                </c:choose>
                    <ul class="clearfix">
                    <c:forEach var="result" items="${searchList}">
                    	<li>
                            <a href="/product/view.do?prdNum=${result.prdNum}">
                                <div class="arrival-img">
                                	<img src='<c:out value="${result.prdImg}" />'>
                                </div>
                                <div class="arrival-txt">
                                    <p class="item-subject"><c:out value="${result.prdName}" /></p>
                                    <p class="item-price">$<c:out value="${result.prdPrice}" /></p>
                                </div>
                                <div class="arrival-icon">
                                    <span class="new_icon">NEW</span>
                                    <span class="best_icon">BEST</span>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>


<%@ include file="/WEB-INF/views/inc/footer.jsp"%>
