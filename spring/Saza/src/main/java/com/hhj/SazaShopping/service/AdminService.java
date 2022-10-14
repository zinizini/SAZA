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
		
		
		
		
		
		

		
//		FileOutputStream gdsthumb = new FileOutputStream(new File(savePath+"s_"+ gdsimg));
//		Thumbnailator.createThumbnail(gdsfile.getInputStream(), gdsthumb, 100, 100);
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
		// 이 메소드의 목적 : DB에서 gdscode에 해당하는 데이터를 가져와서 productupdate.jsp로 목적지를 지정. 
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
	
	/* 주문 상품 리스트 */
//	public List<OrderDTO> getOrderList() {
//		return adao.getOrderList();
//	}
	
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
	// 페이징 처리에 활용할 상수 
		private static final int PAGE_LIMIT = 9; // 한페이지에 보여질 글 개수 
		private static final int BLOCK_LIMIT = 5; // 한화면에 보여질 페이지 개수
		
		public ModelAndView getOrderList(int page) {
			mav = new ModelAndView();
			// 게시글 갯수 가져오기 
			int listCount = adao.listCount();
			
			// 매개변수로 넘겨받은 page 변수값을 기준으로 현재 보여줘야 하는 게시글의 범위 계산 
			int startRow = (page-1) * PAGE_LIMIT + 1;
			int endRow = page * PAGE_LIMIT;
			// page=1 일 때(1페이지클릭) startRow=1, endRow=3
			// page=2 일 때(2페이지클릭) startRow=4, endRow=6
			// page=3 일 때(3페이지클릭) startRow=7, endRow=9
			
			// startRow, endRow 기준으로 boardlist 가져오기 
			PageDTO paging = new PageDTO();
			paging.setStartRow(startRow);
			paging.setEndRow(endRow);
			List<OrderDTO> list = adao.getOrderList(paging);
			
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


	


