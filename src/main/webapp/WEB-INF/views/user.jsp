<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" />
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<table class="table">
		<tr>
			<th>아이디</th>
			<td>비밀번호</td>
			<td>닉네임</td>
			<td>이메일</td>
			<td>주소1</td>
			<td>주소2</td>
			<td>주소3</td>
		</tr>
		<c:forEach var="member" items="${memberList}">
		<tr>
			<td>${member.userId}</td>
			<td>${member.userPwd}</td>
			<td>${member.userName}</td>
			<td>${member.userEmail}</td>
			<td>${member.userAddr1}</td>
			<td>${member.userAddr2}</td>
			<td>${member.userAddr3}</td>
		</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>