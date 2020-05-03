package com.jw.shop.mapper;

import java.util.List;
import java.util.Map;

import com.jw.shop.domain.BuyVO;

public interface BuyMapper {
	
	int buyIns(BuyVO vo);
	List<Map<String, Object>> buySelect(BuyVO vo);
	int intBuySelect(BuyVO vo);
	
}
