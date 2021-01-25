<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=utf-8"); %>
<%@ include file="/WEB-INF/views/inc/header.jsp"%>
<%@ include file="/WEB-INF/views/inc/visual.jsp"%>
<div class="sub-content">
	<div class="form">
        <div class="form_head">
            <p>MEMBER UPDATE</p>
        </div>
        <div class="join_inner">
            <div class="register_head clearfix">
                <p class="register_head_tit">가입정보<span>*필수입력항목.</span></p>
            </div>
            <div class="form_inner">
                <form class="form-horizontal" role="form" method="post"
			action="/userUpdateProc.do" name="shopMember">
				<input type="hidden" name="command" value="regform">
				<input type="hidden" name="shop_id" value="${userUpdate.shop_id}" />
                    <div class="register_form">
                        <div class="register_form_area clearfix">
                            <div class="register_form_name">
                                <p>이름<sup>*</sup></p>
                            </div>
                            <div class="register_form_input">
                                <input type="text" name="shop_name" class="normal_text" value="${userUpdate.shop_name }">
                            </div>
                        </div>
                        <div class="register_form_area clearfix">
                            <div class="register_form_name">
                                <p>닉네임<sup>*</sup></p>
                            </div>
                            <div class="register_form_input">
                                <input type="text" name="shop_nickname" class="normal_text" value="${userUpdate.shop_nickname}" placeholder="공백없이 한글,영문,숫자만 입력 가능(한글2자, 영문4자 이상)">
                            </div>
                        </div>
                        <div class="register_form_area clearfix">
                            <div class="register_form_name">
                                <p>이메일<sup>*</sup></p>
                            </div>
                            <div class="register_form_input">
                                <input type="email" name="shop_email" value="${userUpdate.shop_email }" class="normal_text" placeholder="공백없이 한글,영문,숫자만 입력 가능(한글2자, 영문4자 이상)">
                            </div>
                        </div>
                        <div class="register_form_area clearfix">
                            <div class="register_form_name">
                                <p>비밀번호<sup>*</sup></p>
                            </div>
                            <div class="register_form_input">
                                <input type="password" name="shop_pwd" class="normal_text">
                            </div>
                        </div>
                        <div class="register_form_area clearfix">
                            <div class="register_form_name">
                                <p>비밀번호확인<sup>*</sup></p>
                            </div>
                            <div class="register_form_input">
                                <input type="password" name="shop_pwd2" class="normal_text">
                            </div>
                        </div>
                        <div class="register_form_area clearfix">
                            <div class="register_form_name">
                                <p>연락처<sup>*</sup></p>
                            </div>
                            <div class="register_form_input">
                                <input type="number" value="${userUpdate.shop_number}" name="shop_number" />
                            </div>
                        </div>
                        <div class="register_form_area clearfix">
                            <div class="register_form_name">
                                <p>성별<sup>*</sup></p>
                            </div>
                            <div class="register_form_input">
                                <select name="shop_gender" class="form-control" id="gender">
									<option value="F">여</option>
									<option value="M">남</option>
								</select>
                            </div>
                        </div>
                    </div>
                    <div class="register_page">
                        <div class="register_check_box">
                            <ul>
                                <li>
                                    <input type="checkbox" class="form_chk_btn" id="register_check_li1">
                                    <label for="register_check_li1">정보 메일을 받겠습니다.</label>
                                </li>
                                <li>
                                    <input type="checkbox" class="form_chk_btn" id="register_check_li2">
                                    <label for="register_check_li2">SMS 수신여부</label>
                                </li>
                                <li>
                                    <input type="checkbox" class="form_chk_btn" id="register_check_li3">
                                    <label for="register_check_li3">다른 분들이 나의 정보를 볼 수 있도록 합니다.(정보공개를 바꾸시면 앞으로 30일 이내에는 변경이 안됩니다.)</label>
                                </li>
                            </ul>
                        </div>
                        <a href="#!" class="register_page_btn">취소</a>
                        <button type="submit" onclick="return form_confirm();" class="register_page_submit">확인</button>
                    </div>
                </form>
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