<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/header.jsp" %>

<%
	Cookie[] ck = request.getCookies();
	
	for(Cookie c:ck){
		out.println(c.getName() + ":" + c.getValue() + "</br>");
	}
%>

<%@ include file="/WEB-INF/views/inc/footer.jsp" %>