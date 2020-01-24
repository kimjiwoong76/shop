<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/header.jsp"%>
<%@ include file="/WEB-INF/views/inc/visual.jsp"%>



<div class="sub-content">
	<div class="container">
		<div class="row">
			<div class="sub-tit">
				<p>Member ship</p>
				<h3>${page_name}</h3>
			</div>
			<div class="col-md-6">
				<small> <a href="#">로그인</a> | <a href="/user/signUp">회원가입</a>
				</small>
			</div>
		</div>
		<!--// 헤더 들어가는 부분 -->
		<!-- 본문 들어가는 부분 -->



		<div class="member-list">
			<table>
				<tr>
					<th>아이디</th>
					<th>닉네임</th>
					<th>이메일</th>
					<th>회원탈퇴</th>
				</tr>
				<c:forEach items="${memberList}" var="member">
	        	<tr>
	        		<td>${member.shop_id}</td>
	        		<td>${member.shop_nickname}</td>
	        		<td>${member.shop_email}</td>
	        		<td><button type="button" onClick="memberDelete();" data-member="${member.shop_id}">탈퇴</button></td>
	       		</tr>
       			</c:forEach>
			</table>
		</div>
	</div>
	</div>
</div>
<script type="text/javascript">
	function memberDelete(){
		var jw = $("button").data("member");
		console.log(jw);
		
		location.href="/adm/member.do?shop_id=" + jw;
		
	};
</script>

<%@ include file="/WEB-INF/views/inc/footer.jsp"%>