package com.hhj.SazaShopping.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.HandlerInterceptor;

@Controller
public class ChatController implements HandlerInterceptor{
	
//	@RequestMapping(value = "/chat", method = { RequestMethod.GET })
//	public String chat (HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
//		return "chat";
//	}
	
	@RequestMapping(value = "/chat", method = { RequestMethod.GET })
	public String chat (HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception {
		HttpSession session = request.getSession();
        
       
		
		return "chat";
	}

}
