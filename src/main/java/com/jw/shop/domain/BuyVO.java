package com.jw.shop.domain;

public class BuyVO {

//	create table buy_table(
//	    buy_item varchar2(255) not null ,
//	    buy_price varchar2(255) not null,
//	    buy_color varchar2(255) not null,
//	    buy_size varchar2(255) not null,
//	    buy_name varchar2(255) not null,
//	    buy_tel varchar2(255) not null,
//	    buy_address1 varchar2(255) not null,
//	    buy_address2 varchar2(255) not null,
//	    
//	    constraint buy_item primary key(buy_item)
//	);
	
	String buy_cate;
	String buy_item;
	String buy_price;
	String buy_color;
	String buy_size;
	String buy_name;
	String buy_tel;
	String buy_address1;
	String buy_address2;
	String buy_address3;
	int startIndex;
	int cntPerPage;
	
	
	public int getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
	public int getCntPerPage() {
		return cntPerPage;
	}
	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}
	public String getBuy_cate() {
		return buy_cate;
	}
	public void setBuy_cate(String buy_cate) {
		this.buy_cate = buy_cate;
	}
	public String getBuy_item() {
		return buy_item;
	}
	public void setBuy_item(String buy_item) {
		this.buy_item = buy_item;
	}
	public String getBuy_price() {
		return buy_price;
	}
	public void setBuy_price(String buy_price) {
		this.buy_price = buy_price;
	}
	public String getBuy_color() {
		return buy_color;
	}
	public void setBuy_color(String buy_color) {
		this.buy_color = buy_color;
	}
	public String getBuy_size() {
		return buy_size;
	}
	public void setBuy_size(String buy_size) {
		this.buy_size = buy_size;
	}
	public String getBuy_name() {
		return buy_name;
	}
	public void setBuy_name(String buy_name) {
		this.buy_name = buy_name;
	}
	public String getBuy_tel() {
		return buy_tel;
	}
	public void setBuy_tel(String buy_tel) {
		this.buy_tel = buy_tel;
	}
	public String getBuy_address1() {
		return buy_address1;
	}
	public void setBuy_address1(String buy_address1) {
		this.buy_address1 = buy_address1;
	}
	public String getBuy_address2() {
		return buy_address2;
	}
	public void setBuy_address2(String buy_address2) {
		this.buy_address2 = buy_address2;
	}
	public String getBuy_address3() {
		return buy_address3;
	}
	public void setBuy_address3(String buy_address3) {
		this.buy_address3 = buy_address3;
	}
	@Override
	public String toString() {
		return "BuyVO [buy_cate=" + buy_cate + ", buy_item=" + buy_item + ", buy_price=" + buy_price + ", buy_color="
				+ buy_color + ", buy_size=" + buy_size + ", buy_name=" + buy_name + ", buy_tel=" + buy_tel
				+ ", buy_address1=" + buy_address1 + ", buy_address2=" + buy_address2 + ", buy_address3=" + buy_address3
				+ "]";
	}
	
	
	
	
}
