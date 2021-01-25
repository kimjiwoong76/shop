package com.jw.shop.mapper;

import java.util.List;
import java.util.Map;

import com.jw.shop.domain.ProductVO;

public interface MainMapper {
	List<ProductVO> newItem(ProductVO vo);
	List<ProductVO> girlItem(ProductVO vo);
	List<ProductVO> searchItem(ProductVO vo);
	List<ProductVO> allItem(ProductVO vo);
}
