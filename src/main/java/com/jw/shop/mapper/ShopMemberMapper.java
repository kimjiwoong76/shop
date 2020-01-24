package com.jw.shop.mapper;

import com.jw.shop.domain.ShopMemberVO;

public interface ShopMemberMapper {
	
	void shopRegMember();
	
	//회원정보 수정
	void shopRegUpdateProc(ShopMemberVO vo);
	
	// 로그인
	ShopMemberVO shopRegLogin(ShopMemberVO vo) throws Exception;
	
	// 회원가입
	void shopRegInsert(ShopMemberVO vo);
	
	// 회원정보수정 페이지 정보 가져오기
	ShopMemberVO shopRegUpdate(ShopMemberVO vo);
	
	// 회원탈퇴
	void shopRegDelete(ShopMemberVO vo);
}
