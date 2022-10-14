package com.hhj.SazaShopping.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hhj.SazaShopping.dto.CategoryDTO;
import com.hhj.SazaShopping.dto.MemberDTO;
import com.hhj.SazaShopping.dto.OrderDTO;
import com.hhj.SazaShopping.dto.PageDTO;
import com.hhj.SazaShopping.dto.ProductDTO;

@Repository
public class AdminDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	/* 상품 등록 */
	public int pResister(ProductDTO product) {
		return sql.insert("am.presister",product);
	}
	
	/* 카테고리 */
	public List<CategoryDTO> cateList() {
		return sql.selectList("am.catelist");
	}
	
	/* 상품 삭제 */
	public int productDelete(int gdscode) {
		return sql.delete("am.productdelete", gdscode);
	}
	
	/* 상품 수정처리 */
	public int updateProcess(ProductDTO product) {
		return sql.update("am.productupdate", product);
	}

	public ProductDTO updateView(int gdscode) {
		return sql.selectOne("am.updateview", gdscode);
	}
	
	/* 주문 상품 리스트 */
	public List<OrderDTO> getOrderList(PageDTO paging) {
		return sql.selectList("am.getOrderList", paging);
	}
	
	/* 주문 총 갯수 */
	public int getOrderTotal() {
		return sql.selectOne("am.getOrderTotal");
	}
	/* 회원 검색 */	
	public List<OrderDTO> memberSearch(Map<String, String> searchMap){
		return sql.selectList("am.membersearch", searchMap);
	}
	public int listCount() {
		return sql.selectOne("am.listcount");
	}

	


}
