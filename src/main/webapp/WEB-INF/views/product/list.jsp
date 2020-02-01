<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
                <div class="sub-tit">
                    <p>clothing  /  tee</p>
                    <h3>CLOTHING</h3>
                </div>
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
                                <div class="arrival-icon">
                                    <span class="new_icon">NEW</span>
                                    <span class="best_icon">BEST</span>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
                        
                        <li>
                            <a href="/product/view.do">
                                <div class="arrival-img">
                                    <img src="/resources/img/arrival-img2.jpg" alt="">
                                </div>
                                <div class="arrival-txt">
                                    <p class="item-subject">Black & Silver Jacket</p>
                                    <p class="item-price">$50.80</p>
                                </div>
                                <div class="arrival-icon">
                                    <span class="new_icon">NEW</span>
                                    <span class="best_icon">BEST</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="/product/view.do">
                                <div class="arrival-img">
                                    <img src="/resources/img/arrival-img3.jpg" alt="">
                                </div>
                                <div class="arrival-txt">
                                    <p class="item-subject">Black & Silver Jacket</p>
                                    <p class="item-price">$50.80</p>
                                </div>
                                <div class="arrival-icon">
                                    <span class="new_icon">NEW</span>
                                    <span class="best_icon">BEST</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="/product/view.do">
                                <div class="arrival-img">
                                    <img src="/resources/img/arrival-img4.jpg" alt="">
                                </div>
                                <div class="arrival-txt">
                                    <p class="item-subject">Black & Silver Jacket</p>
                                    <p class="item-price">$50.80</p>
                                </div>
                                <div class="arrival-icon">
                                    <span class="new_icon">NEW</span>
                                    <span class="best_icon">BEST</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="/product/view.do">
                                <div class="arrival-img">
                                    <img src="/resources/img/arrival-img1.jpg" alt="">
                                </div>
                                <div class="arrival-txt">
                                    <p class="item-subject">Black & Silver Jacket</p>
                                    <p class="item-price">$50.80</p>
                                </div>
                                <div class="arrival-icon">
                                    <span class="new_icon">NEW</span>
                                    <span class="best_icon">BEST</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="/product/view.do">
                                <div class="arrival-img">
                                    <img src="/resources/img/arrival-img2.jpg" alt="">
                                </div>
                                <div class="arrival-txt">
                                    <p class="item-subject">Black & Silver Jacket</p>
                                    <p class="item-price">$50.80</p>
                                </div>
                                <div class="arrival-icon">
                                    <span class="new_icon">NEW</span>
                                    <span class="best_icon">BEST</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="/product/view.do">
                                <div class="arrival-img">
                                    <img src="/resources/img/arrival-img3.jpg" alt="">
                                </div>
                                <div class="arrival-txt">
                                    <p class="item-subject">Black & Silver Jacket</p>
                                    <p class="item-price">$50.80</p>
                                </div>
                                <div class="arrival-icon">
                                    <span class="new_icon">NEW</span>
                                    <span class="best_icon">BEST</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="/product/view.do">
                                <div class="arrival-img">
                                    <img src="/resources/img/arrival-img4.jpg" alt="">
                                </div>
                                <div class="arrival-txt">
                                    <p class="item-subject">Black & Silver Jacket</p>
                                    <p class="item-price">$50.80</p>
                                </div>
                                <div class="arrival-icon">
                                    <span class="new_icon">NEW</span>
                                    <span class="best_icon">BEST</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="/product/view.do">
                                <div class="arrival-img">
                                    <img src="/resources/img/arrival-img1.jpg" alt="">
                                </div>
                                <div class="arrival-txt">
                                    <p class="item-subject">Black & Silver Jacket</p>
                                    <p class="item-price">$50.80</p>
                                </div>
                                <div class="arrival-icon">
                                    <span class="new_icon">NEW</span>
                                    <span class="best_icon">BEST</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="/product/view.do">
                                <div class="arrival-img">
                                    <img src="/resources/img/arrival-img2.jpg" alt="">
                                </div>
                                <div class="arrival-txt">
                                    <p class="item-subject">Black & Silver Jacket</p>
                                    <p class="item-price">$50.80</p>
                                </div>
                                <div class="arrival-icon">
                                    <span class="new_icon">NEW</span>
                                    <span class="best_icon">BEST</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="/product/view.do">
                                <div class="arrival-img">
                                    <img src="/resources/img/arrival-img3.jpg" alt="">
                                </div>
                                <div class="arrival-txt">
                                    <p class="item-subject">Black & Silver Jacket</p>
                                    <p class="item-price">$50.80</p>
                                </div>
                                <div class="arrival-icon">
                                    <span class="new_icon">NEW</span>
                                    <span class="best_icon">BEST</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="/product/view.do">
                                <div class="arrival-img">
                                    <img src="/resources/img/arrival-img4.jpg" alt="">
                                </div>
                                <div class="arrival-txt">
                                    <p class="item-subject">Black & Silver Jacket</p>
                                    <p class="item-price">$50.80</p>
                                </div>
                                <div class="arrival-icon">
                                    <span class="new_icon">NEW</span>
                                    <span class="best_icon">BEST</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="/product/view.do">
                                <div class="arrival-img">
                                    <img src="/resources/img/arrival-img2.jpg" alt="">
                                </div>
                                <div class="arrival-txt">
                                    <p class="item-subject">Black & Silver Jacket</p>
                                    <p class="item-price">$50.80</p>
                                </div>
                                <div class="arrival-icon">
                                    <span class="new_icon">NEW</span>
                                    <span class="best_icon">BEST</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="/product/view.do">
                                <div class="arrival-img">
                                    <img src="/resources/img/arrival-img2.jpg" alt="">
                                </div>
                                <div class="arrival-txt">
                                    <p class="item-subject">Black & Silver Jacket</p>
                                    <p class="item-price">$50.80</p>
                                </div>
                                <div class="arrival-icon">
                                    <span class="new_icon">NEW</span>
                                    <span class="best_icon">BEST</span>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>


<%@ include file="/WEB-INF/views/inc/footer.jsp"%>
