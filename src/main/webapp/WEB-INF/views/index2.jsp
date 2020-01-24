<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/bootstrap.css">
</head>
<body>
	<div class="container">
		<h1>This is index.jsp</h1>
		<c:choose>
		<c:when test="${shopMember eq null}">
			<h2>로그인 해주세요</h2>
		</c:when>
		<c:otherwise>
		<h2>${shopMember.shop_id}</h2>
		<h3>${shopMember.shop_pwd}</h3>
		</c:otherwise>
		</c:choose>
	</div>
</body>
</html>