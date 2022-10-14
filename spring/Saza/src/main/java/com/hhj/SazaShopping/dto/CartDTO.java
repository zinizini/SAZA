package com.hhj.SazaShopping.dto;



public class CartDTO {
	
	private int cartid;
	private String mid;
	private int gdscode;
	private int cartqty;
	
	
	// product
	private String gdsname;
	private int gdsprice;
	
	// 추가 
	private int salePrice;
	private int totalPrice;
	
	/* 상품 이미지 */
	private String gdsimg;
	
	public String getGdsimg() {
		return gdsimg;
	}
	public void setGdsimg(String gdsimg) {
		this.gdsimg = gdsimg;
	}
	public int getCartid() {
		return cartid;
	}
	public void setCartid(int cartid) {
		this.cartid = cartid;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getGdscode() {
		return gdscode;
	}
	public void setGdscode(int gdscode) {
		this.gdscode = gdscode;
	}
	public int getCartqty() {
		return cartqty;
	}
	public void setCartqty(int cartqty) {
		this.cartqty = cartqty;
	}
	public String getGdsname() {
		return gdsname;
	}
	public void setGdsname(String gdsname) {
		this.gdsname = gdsname;
	}
	public int getGdsprice() {
		return gdsprice;
	}
	public void setGdsprice(int gdsprice) {
		this.gdsprice = gdsprice;
	}
	public int getSalePrice() {
		return salePrice;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void initSaleTotal() {
		this.salePrice = this.gdsprice;
		this.totalPrice = this.salePrice*this.cartqty;
	}
	@Override
	public String toString() {
		return "CartDTO [cartid=" + cartid + ", mid=" + mid + ", gdscode=" + gdscode + ", cartqty=" + cartqty
				+ ", gdsname=" + gdsname + ", gdsprice=" + gdsprice + ", salePrice=" + salePrice + ", totalPrice="
				+ totalPrice + "]";
	}
	
	
	


}
