package com.hhj.SazaShopping.dto;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class OrderDTO {
	
	/* 주문 번호 */
	private String orderId;
	
	/* 배송 받는이 */
	private String addressee;
	
	/* 주문 회원 아이디 */
	private String mid;
	
	/* 우편번호 */
	private String memberaddr1;
	
	/* 회원 주소 */
	private String memberaddr2;
	
	/* 회원 상세주소 */
	private String memberaddr3;
	
	/* 주문 상태 */
	private String orderState;
	
	/* 주문 상품 */
	private List<OrderItemDTO> orders;	
	
	/* 배송비 */
	private int deliveryCost;
	
	/* 주문 날짜 */
	private Date orderDate;
	
	private String trackingNum;
	
	
	
	/* DB테이블 존재 하지 않는 데이터 */
	
	/* 판매가(모든 상품 비용) */
	private int orderSalePrice;
	
	/* 최종 판매 비용 */
	private int orderFinalSalePrice;
	
	
	public void getOrderPriceInfo() {
		
		/* 상품 비용 & 적립포인트 */
		for(OrderItemDTO order : orders) {
			orderSalePrice += order.getTotalPrice();
		}

		/* 배송비용 */
			if(orderSalePrice >= 500000) {
				deliveryCost = 0;
			} else {
				deliveryCost = 3000;
			}
		/* 최종 비용(상품 비용 + 배송비 - 사용 포인트) */
			orderFinalSalePrice = orderSalePrice + deliveryCost;
	}

}
