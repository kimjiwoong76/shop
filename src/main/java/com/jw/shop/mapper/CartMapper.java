package com.jw.shop.mapper;

import java.util.List;
import java.util.Map;

import com.jw.shop.domain.CartVO;

public interface CartMapper {
	
	boolean cartInsert(CartVO vo);
	List<Map<String, Object>> cartSelect(CartVO vo);
	void cartDelete(CartVO vo);
	int cartCheck(CartVO vo);
	
	
}
