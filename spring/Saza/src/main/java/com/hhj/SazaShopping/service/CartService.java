package com.hhj.SazaShopping.service;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.hhj.SazaShopping.dto.CartDTO;

public interface CartService {
	
	
	/* 장바구니 추가 */
	public int addCart(CartDTO cart);

	
	/* 장바구니 정보 리스트 */
	public List<CartDTO> cartList(String mid);

	public ModelAndView cartView();

	/* 카트 수량 수정 */
	public int modifyCount(CartDTO cart);
	
	
    /* 카트 삭제 */
	public int deleteCart(int cartid);


	


	

	

	

	
	
}
