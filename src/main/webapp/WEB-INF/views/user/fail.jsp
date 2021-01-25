<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=utf-8"); %>
<%@ include file="/WEB-INF/views/inc/header.jsp"%>
<%@ include file="/WEB-INF/views/inc/visual.jsp"%>
<div class="sub-content">
    <div class="form">
        <div class="form_head">
            <p>JOIN US</p>
        </div>
        <div class="join_inner">
            <div class="register_head clearfix">
                <p class="register_head_tit">회원가입실패</p>
                <ul class="register_seq">
                    <li>
                        01 약관동의
                    </li>
                    <li>
                        02 정보입력
                    </li>
                    <li class="on">
                        03 가입완료
                    </li>
                </ul>
            </div>
            <div class="form_inner">
                <div class="register_complete">
                    <p><strong>회원가입 실패</p>
                    <span>내용을 다시 확인 해주세요.</span>
                    <!-- <span>회원이 되신 것을 축하드립니다.</span> -->
                </div>
                <div class="register_page">
                    <a href="/index.do" class="register_page_btn">메인으로</a>
                    <a href="/login.do" class="register_page_submit">로그인</a>
                </div>
            </div>
        </div>
    </div>
   </div>
<%@ include file="/WEB-INF/views/inc/footer.jsp"%>