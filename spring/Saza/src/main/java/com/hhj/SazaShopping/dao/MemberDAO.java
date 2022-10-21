package com.hhj.SazaShopping.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.hhj.SazaShopping.dto.MemberDTO;
import com.hhj.SazaShopping.dto.OrderDTO;
import com.hhj.SazaShopping.dto.OrderItemDTO;
import com.hhj.SazaShopping.dto.OrderPageItemDTO;
import com.hhj.SazaShopping.dto.PageDTO;
import com.hhj.SazaShopping.dto.ProductDTO;
import com.hhj.SazaShopping.dto.ReplyDTO;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate sql;

	public String memberLogin(MemberDTO member) {
		return sql.selectOne("mm.memberlogin",member);
	}

	public int memberJoin(MemberDTO member) {
		return sql.insert("mm.memberjoin",member);
	}

	public String idCheck(String mid) {
		return sql.selectOne("mm.idcheck",mid);
	}

	public MemberDTO update(String loginId) {
		return sql.selectOne("mm.memberupdate",loginId);
	}

	public int profileUpdate(MemberDTO member) {
		return sql.update("mm.profileupdate", member);
	}

	public String emailCheck(String memail) {
		return sql.selectOne("mm.emailcheck",memail);
	}


	public String idfindAjax(String mphone) {
		return sql.selectOne("mm.idfindajax",mphone);
	}


	public String idFind(String mid) {
		return sql.selectOne("mm.idfind",mid);
	}

	public List<MemberDTO> memberList() {
		return sql.selectList("mm.memberlist");
	}

	public MemberDTO memberView(String mid) {
		return sql.selectOne("mm.memberview", mid);
	}

	public String withDrawal(String loginId) {
		return sql.selectOne("mm.withdrawal", loginId);
	}
	public MemberDTO withdrawalPage(String loginId) {
		return sql.selectOne("mm.withdrawalpage", loginId);
	}

	public void withDraw(String mid) {
		sql.delete("mm.withdraw", mid);

	}

	/* 주문자 주소 정보 */
	public MemberDTO getMemberInfo(String mid) {
		return sql.selectOne("mm.getMemberInfo", mid);
	}

	// 아이디 찾기
	public String findId(String memail) throws Exception {
		return sql.selectOne("mm.findId", memail);
	}
	
	// 비밀번호 변경
	public int pwUpdate(MemberDTO member) {
		return sql.update("mm.pwUpdate", member);
	}

	// 로그인 검사
	public MemberDTO pUpdate(String loginId) {
		return sql.selectOne("mm.pUpdate",loginId);
	}
	
	public List<OrderDTO> orderView(String mid) {
		return sql.selectList("mm.orderview", mid);
	}

	public List<OrderDTO> orderList(String mid) {
		return sql.selectList("mm.orderList", mid);
	}
	
	public List<OrderItemDTO> orderitemList(String orderId) {
		return sql.selectList("mm.orderitemList", orderId);
	}
	
	public List<OrderItemDTO> orderlistView(String orderId) {
		return sql.selectList("mm.orderlistView",orderId);
	}
	
	public List<ReplyDTO> orderreply(){
		return sql.selectList("mm.orderreply");
	}



}
