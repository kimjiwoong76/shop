<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/header.jsp"%>
<%@ include file="/WEB-INF/views/inc/visual.jsp"%>
<div class="sub-content">
	<div class="form">
		<div class="form_head">
			<p>아이디찾기</p>
		</div>
		<div class="login_inner">
			<div class="form_inner">
				<c:set var='check' value="${check}" />
				<div class="login_form clearfix">
					<div class="find_check">
						<c:if test="${check == 1}">
							<p>회원님의 아이디는 <em>'${userFindId}'</em> 입니다</p>
						</c:if>
						<c:if test="${check == 2}">
							<p>아이디가 없습니다.</p>
						</c:if>
					</div>
				</div>
				<div class="row-member">
					<c:if test="${check == 1}">
					<div class="find_out">
						<a href="/login.do">로그인 하러 가기</a>
					</div>
					</c:if>
					<c:if test="${check == 2}">
						<div class="find_out">
							<a href="#!" onclick="history.back();">되돌아 가기</a>
						</div>
					</c:if>
				</div>
			</div>
			<div class="form_inner">
				<div class="login_member clearfix">
					<p class="login_inner_info">처음 이용하시거나 아직 회원이 아니신가요?</p>
					<a href="/userJoin.do" class="member_page">회원가입</a>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/inc/footer.jsp"%>