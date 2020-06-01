<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no">
<title>마이스토리</title>
<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/css/reset.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/common.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/sub-style.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/slick.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/slick-theme.css" />">

<script type="text/javascript"
	src="<c:url value="/resources/js/jquery-1.8.3.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/slick.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/custom.js" />"></script>
</head>

<body>
	<header>
		<div class="container">
			<div class="row">
				<div class="top_header clearfix">
					<div class="member clearfix">
						<c:choose>
							<c:when test="${shopMember eq null}">
								<ul>
									<li><a href="/userJoin.do">Join</a></li>
									<li><a href="/login.do">Login</a></li>
								</ul>
							</c:when>
							<c:otherwise>
								<ul>
									<li><a href="/logout.do">logout</a></li>
									<li><a href="#!">${shopMember.shop_id} 님 환영합니다</a></li>
									<li><a href="/userUpdate.do">정보수정</a></li>
									<li><a href="/userDelete.do">회원탈퇴</a></li>
								</ul>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="search_cart">
						<ul>
							<li>
								<span>
									<form action="/search.do">
										<input type="text" name="prdName" />
										<button type="submit">검색</button>
									</form>
								</span>
								<a href="#!" class="search-btn"> <img src="/resources/img/search.png"
									alt=""></a>
							</li>
							<li><a href="/cart/cart.do"> <img src="/resources/img/cart.png"
									alt="">
							</a></li>
						</ul>
					</div>
					<script type="text/javascript">
						$(function(){
							$(".search-btn").click(function(){
								$(".search_cart li span").toggleClass("on");
							});
						});
					</script>
				</div>
				<div class="header_wrap">
					<div class="logo">
						<h1>
							<a href="/"> MYSTORY </a>
						</h1>
					</div>
					<div class="pc-menu">
						<ul class="clearfix">
							<li><a href="/product/list.do?cateCode=남자 의류">Man</a></li>
							<li><a href="/product/list.do?cateCode=여자 의류">Woman</a></li>
							<li><a href="/product/list.do?cateCode=어린이">Children</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="hamburger" id="hamburger-6">
		<span class="line"></span> <span class="line"></span> <span
			class="line"></span>
	</div>
	<div class="m-menu-bg"></div>
	<div class="m-menu">
		<div class="m-top">
			<div class="m-logo">
				<c:choose>
					<c:when test="${shopMember eq null }">
						<p>
							<a href="/login.do">Login</a>
						</p>
					</c:when>
					<c:otherwise>
						<p>
							<a href="#!">${shopMember.shop_id} 님 환영합니다</a>
						</p>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="m-list">
				<ul>
					<li><a href="/logout.do">logout</a></li>
					<li><a href="/regUpdate.do">정보수정</a></li>
					<li><a href="/cart/cart.do">장바구니</a></li>
					<li><a href="#!">미정</a></li>
				</ul>
			</div>
			<!--<div class="m-list-member mo-no">
				<ul>
					<li>
						<a href="#!">로그인</a>
					</li>
					<li>
						<a href="#!">로그인</a>
					</li>
				</ul>
			</div>-->
		</div>
		<div class="m-content">
			<ul class="clearfix">
				<li><a href="/product/list.do?cateCode=남자 의류">Man</a></li>
				<li><a href="/product/list.do?cateCode=여자 의류">Woman</a></li>
				<li><a href="/product/list.do?cateCode=어린이">Children</a></li>
			</ul>
		</div>
	</div>
	<div id="content">