package com.jw.shop.mapper;

import com.jw.shop.domain.UserVO;

public interface UserMapper {
	
	void shopRegMember();
	
	// 로그인
	UserVO userLoginProc(UserVO vo) throws Exception;
	
	// 회원가입
	void userJoinProc(UserVO vo);
	
	// 회원정보수정 페이지 정보 가져오기
	UserVO userUpdate(UserVO vo);
	//회원정보 수정
	void userUpdateProc(UserVO vo);
	
	// 회원탈퇴
	void userDeleteProc(UserVO vo);

}
