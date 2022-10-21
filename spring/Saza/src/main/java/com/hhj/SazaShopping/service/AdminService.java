package com.hhj.SazaShopping.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hhj.SazaShopping.dao.AdminDAO;
import com.hhj.SazaShopping.dao.ProductDAO;
import com.hhj.SazaShopping.dto.CategoryDTO;
import com.hhj.SazaShopping.dto.MemberDTO;
import com.hhj.SazaShopping.dto.OrderDTO;
import com.hhj.SazaShopping.dto.PageDTO;
import com.hhj.SazaShopping.dto.ProductDTO;

import net.coobird.thumbnailator.Thumbnailator;

@Service
public class AdminService {
	
	@Autowired
	private AdminDAO adao;
	
	
	@Autowired
	private ProductDAO pdao;

	
	
	
	private ModelAndView mav;
	
	private boolean checkImageType(File file) {
		try {
			String contentType = Files.probeContentType(file.toPath());
			return contentType.startsWith("image");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return false;
	}
	public ModelAndView pResister(ProductDTO product) throws IllegalStateException, IOException {
		mav = new ModelAndView();
		MultipartFile gdsfile = product.getGdsfile();
		String gdsimg = gdsfile.getOriginalFilename();
		gdsimg = System.currentTimeMillis() + "-" + gdsimg;
		String savePath = "/Users/heoheejin/spring/Saza/src/main/webapp/resources/upload/"+gdsimg;
		product.setGdsimg(gdsimg);
		gdsfile.transferTo(new File(savePath));
		
		int writeResult = adao.pResister(product);
		if(writeResult > 0) {
			mav.setViewName("redirect:/shop");
			
		} else {
			mav.setViewName("resister");
		}
		
		return mav;
	}
	
	public List<CategoryDTO> cateList(){
		List<CategoryDTO> cateList = adao.cateList();
		return cateList;
		}
	
	public ModelAndView productDelete(int gdscode) {
		mav = new ModelAndView();
		int deleteResult = adao.productDelete(gdscode);
		if (deleteResult > 0) {
			mav.setViewName("redirect:/shop");
		}
		return mav;
	}
	public ModelAndView productUpdate(int gdscode) {
		
		mav = new ModelAndView();

		ProductDTO product = pdao.productView(gdscode);
		mav.addObject("productUpdate", product);
		mav.setViewName("productupdate");
		return mav;
	}
	public ModelAndView updateProcess(ProductDTO product) {
		mav = new ModelAndView();
		int updateResult = adao.updateProcess(product);
		if(updateResult > 0) {
			//1. 목록 출력 
			//2. 해당 글의 상세화면 출력 
			mav.setViewName("redirect:/productview?gdscode="+product.getGdscode());
		}
		return mav;
	}
	public ModelAndView updateView(int gdscode) {
		mav = new ModelAndView();
		ProductDTO product = adao.updateView(gdscode);
		mav.addObject("product", product);
		return mav;
	}
	
	/* 주문 총 갯수 */
	public int getOrderTotal() {
		return adao.getOrderTotal();
	}
	
	
	/* 회원 검색 */
	public ModelAndView memberSearch(String searchType, String keyword) {
		
		mav = new ModelAndView();
		
		Map<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("type", searchType);
		searchMap.put("word", keyword);
		
		List<OrderDTO> list = adao.memberSearch(searchMap);
		
		mav.addObject("list", list);
		mav.setViewName("orderlist");
		
		return mav;
	}
	
	/* 페이징 처리 */
	
		private static final int PAGE_LIMIT = 9; // 한페이지에 보여질 글 개수 
		private static final int BLOCK_LIMIT = 5; // 한화면에 보여질 페이지 개수
		
		public ModelAndView getOrderList(int page) {
			mav = new ModelAndView();
			
			int listCount = adao.listCount();
			
			
			int startRow = (page-1) * PAGE_LIMIT + 1;
			int endRow = page * PAGE_LIMIT;
			

			PageDTO paging = new PageDTO();
			paging.setStartRow(startRow);
			paging.setEndRow(endRow);
			List<OrderDTO> list = adao.getOrderList(paging);

			int maxPage = (int)(Math.ceil((double)listCount / PAGE_LIMIT));
	
			int startPage = (((int)(Math.ceil((double)page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
	
			int endPage = startPage + BLOCK_LIMIT - 1;
			
		
			if(endPage > maxPage)
				endPage = maxPage;
			
		
			paging.setPage(page);
			paging.setStartPage(startPage);
			paging.setEndPage(endPage);
			paging.setMaxPage(maxPage);
			
			mav.addObject("paging", paging);
			mav.addObject("list", list);
			mav.setViewName("orderlist");
			
			return mav;
		}
	
		
		

}


	


