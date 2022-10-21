package com.hhj.SazaShopping.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.hhj.SazaShopping.dao.ReplyDAO;
import com.hhj.SazaShopping.dto.PageDTO;
import com.hhj.SazaShopping.dto.ProductDTO;
import com.hhj.SazaShopping.dto.ReplyDTO;
import com.hhj.SazaShopping.dto.ReplyPageDTO;
import com.hhj.SazaShopping.dto.UpdateReplyDTO;

@Service
public class ReplyService {
	
	
	@Autowired
	private ReplyDAO rdao;
	
	private ModelAndView mav;

	/* 댓글등록 */
	public int enrollReply(ReplyDTO dto) {
		
		int result = rdao.enrollReply(dto);
		setRating(dto.getGdscode());
		
		return result;
	}


	
	/* 댓글 존재 체크 */
	public String checkReply(ReplyDTO dto) {
		
		Integer result = rdao.checkReply(dto);
		
		if(result == null) {
			return "0";
		} else {
			return "1";
		}
		
	}
	
	
	/* 댓글 수정 */
	public int updateReply(ReplyDTO dto) {
		
		int result = rdao.updateReply(dto);
		setRating(dto.getGdscode());
		
		return result;
	}
	
	/* 댓글 한개 정보(수정페이지) */
	public ReplyDTO getUpdateReply(int replyId) {
		return rdao.getUpdateReply(replyId);
	}
	
	
	public void setRating(int gdscode) {
		
		Double ratingAvg = rdao.getRatingAverage(gdscode);	
		
		if(ratingAvg == null) {
			ratingAvg = 0.0;
		}	
		
		ratingAvg = (double) (Math.round(ratingAvg*10));
		ratingAvg = ratingAvg / 10;
		
		UpdateReplyDTO urd = new UpdateReplyDTO();
		urd.setGdscode(gdscode);
		urd.setRatingAvg(ratingAvg);	
		
		rdao.updateRating(urd);		
		
	}
	
	/* 댓글 삭제 */
	public int deleteReply(ReplyDTO dto) {
		
		int result = rdao.deleteReply(dto.getReplyId()); 
		
		return result;
	}

	// 페이징 처리
			private static final int PAGE_LIMIT = 9; // 한페이지에 보여질 글 개수 
			private static final int BLOCK_LIMIT = 5; // 한화면에 보여질 페이지 개수
			
			public ModelAndView getReplyList(int page) {
				mav = new ModelAndView();
				
				ReplyPageDTO dto = new ReplyPageDTO();
				
				dto.setList(rdao.replyList(page));
				
				int listCount = rdao.listCount();
				
				int startRow = (page-1) * PAGE_LIMIT + 1;
				int endRow = page * PAGE_LIMIT;
				
				PageDTO paging= new PageDTO();
				paging.setStartRow(startRow);
				paging.setEndRow(endRow);
				List<ReplyDTO> replyList = rdao.getReplyList(paging);
			
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
				mav.addObject("replyList", replyList);
				mav.setViewName("productview");
				
				
				return mav;
			}


}
