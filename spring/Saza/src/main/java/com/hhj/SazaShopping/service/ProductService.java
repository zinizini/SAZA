package com.hhj.SazaShopping.service;

import java.io.File;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hhj.SazaShopping.dao.AdminDAO;
import com.hhj.SazaShopping.dao.MemberDAO;
import com.hhj.SazaShopping.dao.ProductDAO;
import com.hhj.SazaShopping.dao.ReplyDAO;
import com.hhj.SazaShopping.dto.CategoryDTO;
import com.hhj.SazaShopping.dto.MemberDTO;
import com.hhj.SazaShopping.dto.OrderDTO;
import com.hhj.SazaShopping.dto.OrderItemDTO;
import com.hhj.SazaShopping.dto.PageDTO;
import com.hhj.SazaShopping.dto.ProductDTO;
import com.hhj.SazaShopping.dto.ReplyDTO;


import net.sf.json.JSONArray;

@Service
public class ProductService {
	
	@Autowired
	private ProductDAO pdao;
	
	@Autowired
	private AdminDAO adao;
	
	@Autowired
	private ReplyDAO rdao;
	
	@Autowired
	private MemberDAO mdao;
	
	@Autowired
	private AdminService as;
	
	
	private ModelAndView mav;

	public ModelAndView productList() {
		mav = new ModelAndView();
		
		List<ProductDTO> productList = pdao.productList();
		mav.addObject("productList", productList);
		mav.setViewName("shop");
		return mav;
	}
	
		
	public ModelAndView productView(int gdscode, int page) {
		mav = new ModelAndView();
		
		
		
		ProductDTO product = pdao.productView(gdscode);
		
		mav.addObject("page", page);
		
		List<ReplyDTO> replyList = rdao.replyList(gdscode);
		mav.addObject("replyList",replyList);
		
		
		List<OrderDTO> productorder = pdao.productOrder();
		mav.addObject("productorder",productorder);
		
		
		List<OrderItemDTO> productOrderList = pdao.productOrderList();
		mav.addObject("productOrderList",productOrderList);
		
		
		
		mav.addObject("product", product);
		
		mav.setViewName("productview");
		return mav;
	}



	public ModelAndView productSearch(String searchType, String keyword) {
		
		mav = new ModelAndView();
		
		// Map을 사용하여 mapper로 전달 
		Map<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("type", searchType);
		searchMap.put("word", keyword);
		
		List<ProductDTO> productList = pdao.productSearch(searchMap);
		
		mav.addObject("productList", productList);
		mav.setViewName("shop");
		
		return mav;
	}
	
	
	
	public ProductDTO getProductName(int gdscode) {
		
	
		return pdao.getProductName(gdscode);
	}
	
	
	
	
	/* 페이징 처리 */
	// 페이징 처리에 활용할 상수 
		private static final int PAGE_LIMIT = 9; // 한페이지에 보여질 글 개수 
		private static final int BLOCK_LIMIT = 5; // 한화면에 보여질 페이지 개수
		
		public ModelAndView productPaging(int page) {
			mav = new ModelAndView();

			int listCount = pdao.listCount();
			
			int startRow = (page-1) * PAGE_LIMIT + 1;
			int endRow = page * PAGE_LIMIT;
		
		
			PageDTO shop = new PageDTO();
			shop.setStartRow(startRow);
			shop.setEndRow(endRow);
			List<ProductDTO> productList = pdao.productPaging(shop);
			
			int maxPage = (int)(Math.ceil((double)listCount / PAGE_LIMIT));
			
			int startPage = (((int)(Math.ceil((double)page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
			
			int endPage = startPage + BLOCK_LIMIT - 1;
			
			if(endPage > maxPage)
				endPage = maxPage;
		
			shop.setPage(page);
			shop.setStartPage(startPage);
			shop.setEndPage(endPage);
			shop.setMaxPage(maxPage);
			
			mav.addObject("shop", shop);
			mav.addObject("productList", productList);
			mav.setViewName("shop");
			
			return mav;
		}



}
