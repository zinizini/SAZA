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
	
	
	// "throws Exception"은 메서드를 호출한 주체에게 메서드에서 발생한 예외를 던져주는 역할. 
	
	// 반환타입을 int로 할 경우 row 추가 성공 시 1, 실패시 0을 반환하는데 이러한 점을 필요할때 활용하기 위해 int로 지정하였습니다. 
	
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
	
	
	// 어떤 회원인지에 대한 정보가 필요로 하기 때문에 String 타입의 mid를 파라미터 변수로 선언 
	// 반환 타입은 한 개 이상의 장바구니 데이터를 반환받아야 하기 때문에 List<CartDTO>로 지정을 하였습니다. 
	// 카트목록 
//	public List<CartDTO> getCart(String mid){
//		return sql.selectList("cartm.cartlist", mid);
//	}
	
	// 카트확인 
	public CartDTO checkCart(CartDTO cart) {
		return sql.selectOne("cartm.checkcart", cart);
	}




//	public List<CartDTO> cartList() {
//		return sql.selectList("cartm.cartlist");
//	}
	
	public List<CartDTO> cartList(String mid){
		return sql.selectList("cartm.cartlist",mid);
	}
	public List<CartDTO> cartView(String mid) {
		return sql.selectList("cartm.cartview", mid);
	}





}
