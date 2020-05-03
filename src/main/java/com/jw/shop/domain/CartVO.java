package com.jw.shop.domain;

import com.jw.shop.domain.ProductVO;

public class CartVO {

	
	
	String shop_id;
	String prdNum;
	String itemColor;
	String itemSize;
	String itemName;
	String itemImg;
	String itemPrice;
	private ProductVO pvo;
	
	
	

	
	public String getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}
	public String getItemImg() {
		return itemImg;
	}
	public void setItemImg(String itemImg) {
		this.itemImg = itemImg;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getPrdNum() {
		return prdNum;
	}
	public void setPrdNum(String prdNum) {
		this.prdNum = prdNum;
	}
	public String getShop_id() {
		return shop_id;
	}
	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}
	public String getItemColor() {
		return itemColor;
	}
	public void setItemColor(String itemColor) {
		this.itemColor = itemColor;
	}
	public String getItemSize() {
		return itemSize;
	}
	public void setItemSize(String itemSize) {
		this.itemSize = itemSize;
	}
	public ProductVO getPvo() {
		return pvo;
	}
	public void setPvo(ProductVO pvo) {
		this.pvo = pvo;
	}
	@Override
	public String toString() {
		return "CartVO [shop_id=" + shop_id + ", prdNum=" + prdNum + ", itemColor=" + itemColor + ", itemSize="
				+ itemSize + ", itemName=" + itemName + ", pvo=" + pvo + "]";
	}


	
	
	
	
}
