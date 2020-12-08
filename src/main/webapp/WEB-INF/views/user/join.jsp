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
                <p class="register_head_tit">약관동의<span>* 회원가입약관 및 개인정보처리방침안내의 내용에 동의하셔야 회원가입 하실 수 있습니다.</span></p>
                <ul class="register_seq">
                    <li class="on">
                        01 약관동의
                    </li>
                    <li>
                        02 정보입력
                    </li>
                    <li>
                        03 가입완료
                    </li>
                </ul>
            </div>
            <div class="form_inner">
                <div class="register_section">
                    <div class="register_section_head">
                        <input type="checkbox" id="register_chk1" class="disc_check">
                        <label for="register_chk1">(필수)회원가입약관</label>
                    </div>
                    <div class="register_section_area">
                        <textarea name="" id="" cols="30" rows="10"></textarea>
                    </div>
                </div>
                <div class="register_section">
                    <div class="register_section_head">
                        <input type="checkbox" id="register_chk2" class="disc_check">
                        <label for="register_chk2">(필수) 개인정보처리방침안내</label>
                    </div>
                    <div class="register_section_area">
                        <textarea name="" id="" cols="30" rows="10"></textarea>
                    </div>
                </div>
                <div class="register_section">
                    <div class="align-center">
                        <input type="checkbox" id="register_chk3" class="disc_check">
                        <label for="register_chk3">모든 약관을 확인하고 전체 동의합니다.</label>
                    </div>
                </div>
                <div class="register_page">
                    <a href="/join.do" class="register_page_submit">다음단계</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
function form_confirm(){
	
	var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
    var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;  // 이메일이 적합한지 검사할 정규식
	
    function check(re, what, message) {
        if(re.test(what.value)) {
            return true;
        }
        alert(message);
        what.value = "";
        what.focus();
        //return false;
    }
    
    if(shopMember.provisionYn.value == "n"){
    	alert("회원가입 약관에 동의해 주세요");
    	shopMember.provisionYn.focus();
    	return false;
    }
    
    if(shopMember.memberInfoYn.value == "n"){
    	alert("개인정보취급방침에 동의해 주세요.");
    	shopmember.memberInfoYn.focus();
    	return false;
    }
    
	if(!check(re,id, "아이디는 4~12자의 영문 대소문자와 숫자로만 가능합니다")) {
        shopMember.shop_id.focus();
        return false;
    }
	
    if(shopMember.shop_pwd.value == ""){
    	alert("비밀번호를 입력해 주세요.");
    	shopMember.shop_id.focus();
    	return false;
    }
    if(shopMember.shop_pwd2.value == ""){
    	alert("비밀번호확인을 입력해 주세요.");
    	shopMember.shop_id.focus();
    	return false;
    }
    
    if(shopMember.shop_pwd.value != shopMember.shop_pwd2.value) {
        alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
        shopMember.shop_pwd.value = "";
        shopMember.shop_pwd.focus();
        return false;
    }
    if(shopMember.shop_name.value=="") {
        alert("이름을 입력해 주세요");
        shopMember.shop_name.focus();
        return false;
    }
    if(shopMember.shop_nickname.value=="") {
        alert("별명을 입력해 주세요");
        shopMember.shop_nickname.focus();
        return false;
    }
    if(shopMember.shop_email.value=="") {
        alert("이메일을 입력해 주세요");
        shopMember.shop_email.focus();
        return false;
    }
    if(shopMember.shop_number.value=="") {
        alert("핸드폰 번호를 입력해주세요");
        shopMember.shop_number.focus();
        return false;
    }
    if(!check(re2, shopMember.shop_email, "적합하지 않은 이메일 형식입니다.")) {
        return false;
    }
}
</script>

<%@ include file="/WEB-INF/views/inc/footer.jsp"%>