package com.jw.shop.domain;

public class ProductVO {

	
//	create table tbl_goods (
//		    prdNum       number          not null,
//		    prdName      varchar2(50)    not null,
//		    cateCode     varchar2(30)    not null,
//		    prdPrice     number          not null,
//		    prdStock     number          null,
//		    prdDes       varchar(500)    null,
//		    prdImg       varchar(200)    null,
//		    prdDate      date            default sysdate,
//		    primary key(prdNum) 
//		);
	
	
	
	String prdNum;
	String prdName;
	String cateCode;
	String prdPrice;
	String prdStock;
	String prdDes;
	String prdImg;
	String prdColor;
	String prdSize;
	
	
	public String getPrdNum() {
		return prdNum;
	}
	public void setPrdNum(String prdNum) {
		this.prdNum = prdNum;
	}
	public String getPrdName() {
		return prdName;
	}
	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}
	public String getCateCode() {
		return cateCode;
	}
	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}
	
	public String getPrdPrice() {
		return prdPrice;
	}
	public void setPrdPrice(String prdPrice) {
		this.prdPrice = prdPrice;
	}
	public String getPrdStock() {
		return prdStock;
	}
	public void setPrdStock(String prdStock) {
		this.prdStock = prdStock;
	}
	public String getPrdDes() {
		return prdDes;
	}
	public void setPrdDes(String prdDes) {
		this.prdDes = prdDes;
	}
	public String getPrdImg() {
		return prdImg;
	}
	public void setPrdImg(String prdImg) {
		this.prdImg = prdImg;
	}
	public String getPrdColor() {
		return prdColor;
	}
	public void setPrdColor(String prdColor) {
		this.prdColor = prdColor;
	}
	public String getPrdSize() {
		return prdSize;
	}
	public void setPrdSize(String prdSize) {
		this.prdSize = prdSize;
	}
	@Override
	public String toString() {
		return "ProductVO [prdNum=" + prdNum + ", prdName=" + prdName + ", cateCode=" + cateCode + ", prdPrice="
				+ prdPrice + ", prdStock=" + prdStock + ", prdDes=" + prdDes + ", prdImg=" + prdImg + ", prdColor="
				+ prdColor + ", prdSize=" + prdSize + "]";
	}
	
}
