package com.hhj.SazaShopping.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hhj.SazaShopping.dto.CartDTO;


@Repository
public class CartDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	
	
	// 카트추가 
	public int addCart(CartDTO cart) throws Exception  {
		return sql.insert("cartm.addcart",cart);
	}

	
	// 카트삭제 
	public int deleteCart(int cartid) {
		return sql.delete("cartm.deletecart",cartid);
	}
	
	// 카트수량 수정 
	public int modifyCount(CartDTO cart) {
		return sql.update("cartm.modifycount",cart);
	}
	

	// 카트확인 
	public CartDTO checkCart(CartDTO cart) {
		return sql.selectOne("cartm.checkcart", cart);
	}

	public List<CartDTO> cartList(String mid){
		return sql.selectList("cartm.cartlist",mid);
	}
	public List<CartDTO> cartView(String mid) {
		return sql.selectList("cartm.cartview", mid);
	}





}
