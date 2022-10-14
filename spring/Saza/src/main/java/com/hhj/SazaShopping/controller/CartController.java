package com.hhj.SazaShopping.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hhj.SazaShopping.dto.CartDTO;
import com.hhj.SazaShopping.dto.MemberDTO;
import com.hhj.SazaShopping.service.CartService;
import com.hhj.SazaShopping.service.CartServiceImpl;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartservice;
	
	@Autowired
	private CartServiceImpl cartserviceimpl;
	
	
	@Autowired
	private HttpSession session;
	
	private ModelAndView mav;
	
	@PostMapping(value="/cart/add")
	public @ResponseBody String addCart(CartDTO cart, HttpServletRequest request) {
		session = request.getSession();
		String mvo = (String)session.getAttribute("loginMember");
		
		
		if(mvo == null) {
			return "5";
		}
		
		// 카트 등록
		int result = cartservice.addCart(cart);
		
		return result + "";
	}

	
	@RequestMapping(value="/cartview")
	public ModelAndView cartView() {
		mav= cartservice.cartView();
		return mav;
	}
	
	@PostMapping(value="/modifycount")
	public String modifyCount(CartDTO cart) {
		
		cartservice.modifyCount(cart);
		
		return "redirect:/cartview"+ cart.getMid();
	}
	
	
	/* 장바구니 수량 수정 */
	@PostMapping(value="/deletecart")
	public String deleteCart(CartDTO cart) {
		cartservice.deleteCart(cart.getCartid());
		return "redirect:/cartview"+ cart.getMid();
	}
	
	
}

