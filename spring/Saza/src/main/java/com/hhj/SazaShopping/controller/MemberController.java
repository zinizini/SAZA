package com.hhj.SazaShopping.controller;




import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hhj.SazaShopping.dto.MemberDTO;
import com.hhj.SazaShopping.dto.OrderDTO;
import com.hhj.SazaShopping.dto.OrderItemDTO;
import com.hhj.SazaShopping.dto.OrderPageDTO;
import com.hhj.SazaShopping.dto.OrderPageItemDTO;
import com.hhj.SazaShopping.dto.ReplyDTO;
import com.hhj.SazaShopping.service.MemberService;
import com.hhj.SazaShopping.service.ProductService;
import com.hhj.SazaShopping.service.ReplyService;

@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	
	private ModelAndView mav;
	
	@Autowired
	private ProductService ps;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private ReplyService rs;
	
	
	@RequestMapping(value="/loginpage")
	public String loginPage() {
		return "memberlogin";
	}
	@RequestMapping(value="/mypage")
	public String myPage() {
		return "my";
	}
	
	@RequestMapping(value="/login.do")
	public ModelAndView memberLogin(@ModelAttribute MemberDTO member, HttpServletRequest request) {
		System.out.println("login 메소드"+member.toString());
    	session.setAttribute("loginMember", member);
		mav = ms.memberLogin(member);
		return mav;
	}
	
	@RequestMapping(value="/memberjoin")
	public ModelAndView memberJoin(@ModelAttribute MemberDTO member) {
		mav = ms.memberJoin(member);
		return mav;
	}
	
	@RequestMapping(value="/joinpage")
	public String joinPage() {
		return "memberjoin";
	}
	
	@RequestMapping(value="idcheck")
	public @ResponseBody String idCheck(@RequestParam("mid") String mid) {
		System.out.println("idcheck 메소드 호출됨");
		System.out.println("입력 id값"+mid);
		String result = ms.idCheck(mid);
		return result;
	}
	
	@RequestMapping(value="logout")
	public String logout() {
		session.invalidate();
		return "home";
	}
	
	@RequestMapping(value="/profilepage")
	public String profilePage() {
		return "profile";
	}
	
	@RequestMapping(value="/memberupdate")
	public ModelAndView update() {
		mav = ms.update();
		return mav;
	}
	
	@RequestMapping(value="/profileupdate")
	public ModelAndView profileUpdate(@ModelAttribute MemberDTO member)throws IllegalStateException, IOException {
		mav = ms.profileUpdate(member);
		return mav;
	}
	
	
	@RequestMapping(value="emailcheck")
	public @ResponseBody String emailCheck(@RequestParam("memail") String memail) {
		System.out.println("emailCheck 메소드 호출됨");
		System.out.println("입력 email값"+memail);
		String result = ms.emailCheck(memail);
		return result;
	}
	@RequestMapping(value="/chatpage")
	public String chatPage() {
		return "echo";
	}
	@RequestMapping(value="/idfindpage")
	public String idfindPage() {
		return "findIdView";
	}
	
	
	@RequestMapping(value="/withdrawalpage")
	public ModelAndView withdrawalPage() {
		mav = ms.withdrawalPage();
		return mav;
	}
	
	@RequestMapping(value="/withdrawal")
	public ModelAndView withDrawal(@ModelAttribute MemberDTO member) {
		mav = ms.withDrawal(member);
		return mav;
	}
	
	
	@RequestMapping(value="/withdraw")
	public ModelAndView withDraw(@RequestParam("mid") String mid) {
		mav = ms.withDraw(mid);
		session.invalidate();
				return mav;
	}
	
	@RequestMapping(value="/memberlist")
	public ModelAndView memberList() {
		mav = ms.memberList();
		
		return mav;
	}
	
	@RequestMapping(value="/memberview")
	public ModelAndView memberView(@RequestParam("mid") String mid) {
		mav = ms.memberView(mid);
		return mav;
	}
	
	
	
	
	/* 아이디 찾기 폼 */
	@RequestMapping(value = "/findidpage")
	public String findidPage() throws Exception{
		return "/findIdView";
	}
	
	/* 아이디 찾기 */
	@RequestMapping(value = "/findId")
	public String findId(HttpServletResponse response, @RequestParam("memail") String memail, Model model)
			throws Exception {
		model.addAttribute("mid", ms.findId(response, memail));
		return "/idfindresult";
	}
	
	/* 비밀번호 찾기 폼 */
	@RequestMapping(value = "/pwfindpage")
	public String pwfindPage() throws Exception {
		return "/pwfind";
	}

	// 비밀번호 찾기
	@RequestMapping(value = "/findPw")
	public void findPw(@ModelAttribute MemberDTO member, HttpServletResponse response) throws Exception {
		ms.findPw(response, member);
	}
	
	// 비밀번호 변경
	@RequestMapping(value = "/pwUpdate")
	public String update_pw(@ModelAttribute MemberDTO member, @RequestParam("old_pw") String old_pw,
			HttpSession session, HttpServletResponse response, RedirectAttributes rttr) throws Exception {
		session.setAttribute("member", ms.pwUpdate(member, old_pw, response));
		rttr.addFlashAttribute("msg", "비밀번호 수정 완료");
		return "redirect:/mypage";
	}
	
	
	@RequestMapping(value="/pUpdate")
	public ModelAndView pUpdate() {
		mav = ms.pUpdate();
		return mav;
	}
	
	@RequestMapping(value="/myupdate")
	public ModelAndView myupdate() {
		mav = ms.myupdate();
		return mav;
	}
	
	
//	@RequestMapping(value="/orderview")
//	public ModelAndView orderView(@RequestParam("mid") String mid){
//		mav = ms.orderView(mid);
//		return mav;
//	}
	
	
	@RequestMapping(value="/orderview")
	public ModelAndView orderView(@RequestParam("mid") String mid,OrderDTO od, HttpServletRequest request){
		
	
		mav = ms.orderView(mid,od);
		return mav;
	}
	
	@RequestMapping(value="/orderlistView")
	public ModelAndView orderlistView(@RequestParam("orderId") String orderId, Model model) throws JsonProcessingException {
		
		

		
		
		
		
		
		
		mav = ms.orderlistView(orderId);
		return mav;
	}
	
	
	
	

	
	
	
}

