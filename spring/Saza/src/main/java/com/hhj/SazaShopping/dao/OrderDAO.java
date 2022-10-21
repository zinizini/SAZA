package com.hhj.SazaShopping.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hhj.SazaShopping.dto.CartDTO;
import com.hhj.SazaShopping.dto.MemberDTO;
import com.hhj.SazaShopping.dto.OrderDTO;
import com.hhj.SazaShopping.dto.OrderItemDTO;
import com.hhj.SazaShopping.dto.OrderPageItemDTO;
import com.hhj.SazaShopping.dto.ProductDTO;

@Repository
public class OrderDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	
	/* 주문 상품 정보 */	
	public OrderPageItemDTO getGoodsInfo(int gdscode) {
		return sql.selectOne("om.getgoodsinfo",gdscode);
	}
	
	/* 주문 상품 정보(주문 처리) */	
	public OrderItemDTO getOrderInfo(int gdscode) {
		return sql.selectOne("om.getOrderInfo",gdscode);
	}
	
	/* 주문 테이블 등록 */
	public int enrollOrder(OrderDTO ord) {
		return sql.insert("om.enrollOrder", ord);
	}
	
	/* 주문 아이템 테이블 등록 */
	public int enrollOrderItem(OrderItemDTO orid) {
		return sql.insert("om.enrollOrderItem", orid);
	}
	
	/* 주문 재고 차감 */
	public int deductStock(ProductDTO product) {
		return sql.update("om.deductStock", product);
	}
	
	/* 카트 제거(주문) */
	public int deleteOrderCart(CartDTO dto) {
		return sql.delete("om.deleteOrderCart", dto);
	}
	
	/* 주문 취소 */
	public int orderCancle(String orderId) {
		return sql.update("om.orderCancle", orderId);
	}
	
	/* 주문 상품 정보(주문취소) */
	public List<OrderItemDTO> getOrderItemInfo(String orderId){
		return sql.selectList("om.getOrderItemInfo", orderId);
	}
	
	/* 주문 정보(주문취소) */
	public OrderDTO getOrder(String orderId) {
		return sql.selectOne("om.getOrder", orderId);
	}
	/* 주문 송장 */
	public int delivery(OrderDTO ord)throws Exception{
		return sql.update("om.delivery", ord);
	}


}
