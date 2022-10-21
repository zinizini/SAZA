package com.hhj.SazaShopping.service;


import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.hhj.SazaShopping.dao.AdminDAO;
import com.hhj.SazaShopping.dao.CartDAO;
import com.hhj.SazaShopping.dao.MemberDAO;
import com.hhj.SazaShopping.dao.OrderDAO;
import com.hhj.SazaShopping.dao.ProductDAO;
import com.hhj.SazaShopping.dto.CartDTO;
import com.hhj.SazaShopping.dto.MemberDTO;
import com.hhj.SazaShopping.dto.OrderCancelDTO;
import com.hhj.SazaShopping.dto.OrderDTO;
import com.hhj.SazaShopping.dto.OrderItemDTO;
import com.hhj.SazaShopping.dto.OrderPageItemDTO;
import com.hhj.SazaShopping.dto.PageDTO;
import com.hhj.SazaShopping.dto.ProductDTO;

@Service
public class OrderService {
	
	@Autowired
	private OrderDAO orderdao;
	
	@Autowired
	private MemberDAO mdao;
	
	@Autowired
	private CartDAO cdao;
	
	@Autowired
	private ProductDAO pdao;
	
	@Autowired
	private AdminDAO adao;
	
	private ModelAndView mav;
	
	

	
	public List<OrderPageItemDTO> getGoodsInfo(List<OrderPageItemDTO> orders) {
		
		
		
		List<OrderPageItemDTO> result = new ArrayList<OrderPageItemDTO>();
		
		for(OrderPageItemDTO ord : orders) {
			
			OrderPageItemDTO product = orderdao.getGoodsInfo(ord.getGdscode());			

			product.setCartqty(ord.getCartqty());	
			
			product.initSaleTotal();
			
			
			result.add(product);
		}
		
		return result;
	}
	
	@Transactional
	public void order(OrderDTO ord) {
		
		/* 사용할 데이터가져오기 */
		/* 회원 정보 */
		MemberDTO member = mdao.getMemberInfo(ord.getMid());
		/* 주문 정보 */
		List<OrderItemDTO> ords = new ArrayList<>();
		for(OrderItemDTO oit : ord.getOrders()) {
			OrderItemDTO orderItem = orderdao.getOrderInfo(oit.getGdscode());
			// 수량 셋팅
			orderItem.setCartqty(oit.getCartqty());
			// 기본정보 셋팅
			orderItem.getTotalPrice();
			//List객체 추가
			ords.add(orderItem);
		}
		/* OrderDTO 셋팅 */
		ord.setOrders(ords);
		ord.getOrderPriceInfo();
		
		/*DB 주문,주문상품(,배송정보) 넣기*/
		
		/* orderId만들기 및 OrderDTO객체 orderId에 저장 */
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("_yyyyMMddmm");
		String orderId = member.getMid() + format.format(date);
		ord.setOrderId(orderId);
		
		/* db넣기 */
		orderdao.enrollOrder(ord);		//member_order 등록
		for(OrderItemDTO oit : ord.getOrders()) {		//member_orderItem 등록
			oit.setOrderId(orderId);
			orderdao.enrollOrderItem(oit);			
		}
		/* 재고 변동 적용 */
		for(OrderItemDTO oit : ord.getOrders()) {
			/* 변동 재고 값 구하기 */
			ProductDTO product = pdao.productView(oit.getGdscode());
			product.setGdsStock(product.getGdsStock() - oit.getCartqty());
			/* 변동 값 DB 적용 */
			orderdao.deductStock(product);
		}
		/* 장바구니 제거 */
		for(OrderItemDTO oit : ord.getOrders()) {
			CartDTO dto = new CartDTO();
			dto.setMid(ord.getMid());
			dto.setGdscode(oit.getGdscode());
			
			orderdao.deleteOrderCart(dto);
		}
		
	}
	
	/* 주문취소 */
	@Transactional
	public void orderCancle(OrderCancelDTO dto) {
		/* 주문, 주문상품 객체 */
		/* 회원 */
		MemberDTO member = mdao.getMemberInfo(dto.getMid());
		/* 주문상품 */
		List<OrderItemDTO> ords = orderdao.getOrderItemInfo(dto.getOrderId());
		for (OrderItemDTO ord : ords) {
			ord.initSaleTotal();
		}
		/* 주문 */
		OrderDTO orw = orderdao.getOrder(dto.getOrderId());
		orw.setOrders(ords);

		orw.getOrderPriceInfo();

		/* 주문상품 취소 DB */
		orderdao.orderCancle(dto.getOrderId());
		
		/* 재고 */
		for(OrderItemDTO ord : orw.getOrders()) {
			ProductDTO product = pdao.productView(ord.getGdscode());
			product.setGdsStock(product.getGdsStock() + ord.getCartqty());
			orderdao.deductStock(product);
		}
	}
	
	
	
	
	public ModelAndView delivery(OrderDTO ord)throws Exception{
		mav = new ModelAndView();
		int updateResult = orderdao.delivery(ord);
		if(updateResult > 0) {
			
			mav.setViewName("redirect:/orderlist");
		}
		return mav;
	}


}

