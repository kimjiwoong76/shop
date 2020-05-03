package com.jw.shop.mapper;

import java.util.List;
import java.util.Map;

import com.jw.shop.domain.ProductVO;

public interface ProductMapper {

	//상품 등록
	void prdInsert(ProductVO vo);

	//상품 리스트 관리자
	List<Map<String, Object>> prdSelect(ProductVO vo);
	
	//상품 리스트 사용자
	List<Map<String, Object>> prdSelectCATE(ProductVO vo);
	
	//상품 페이징 카운터
	int prdSelectCnt(ProductVO vo);
	
	//상품 상세보기
	ProductVO prdView(ProductVO vo);

	//상품 삭제
	void prdDelete(ProductVO vo);

	//상품 수정
	public ProductVO prdUpdate(ProductVO vo);

	void prdUpdateProc(ProductVO vo);
	

}
