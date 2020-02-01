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
			<div class="basic-form">
				<form action="loginProc.do" method="post">
					<div class="row-group">
						<p><input type="text" name="shop_id" class="basic-input" placeholder="아이디"></p>
						<p><input type="password" name="shop_pwd" class="basic-input" placeholder="비밀번호"></p>
						<c:if test="${not empty loginNull}">
							<p class="no_id_pw"><em>${loginNull}</em></p>
						</c:if>
					</div>
					<div class="row-btn">
						<button type="submit" class="login-btn">로그인</button>
					</div>
					<div class="row-member">
						<ul>
							<li>
								<a href="/register.do">회원가입</a>
							</li>
							<li>
								<a href="#!">아이디 비밀번호 찾기</a>
							</li>
						</ul>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/inc/footer.jsp"%>