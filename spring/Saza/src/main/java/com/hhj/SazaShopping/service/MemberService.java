package com.hhj.SazaShopping.service;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.HtmlEmail;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hhj.SazaShopping.dao.AdminDAO;
import com.hhj.SazaShopping.dao.MemberDAO;
import com.hhj.SazaShopping.dao.OrderDAO;
import com.hhj.SazaShopping.dao.ProductDAO;
import com.hhj.SazaShopping.dao.ReplyDAO;
import com.hhj.SazaShopping.dto.MemberDTO;
import com.hhj.SazaShopping.dto.OrderDTO;
import com.hhj.SazaShopping.dto.OrderItemDTO;
import com.hhj.SazaShopping.dto.OrderPageItemDTO;
import com.hhj.SazaShopping.dto.PageDTO;
import com.hhj.SazaShopping.dto.ProductDTO;
import com.hhj.SazaShopping.dto.ReplyDTO;
import com.hhj.SazaShopping.dto.ReplyPageDTO;



@Service
public class MemberService {
	@Autowired
	private MemberDAO mdao;
	
	ModelAndView mav;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private AdminDAO adao;
	
	@Autowired
	private OrderDAO orderdao;
	
	@Autowired
	private ProductDAO pdao;
	
	@Autowired
	private ReplyDAO rdao;
	

	public ModelAndView memberLogin(MemberDTO member) {
		mav = new ModelAndView();
		String loginId = mdao.memberLogin(member);
		System.out.println("1 체크결과");
		if (loginId != null) {
			System.out.println("2 체크결과");
			session.setAttribute("loginMember", loginId);
			mav.setViewName("home");
		} else {
			mav.addObject("msg","이메일 또는 비밀번호를 확인해주세요");
			mav.setViewName("memberlogin");
		}
		return mav;
	}


	public ModelAndView memberJoin(MemberDTO member) {
		mav = new ModelAndView();
		int insertResult = 0;
		insertResult = mdao.memberJoin(member);
		if(insertResult > 0) { 
			mav.setViewName("memberlogin");
		} else { 
			mav.setViewName("memberjoin");
		}
		
		return mav;
	}


	public String idCheck(String mid) {
		String checkResult = mdao.idCheck(mid);
		String result = "";
		if(checkResult == null) {
			result = "ok";
		} else {
			result = "no";
		}
		return result;
	}


	public ModelAndView update() {
		mav = new ModelAndView();
		String loginId = (String) session.getAttribute("loginMember");
		MemberDTO memberUpdate = mdao.update(loginId);
		
		mav.addObject("member", memberUpdate);
		mav.setViewName("profile");
		
		return mav;
	}


	public ModelAndView profileUpdate(MemberDTO member) throws IllegalStateException, IOException {
		mav = new ModelAndView();
		
		MultipartFile mfile = member.getMfile();
		String mfilename = mfile.getOriginalFilename();
		mfilename = System.currentTimeMillis() + "-" + mfilename;
		String savePath = "/Users/heoheejin/spring/Saza/src/main/webapp/resources/profileimg/"+mfilename;
		member.setMfilename(mfilename);
		mfile.transferTo(new File(savePath));
		
		
		
		
		
		
		int updateResult = mdao.profileUpdate(member);
		if(updateResult > 0) {
			mav.setViewName("my");
		}else {
			mav.setViewName("profile");
		}
		return mav;
	}


	public String emailCheck(String memail) {
		String emailResult = mdao.emailCheck(memail);
		String result = "";
		if(emailResult == null) {
			result = "ok";
		} else {
			result = "no";
		}
		return result;
	}


//	public String idFind(String mphone) {
//		mav = new ModelAndView();
//		String idResult = mdao.idFind(mphone);
//		String result = "";
//		if(idResult != null) {
//			result = "ok";
//			mav.setViewName("idfindresult");
//			
//		} else {
////			mav.addObject("msg","이메일 또는 비밀번호를 확인해주세요");
//		
//			result = "no";
//			mav.setViewName("idfind");
//			
//		}
//		return result;
//	}


	public String idfindAjax(String mphone) {
		String idResult = mdao.idfindAjax(mphone);
		String result = "";
		if(idResult == null) {
			result = "no";
			
		} else {
//			mav.addObject("msg","이메일 또는 비밀번호를 확인해주세요");
		
			result = "ok";
			
		}
		return result;
	}


	


//	public ModelAndView idFind(MemberDTO member) {
//		mav = new ModelAndView();
//		String findId = mdao.idFind(member);
//		
//		
//		List<MemberDTO> memberList = mdao.memberList();
//		
//		if (findId != null) {
//			mav.addObject("memberList", memberList);
//			mav.setViewName("idresult");
//		} else {
//			mav.setViewName("idfind");
////			mav.addObject("msg","이메일 또는 비밀번호를 확인해주세요");
//		}
//		return mav;
//	}


	public ModelAndView memberList() {
		mav = new ModelAndView();
		List<MemberDTO> memberList = mdao.memberList();
		mav.addObject("memberList", memberList);
		mav.setViewName("memberlist");
		return mav;
	}


	public ModelAndView memberView(String mid) {
		mav = new ModelAndView();
		
//		String loginId = (String) session.getAttribute("member");
//		MemberDTO memberView = mdao.memberView(loginId);
		
		MemberDTO member = mdao.memberView(mid);
		mav.addObject("member", member);
		mav.setViewName("productview");
		return mav;
	}


	
	
	public ModelAndView idFind(String mphone) {
	mav = new ModelAndView();
	String Findid = mdao.idFind(mphone);
	System.out.println("1 체크결과");
	if (Findid != null) {
		System.out.println("2 체크결과");
		session.setAttribute("fd", Findid);
		mav.setViewName("idfindresult");
	} else {
		mav.setViewName("idfind");
	}
	return mav;
}


	public ModelAndView withDrawal(MemberDTO member) {
		mav = new ModelAndView();
		String loginId = (String) session.getAttribute("loginMember");
		MemberDTO memberUpdate = mdao.update(loginId);
		mav.addObject("member", memberUpdate);
		System.out.println("1 체크결과");
		if(loginId != null) {
			System.out.println("2 체크결과");
			mav.setViewName("withdrawalresult");
		} else {
			// 로그인 실패 처리
			mav.setViewName("withdrawal");
		}
				
		return mav;
	}
	public ModelAndView withdrawalPage() {
		mav = new ModelAndView();
		// 우변 : 현재 로그인을 한 상태에서 수정 요청을 하는 것이기 때문에 
		// 		 세션에 저장된 로그인 아이디 값을 가지고 옴. 
		//		 가져와서 loginId 변수에 저장 
		String loginId = (String) session.getAttribute("loginMember");
		// 강제형변환
//		double a=0.0;
//		int b=0;
//		b=(int) a;
		
		// update() 메소드는 현재 로그인한 회원의 전체 정보를 DB로 부터 가져와서
		// memberupdate.jsp에 출력하는 것이 목적이기 때문에 memberview 메소드를 사용해도 문제 없음. 
//		MemberDTO memberUpdate = mdao.memberView(loginId);
		MemberDTO memberUpdate = mdao.update(loginId);
		
		mav.addObject("member", memberUpdate);
		mav.setViewName("withdrawal");
		
		return mav;
	}


	public ModelAndView withDraw(String mid) {
		mav = new ModelAndView();
		
		
		mdao.withDraw(mid);
		mav.setViewName("home");
		return mav;
	}
	
	/* 주문자 정보 */
	public MemberDTO getMemberInfo(String mid) {
		return mdao.getMemberInfo(mid);
	}
	
	
	
	// 아이디 찾기
		
		public String findId(HttpServletResponse response, String memail) throws Exception {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			String mid = mdao.findId(memail);
			
			if (mid == null) {
				out.println("<script>");
				out.println("alert('가입된 아이디가 없습니다.');");
				out.println("history.go(-1);");
				out.println("</script>");
				out.close();
				return null;
			} else {
				return mid;
			}
		}
		
    // 이메일 발송 
		public void send_mail(MemberDTO member, String div) throws Exception {
			// Mail Server 설정
			String charSet = "utf-8";
			String hostSMTP = "smtp.naver.com";
			String hostSMTPid = "botnd3978@naver.com";
			String hostSMTPpwd = "cjstk7769@";

			// 보내는 사람 EMail, 제목, 내용
			String fromEmail = "botnd3978@naver.com";
			String fromName = "SAZA";
			String subject = "";
			String msg = "";
			
			if(div.equals("join")) {
				// 회원가입 메일 내용
				subject = "Spring Homepage 회원가입 인증 메일입니다.";
				msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
				msg += "<h3 style='color: blue;'>";
				msg += member.getMid() + "님 회원가입을 환영합니다.</h3>";
				msg += "<div style='font-size: 130%'>";
				msg += "하단의 인증 버튼 클릭 시 정상적으로 회원가입이 완료됩니다.</div><br/>";
				msg += "<form method='post' action='http://localhost:8081/homepage/member/approval_member.do'>";
				msg += "<input type='hidden' name='email' value='" + member.getMemail() + "'>";
				msg += "<input type='submit' value='인증'></form><br/></div>";
			}else if(div.equals("findPw")) {
				subject = "Spring Homepage 임시 비밀번호 입니다.";
				msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
				msg += "<h3 style='color: blue;'>";
				msg += member.getMid() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
				msg += "<p>임시 비밀번호 : ";
				msg += member.getMpassword() + "</p></div>";


			}
			// 받는 사람 E-Mail 주소
			String memail = member.getMemail();
			try {
				HtmlEmail email = new HtmlEmail();
				email.setDebug(true);
				email.setCharset(charSet);
				email.setSSL(true);
				email.setHostName(hostSMTP);
				email.setSmtpPort(587);

				email.setAuthentication(hostSMTPid, hostSMTPpwd);
				email.setTLS(false);
				email.addTo(memail, charSet);
				email.setFrom(fromEmail, fromName, charSet);
				email.setSubject(subject);
				email.setHtmlMsg(msg);
				email.send();
			} catch (Exception e) {
				System.out.println("메일발송 실패 : " + e);
			}
		}
		
		
		
		// 비밀번호 찾기
		public void findPw(HttpServletResponse response, MemberDTO member) throws Exception {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			
			
			// 아이디가 없으면
			if(mdao.idCheck(member.getMid()) == null) {


				out.print("아이디가 없습니다.");
				out.close();
			}


			// 가입에 사용한 이메일이 아니면
			else if(!member.getMemail().equals(mdao.update(member.getMid()).getMemail())) {
				


			

				out.print("잘못된 이메일 입니다.");
				out.close();
			}else {
				// 임시 비밀번호 생성
				String pw = "";
				for (int i = 0; i < 12; i++) {
					pw += (char) ((Math.random() * 26) + 97);
				}
				member.setMpassword(pw);
				// 비밀번호 변경
				mdao.pwUpdate(member);
				// 비밀번호 변경 메일 발송
				send_mail(member, "findPw");
				
				out.print("이메일로 임시 비밀번호를 발송하였습니다.");
				out.close();
			}
		}
		
		// 비밀번호 변경 
		
		
		public MemberDTO pwUpdate(MemberDTO member, String old_pw,HttpServletResponse response) throws Exception {
			response.setContentType("text/html;charset=utf-8");


			PrintWriter out = response.getWriter();
			if(!old_pw.equals(mdao.update(member.getMid()).getMpassword())) {
				out.println("<script>");
				out.println("alert('기존 비밀번호가 다릅니다.');");
				out.println("history.go(-1);");
				out.println("</script>");
				out.close();
				return null;
			}else {
				mdao.pwUpdate(member);
				return mdao.update(member.getMid());
			}
		}
		
		public ModelAndView pUpdate() {
			mav = new ModelAndView();
			String loginId = (String) session.getAttribute("loginMember");
			MemberDTO pUpdate = mdao.pUpdate(loginId);
			
			mav.addObject("member", pUpdate);
			mav.setViewName("pwupdate");
			
			return mav;
		}


		public ModelAndView myupdate() {
			mav = new ModelAndView();
			String loginId = (String) session.getAttribute("loginMember");
			MemberDTO memberUpdate = mdao.update(loginId);
			
			mav.addObject("member", memberUpdate);
			mav.setViewName("my");
			
			return mav;
		}
		
//		public ModelAndView orderView(String mid) {
//			mav = new ModelAndView();
//			
//			// 한명 회원에 대한 정보만 필요하기 때문에 DTO 타입의 객체로 리턴을 받음. 
//			List<OrderDTO> order = mdao.orderView(mid);
//			
//			List<OrderDTO> list = mdao.orderList(mid);
//			
//			List<OrderItemDTO> ords = new ArrayList<>();
//			
//
//			
//			// DB 조회 결과를 member에 받았고.. 
//			// member를 담아서 memberview.jsp로 가야함. 
//			mav.addObject("result", order);
//			mav.setViewName("purchaselist");
//			
//			mav.addObject("list", list);
//			mav.setViewName("purchaselist");
//				
//			
//		
//			
//			
//			return mav;
//		}

		
		
		
		public ModelAndView orderView(String mid,OrderDTO ord) {
			mav = new ModelAndView();
			
			// 한명 회원에 대한 정보만 필요하기 때문에 DTO 타입의 객체로 리턴을 받음. 
//			List<OrderDTO> order = mdao.orderView(mid);
			
			List<OrderDTO> list = mdao.orderList(mid);
			mav.addObject("list", list);
			mav.setViewName("purchaselist");
			
			
			
			List<OrderItemDTO> ords = mdao.orderitemList(ord.getOrderId());
			mav.addObject("orderitemlist", ords);
			mav.setViewName("purchaselist");
			
			
			List<ProductDTO> productlist = pdao.productList();
			mav.addObject("productlist", productlist);
			mav.setViewName("purchaselist");
			

			
			// DB 조회 결과를 member에 받았고.. 
			// member를 담아서 memberview.jsp로 가야함. 
//			mav.addObject("result", order);
//			mav.setViewName("purchaselist");
			

			
			return mav;
		}

	
		
		public ModelAndView orderlistView(String orderId) {
			mav = new ModelAndView();
			
			
			
			List<OrderItemDTO> ordi = mdao.orderlistView(orderId);
			mav.addObject("ordilist", ordi);
			
			
			List<ProductDTO> productlist = pdao.productList();
			mav.addObject("productlist", productlist);
			
			
			
			List<ReplyDTO> replyList = mdao.orderreply();
			mav.addObject("replyList", replyList);
			
			
			ReplyPageDTO dto = new ReplyPageDTO();
			
			dto.setList(mdao.orderreply());
			
			mav.setViewName("orderlistview");
		
			
			return mav;
		}
		
		
		
	
	

}
