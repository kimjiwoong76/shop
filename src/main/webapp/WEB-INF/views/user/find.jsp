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
                
                    <div class="login_form clearfix">
                    <c:set var='check' value="${check}" />
                    <c:if test="${check == 1}">
						<p>${userFindId}</p>
						<p>${check}</p>
						<p>1</p>
					</c:if>
					<c:if test="${check == 2}">
					<form action="/find_idProc.do" method="POST">
						<div class="find_input_area">
							<input type="text" name="shop_email" placeholder="이메일을 입력해주세요" />
							<p>
								<button type="submit" class="login_form_submit">아이디 찾기</button>
							</p>
							<p>
								<a href="#!">비밀번호 찾기</a>
							</p>
						</div>
					</form>
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