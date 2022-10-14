package com.hhj.SazaShopping.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.hhj.SazaShopping.dao.CartDAO;
import com.hhj.SazaShopping.dto.CartDTO;

@Service
public class CartServiceImpl implements CartService {
	
	

	@Autowired
	private CartDAO cartdao;
	
	private ModelAndView mav;
	
	// 세션을 사용하기 위해 세션 객체 선언 
	@Autowired
	private HttpSession session;

	@Override
	public int addCart(CartDTO cart) {
		// 장바구니 데이터 체크
				CartDTO checkCart = cartdao.checkCart(cart);
				
				if(checkCart != null) {
					return 2;
				}
				
				// 장바구니 등록 & 에러 시 0반환
				try {
					return cartdao.addCart(cart);
				} catch (Exception e) {
					return 0;
				}
	}
	


	@Override
	public List<CartDTO> cartList(String mid) {
		List<CartDTO> cart = cartdao.cartList(mid);
		
		for(CartDTO dto : cart) {
			dto.initSaleTotal();
		}
		
		return cart;
	
	}


	
	@Override
	public ModelAndView cartView() {
		mav = new ModelAndView();
		
		
		
		String mid = (String) session.getAttribute("loginMember");
		List<CartDTO> cartView = cartdao.cartView(mid);
		
		
		List<CartDTO> cartList = cartdao.cartList(mid);
		mav.addObject("cartList",cartList);
		
		mav.setViewName("cart");
		return mav;
		
	}

	
	@Override
	public int modifyCount(CartDTO cart) {

		return cartdao.modifyCount(cart);
	}
	
	@Override
	public int deleteCart(int cartid) {
		return cartdao.deleteCart(cartid);
	}
	
	

	
	
	
	
	
	
	
}