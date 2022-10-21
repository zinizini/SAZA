package com.hhj.SazaShopping.controller;

import java.io.IOException;
import java.util.List;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hhj.SazaShopping.dto.CategoryDTO;
import com.hhj.SazaShopping.dto.OrderCancelDTO;
import com.hhj.SazaShopping.dto.OrderDTO;
import com.hhj.SazaShopping.dto.ProductDTO;
import com.hhj.SazaShopping.service.AdminService;
import com.hhj.SazaShopping.service.OrderService;


@Controller
public class AdminController {
	@Autowired
	private AdminService as;
	
	private ModelAndView mav;
	
	@Autowired
	private OrderService os;

	
	
	/* 상품등록 화면을 띄우는 메소드 */
	@RequestMapping(value="/register")
	public void registerPage(Model model) throws Exception  {
		
		ObjectMapper objm = new ObjectMapper();
		
		List<CategoryDTO> list = as.cateList();	
		String cateList = objm.writeValueAsString(list);
		
		model.addAttribute("cateList", cateList);
		
		
	}
	
	/* 상품등록 */
	@RequestMapping(value="/presister")
	public ModelAndView pResister(@ModelAttribute ProductDTO product) throws IllegalStateException, IOException{
		mav = as.pResister(product);
		return mav;
	}
	
	@RequestMapping(value="/memberlistpage")
	public String memberlistPage() {
		return "memberlist";
	}
	
	/* 상품삭제 */
	@RequestMapping(value="/productdelete")
	public ModelAndView boardDelete(@RequestParam("gdscode") int gdscode) {
		mav = as.productDelete(gdscode);
		return mav;
	}
	
	/* 수정화면 요청 */
		@RequestMapping(value="/productupdate")
		public ModelAndView productUpdate(@RequestParam("gdscode") int gdscode , Model model) throws JsonProcessingException   {
			
			
			ObjectMapper mapper = new ObjectMapper();
			model.addAttribute("cateList", mapper.writeValueAsString(as.cateList()));
			
			
			mav = as.productUpdate(gdscode);
			return mav;
		}
	
		
	
	/* 수정처리 */
	@RequestMapping(value="/updateprocess")
	public ModelAndView updateProcess(@ModelAttribute ProductDTO product) {
		mav = as.updateProcess(product);
		return mav;
	}
	
	@RequestMapping(value="/updateview")
	public ModelAndView updateView(@RequestParam("gdscode")int gdscode, Model model) throws JsonProcessingException  {
		
		
		ObjectMapper mapper = new ObjectMapper();
		
	
		model.addAttribute("cateList", mapper.writeValueAsString(as.cateList()));
		
		mav = as.updateView(gdscode);
		return mav;
	}
	
	/* 검색 처리 */
	@RequestMapping(value="/msearch")
	public ModelAndView memberSearch(@RequestParam("searchtype") String searchType, 
			@RequestParam("keyword") String keyword) {
		mav = as.memberSearch(searchType, keyword);
		return mav;
	}
	
	/* 페이징 처리 */
	@RequestMapping(value="/orderlist")
	public ModelAndView getOrderList(@RequestParam(value="page",required=false, defaultValue="1")int page){
		mav = as.getOrderList(page);
		return mav;
	}
	
	
	/* 주문삭제 */
	@PostMapping("/orderCancle")
	public String orderCanclePOST(OrderCancelDTO dto) {
		
		os.orderCancle(dto);
		
		return "redirect:/orderlist";
	}

	
	
	
	
	
}
