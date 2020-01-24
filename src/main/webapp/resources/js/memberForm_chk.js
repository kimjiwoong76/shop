function form_confirm(){
	
     if(join.upw.value != join.checkupw.value) {
         alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
         join.checkupw.value = "";
         join.checkupw.focus();
         return false;
     }

     if(email.value=="") {
         alert("이메일을 입력해 주세요");
         email.focus();
         return false;
     }

     if(!check(re2, email, "적합하지 않은 이메일 형식입니다.")) {
         return false;
     }

     if(join.uname.value=="") {
         alert("이름을 입력해 주세요");
         join.uname.focus();
         return false;
     }
}