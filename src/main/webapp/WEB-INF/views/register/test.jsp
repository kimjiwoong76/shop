<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.8.3.min.js"/>" ></script>
</head>
<body>
	<form method="post" action="/test.do" enctype="multipart/form-data">
		<br> <label>파일:</label> <input type="file" name="file">
		<br>
		<br> <input type="submit" value="upload">
	</form>
	<p><img src="/resources/upload/ef0ec14f-42ce-4c16-bf88-4d1d23600359_instar-img3.jpg"></p>
	<p><img src="${img_url}"></p>
</body>
</html>