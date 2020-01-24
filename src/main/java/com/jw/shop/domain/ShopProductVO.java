package com.jw.shop.domain;

public class ShopProductVO {

	
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
	
	
	int    prdNum;
	String prdName;
	String cateCod;
	int    prdPrice;
	int    prdStock;
	String prdDes;
	String prdImg;
	
	
	public int getPrdNum() {
		return prdNum;
	}
	public void setPrdNum(int prdNum) {
		this.prdNum = prdNum;
	}
	public String getPrdName() {
		return prdName;
	}
	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}
	public String getCateCod() {
		return cateCod;
	}
	public void setCateCod(String cateCod) {
		this.cateCod = cateCod;
	}
	public int getPrdPrice() {
		return prdPrice;
	}
	public void setPrdPrice(int prdPrice) {
		this.prdPrice = prdPrice;
	}
	public int getPrdStock() {
		return prdStock;
	}
	public void setPrdStock(int prdStock) {
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
	
	
	
	
}
