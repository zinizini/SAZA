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
	
	/* 상품 id 이름 */
//	public ModelAndView getProductName(int gdscode) {
//		mav = new ModelAndView();
//		
//		ProductDTO product = pdao.getProductName(gdscode);
//		mav.addObject("product", product);
//		mav.setViewName("replyenroll");
//		
//
//		return mav;
//	}
	
	public ProductDTO getProductName(int gdscode) {
		
		
//		ProductDTO product = pdao.getProductName(gdscode);
//		mav.addObject("product", product);
//		mav.setViewName("replyenroll");
		

		return pdao.getProductName(gdscode);
	}
	
	
	
	
	/* 페이징 처리 */
	// 페이징 처리에 활용할 상수 
		private static final int PAGE_LIMIT = 9; // 한페이지에 보여질 글 개수 
		private static final int BLOCK_LIMIT = 5; // 한화면에 보여질 페이지 개수
		
		public ModelAndView productPaging(int page) {
			mav = new ModelAndView();
			// 게시글 갯수 가져오기 
			int listCount = pdao.listCount();
			
			// 매개변수로 넘겨받은 page 변수값을 기준으로 현재 보여줘야 하는 게시글의 범위 계산 
			int startRow = (page-1) * PAGE_LIMIT + 1;
			int endRow = page * PAGE_LIMIT;
			// page=1 일 때(1페이지클릭) startRow=1, endRow=3
			// page=2 일 때(2페이지클릭) startRow=4, endRow=6
			// page=3 일 때(3페이지클릭) startRow=7, endRow=9
			
			// startRow, endRow 기준으로 boardlist 가져오기 
			PageDTO shop = new PageDTO();
			shop.setStartRow(startRow);
			shop.setEndRow(endRow);
			List<ProductDTO> productList = pdao.productPaging(shop);
			
			// 필요한 페이지 계산 
			// maxPage : 최대로 필요한 페이지 갯수 
			// 글갯수: 16개, 한페이지에 보여질 글갯수: 3개 => maxPage=6
			// 3.9=>4, 4.1=>5
			int maxPage = (int)(Math.ceil((double)listCount / PAGE_LIMIT));
			// 페이지 번호에서 시작할 페이지의 번호
			// 1,4,7,10~~~ (BLOCK_LIMIT=3 일때)
			// 1,6,11,16~~~ (BLOCK_LIMIT=5 일때)
			// 1,11,21,31~~~ (BLOCK_LIMIT=10 일때)
			int startPage = (((int)(Math.ceil((double)page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
			// 페이지 번호에서 마지막 페이지의 번호
			// 3,6,9,12~~~ (BLOCK_LIMIT=3 일때)
			// 5,10,15,20~~~ (BLOCK_LIMIT=5 일때)
			// 10,20,30,40~~~ (BLOCK_LIMIT=10 일때)
			int endPage = startPage + BLOCK_LIMIT - 1;
			
			/* 계산결과 전체 페이지 갯수는 4개밖에 없는데
			 * BLOCK_LIMIT 5라면 endPage는 5의 값을 갖게 됨. 
			 * 그러면 5페이지는 클릭을 해봐야 나올 데이터도 없고 필요없는 페이지 번호임. 따라서 BLOCK_LIMIT이 5라고 하더라도 
			 * 하단의 페이지 목록은 1,2,3,4 만 노출되면 되기 때문에 아래와 같은 식을 통해 endPage값을 조정.  
			 */
			if(endPage > maxPage)
				endPage = maxPage;
			
			// 계산된 page 관련 값을 PageDTO 객체에 담음 
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
