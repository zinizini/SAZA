package com.hhj.SazaShopping.dto;

import lombok.Data;

@Data
public class OrderItemDTO {
	
	
	/* 주문 번호 */
	private String orderId;
	
	/* 상품 번호 */
    private int gdscode;
    
	/* 주문 수량 */
    private int cartqty;
    
	/* member_orderItem 기본키 */
    private int orderItemId;
    
	/* 상품 한 개 가격 */
    private int gdsprice;
    
    private String gdsname;
    private String gdsimg;
    
    
    
    
	/* DB테이블 존재 하지 않는 데이터 */
    
    /* 할인 적용된 가격 */
    private int salePrice;
	
	/* 총 가격(가격 * 주문 수량) */
    private int totalPrice;
    
    
    public void initSaleTotal() {
    	this.salePrice = (int) (this.gdsprice);
		this.totalPrice = this.gdsprice*this.cartqty;
	}
}

