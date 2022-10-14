package com.hhj.SazaShopping.dto;

import lombok.Data;

@Data
public class OrderPageItemDTO {

	/* 뷰로부터 전달받을 값 */
	private int gdscode;
	private int cartqty;

	/* DB로부터 꺼내올 값 */
	private String gdsname;
	private int gdsprice;
	private String gdsimg;

	public String getGdsimg() {
		return gdsimg;
	}
	public void setGdsimg(String gdsimg) {
		this.gdsimg = gdsimg;
	}
	/* 만들어 낼 값 */
	private int salePrice;
	private int totalPrice;
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
	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	public void initSaleTotal() {
		this.salePrice = this.gdsprice;
		this.totalPrice = this.salePrice*this.cartqty;
		
	}
	@Override
	public String toString() {
		return "OrderPageItemDTO [gdscode=" + gdscode + ", cartqty=" + cartqty + ", gdsname=" + gdsname + ", gdsprice="
				+ gdsprice + ", salePrice=" + salePrice + ", totalPrice=" + totalPrice + "]";
	}
	
	
	
	
	

}
