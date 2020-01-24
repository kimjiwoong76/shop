<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/header.jsp"%>
<%@ include file="/WEB-INF/views/inc/visual.jsp"%>
<div class="sub-content">
	<div class="container">
		<div class="row">
			<div class="sub-tit">
				<p>Member ship</p>
				<h3>회원가입</h3>
			</div>
		</div>
		<!--// 헤더 들어가는 부분 -->
		<hr />
		<!-- 본문 들어가는 부분 -->



		<form class="form-horizontal" role="form" method="post"
			action="/insertMember.do" name="shopMember">
			<input type="hidden" name="command" value="regform">
			<div class="form-group">
				<label for="provision" class="col-lg-2 control-label">회원가입약관</label>
				<div class="col-lg-10" id="provision">
					<textarea class="form-control" rows="8" style="resize: none">본 사이트는 포트폴리오용 사이트 입니다. 회원가입에 대한 정보는 누설하거나 발설하지 않습니다.</textarea>
					<div class="radio">
						<label> <input type="radio" id="provisionYn"
							name="provisionYn" value="Y" autofocus="autofocus" checked>
							동의합니다.
						</label>
					</div>
					<div class="radio">
						<label> <input type="radio" id="provisionYn"
							name="provisionYn" value="N"> 동의하지 않습니다.
						</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="memberInfo" class="col-lg-2 control-label">개인정보취급방침</label>
				<div class="col-lg-10" id="memberInfo">
					<textarea class="form-control" rows="8" style="resize: none">본 사이트는 포트폴리오용 사이트 입니다. 회원가입에 대한 정보는 누설하거나 발설하지 않습니다.</textarea>
					<div class="radio">
						<label> <input type="radio" id="memberInfoYn"
							name="memberInfoYn" value="Y" checked> 동의합니다.
						</label>
					</div>
					<div class="radio">
						<label> <input type="radio" id="memberInfoYn"
							name="memberInfoYn" value="N"> 동의하지 않습니다.
						</label>
					</div>
				</div>
			</div>
			<div class="form-group" id="divId">
				<label for="inputId" class="col-lg-2 control-label">아이디</label>
				<div class="col-lg-10">
					<input name="shop_id" type="text" class="form-control onlyAlphabetAndNumber"
						id="id" data-rule-required="true"
						placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30">
				</div>
			</div>
			<div class="form-group" id="divPassword">
				<label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
				<div class="col-lg-10">
					<input name="shop_pwd" type="password" class="form-control" id="password"
						name="excludeHangul" data-rule-required="true" placeholder="패스워드"
						maxlength="30">
				</div>
			</div>
			<div class="form-group" id="divPasswordCheck">
				<label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드
					확인</label>
				<div class="col-lg-10">
					<input name="shop_pwd2" type="password" class="form-control" id="passwordCheck"
						data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
				</div>
			</div>
			<div class="form-group" id="divName">
				<label for="inputName" class="col-lg-2 control-label">이름</label>
				<div class="col-lg-10">
					<input name="shop_name" type="text" class="form-control onlyHangul" id="name"
						data-rule-required="true" placeholder="한글만 입력 가능합니다."
						maxlength="15">
				</div>
			</div>

			<div class="form-group" id="divNickname">
				<label for="inputNickname" class="col-lg-2 control-label">별명</label>
				<div class="col-lg-10">
					<input name="shop_nickname" type="text" class="form-control" id="nickname"
						data-rule-required="true" placeholder="별명" maxlength="15">
				</div>
			</div>

			<div class="form-group" id="divEmail">
				<label for="inputEmail" class="col-lg-2 control-label">이메일</label>
				<div class="col-lg-10">
					<input name="shop_email" type="email" class="form-control" id="email"
						data-rule-required="true" placeholder="이메일" maxlength="40">
				</div>
			</div>
			<div class="form-group" id="divPhoneNumber">
				<label for="inputPhoneNumber" class="col-lg-2 control-label">휴대폰
					번호</label>
				<div class="col-lg-10">
					<input name="shop_number" type="tel" class="form-control onlyNumber" id="phoneNumber"
						data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요."
						maxlength="11">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPhoneNumber" class="col-lg-2 control-label">성별</label>
				<div class="col-lg-10">						
					<select name="shop_gender" class="form-control" id="gender">
						<option value="F">여</option>
						<option value="M">남</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일
					수신여부</label>
				<div class="col-lg-10">
					<label class="radio-inline"> <input type="radio"
						id="emailReceiveYn" name="emailReceiveYn" value="Y" checked>
						동의합니다.
					</label> <label class="radio-inline"> <input type="radio"
						id="emailReceiveYn" name="emailReceiveYn" value="N"> 동의하지
						않습니다.
					</label>
				</div>
			</div>
			<div class="form-group">
				<label for="inputPhoneNumber" class="col-lg-2 control-label">SMS
					수신여부</label>
				<div class="col-lg-10">
					<label class="radio-inline"> <input type="radio"
						id="smsReceiveYn" name="smsReceiveYn" value="Y" checked>
						동의합니다.
					</label> <label class="radio-inline"> <input type="radio"
						id="smsReceiveYn" name="smsReceiveYn" value="N"> 동의하지
						않습니다.
					</label>
				</div>
			</div>
			<div class="form-group">
				<div class="col-lg-offset-2 col-lg-10">
					<button type="submit" class="btn btn-default" onclick="return form_confirm();">Sign in</button>
				</div>
			</div>
		</form>
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