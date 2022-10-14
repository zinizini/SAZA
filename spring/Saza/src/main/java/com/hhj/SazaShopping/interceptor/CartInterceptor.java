package com.hhj.SazaShopping.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.hhj.SazaShopping.dto.MemberDTO;

public class CartInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		
		String mvo = (String)session.getAttribute("loginMember");
		
		if(mvo == null) {
			response.sendRedirect("loginpage");
			return false;
		} else {
			
			return true;
		}
	}
}
