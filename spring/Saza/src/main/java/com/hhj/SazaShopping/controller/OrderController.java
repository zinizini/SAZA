package com.hhj.SazaShopping.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hhj.SazaShopping.dto.OrderDTO;
import com.hhj.SazaShopping.dto.OrderPageDTO;
import com.hhj.SazaShopping.dto.ProductDTO;
import com.hhj.SazaShopping.service.MemberService;
import com.hhj.SazaShopping.service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderservice;
	
	@Autowired
	private MemberService ms;
	
	private ModelAndView mav;
	
	

	
	@GetMapping("/order/{mid}")
	public String orderPageGET(@PathVariable("mid")String mid, OrderPageDTO opd, Model model) {
		
		System.out.println("mid : " + mid);
		System.out.println("orders : " + opd.getOrders());
		
		
		model.addAttribute("orderList", orderservice.getGoodsInfo(opd.getOrders()));
		model.addAttribute("member", ms.getMemberInfo(mid));
		
		
		return "/order";
		
	}
	
	@PostMapping("/order")
	public String orderPagePost(OrderDTO od, HttpServletRequest request) {
		
		System.out.println(od);		
		orderservice.order(od);
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/delivery")
	public ModelAndView delivery(@ModelAttribute OrderDTO ord) throws Exception {
		mav = orderservice.delivery(ord);
		return mav;
	}
	




}
