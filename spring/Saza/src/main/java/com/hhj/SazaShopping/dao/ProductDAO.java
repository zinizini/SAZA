package com.hhj.SazaShopping.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hhj.SazaShopping.dto.CategoryDTO;
import com.hhj.SazaShopping.dto.OrderDTO;
import com.hhj.SazaShopping.dto.OrderItemDTO;
import com.hhj.SazaShopping.dto.PageDTO;
import com.hhj.SazaShopping.dto.ProductDTO;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSessionTemplate sql;

	public List<ProductDTO> productList() {
		return sql.selectList("pm.productlist");
	}


	public ProductDTO productView(int gdscode) {
		return sql.selectOne("pm.productview",gdscode);
	}
	public int listCount() {
		return sql.selectOne("pm.listcount");
	}

	public List<CategoryDTO> category() throws Exception {
		return sql.selectList("pm.category");
	}

	public List<ProductDTO> productSearch(Map<String, String> searchMap) {
		return sql.selectList("pm.productsearch", searchMap);
	}
	
	public ProductDTO getProductName(int gdscode) {
		return sql.selectOne("pm.getProductName", gdscode);
	}
	
	public List<ProductDTO> productPaging(PageDTO shop){
		return sql.selectList("pm.productpaging", shop);
	}
	
	
	public List<OrderDTO> productOrder() {
		return sql.selectList("pm.productOrder");
	}
	
	public List<OrderItemDTO> productOrderList() {
		return sql.selectList("pm.productOrderList");
	}

	

	



}
