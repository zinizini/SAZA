package com.hhj.SazaShopping.controller;

import java.io.IOException;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hhj.SazaShopping.dto.CategoryDTO;
import com.hhj.SazaShopping.dto.ProductDTO;
import com.hhj.SazaShopping.dto.ReplyDTO;
import com.hhj.SazaShopping.service.AdminService;
import com.hhj.SazaShopping.service.ProductService;
import com.hhj.SazaShopping.service.ReplyService;

import net.sf.json.JSONArray;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService ps;
	
	@Autowired
	private AdminService as;
	
	@Autowired
	private ReplyService rs;
	
	
	
	private ModelAndView mav;
	
	@RequestMapping(value="/shoppage")
	public String shopPage() {
		return "shop";
	}
	/* 상품 목록 */
	@RequestMapping(value="/productlist")
	public ModelAndView productList() {
		mav = ps.productList();
		return mav;
	}
	/* 상품 상세보기 */
	@RequestMapping(value="/productview")
	public ModelAndView productView(@RequestParam("gdscode") int gdscode,
			@RequestParam(value="page", required=false, defaultValue="1") int page, Model model) throws JsonProcessingException {
		
		ObjectMapper mapper = new ObjectMapper();
		
		
		model.addAttribute("cateList", mapper.writeValueAsString(as.cateList()));
		model.addAttribute("replyList", mapper.writeValueAsString(rs.getReplyList(page)));
		
		
		mav = ps.productView(gdscode,page);
		return mav;
	}
	/* 상품 검색 */
	@RequestMapping(value="/search")
	public ModelAndView productSearch(@RequestParam("searchtype") String searchType, 
			@RequestParam("keyword") String keyword) {
		mav = ps.productSearch(searchType, keyword);
		return mav;
	}
	
	@RequestMapping(value="/searchpage")
	public String searchPage() {
		return "search";
	}
	
	
	
	@GetMapping("/replyEnroll/{mid}")
	public String replyenrollWindowGET(@PathVariable("mid")String mid, int gdscode, Model model) {
		
		ProductDTO product = ps.getProductName(gdscode);
		model.addAttribute("product", product);
		model.addAttribute("mid", mid);
	
		
		
		
		return "/replyenroll";
	}
	
	
	
	/* 페이징 처리 */
	@RequestMapping(value="/shop")
	public ModelAndView productPaging(@RequestParam(value="page",required=false, defaultValue="1")int page){
		mav = ps.productPaging(page);
		return mav;
	}
	
	/* 리뷰 수정 팝업창 */
	@GetMapping("/getUpdateReply")
	public String getUpdateReply(ReplyDTO dto, Model model) {
		ProductDTO product = ps.getProductName(dto.getGdscode());
		model.addAttribute("product", product);
		model.addAttribute("reply", rs.getUpdateReply(dto.getReplyId()));
		model.addAttribute("mid", dto.getMid());
		
		return "/replyupdate";
	}

}
