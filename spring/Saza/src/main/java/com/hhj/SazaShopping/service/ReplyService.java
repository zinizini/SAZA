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

//	public int enrollReply(ReplyDTO reply) {
//		
//		int writeResult = rdao.enrollReply(reply);
//		int result = rdao.enrollReply(reply);
//		List<ReplyDTO> replyList = new ArrayList<ReplyDTO>(); 
//		if(writeResult > 0)
//			replyList = rdao.replyList(reply.getGdscode());
//		else 
//			replyList = null;
//		return result;
//	}
	

	public int enrollReply(ReplyDTO dto) {
		
		int result = rdao.enrollReply(dto);
		setRating(dto.getGdscode());
		
		return result;
	}


	
//	public List<ReplyDTO> reviewWrite(ReplyDTO dto) {
//		int writeResult = rdao.reviewWrite(dto);
//		List<ReplyDTO> replyList = new ArrayList<ReplyDTO>(); 
//		if(writeResult > 0)
//			replyList = rdao.replyList(dto.getGdscode());
//		else 
//			replyList = null;
//		return replyList;
//	}
	
	
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
	
//	
//	public ReplyPageDTO replyList(PageDTO paging) {
//		ReplyPageDTO dto = new ReplyPageDTO();
//		
//		dto.setList(rdao.getReplyList(paging));
//		dto.setPageInfo(new PageDTO(paging, rdao.getReplyTotal(paging.getGdscode())));
//		
//		return dto;
//	}
	// 페이징 처리에 활용할 상수 
			private static final int PAGE_LIMIT = 9; // 한페이지에 보여질 글 개수 
			private static final int BLOCK_LIMIT = 5; // 한화면에 보여질 페이지 개수
			
			public ModelAndView getReplyList(int page) {
				mav = new ModelAndView();
				
				ReplyPageDTO dto = new ReplyPageDTO();
				
				dto.setList(rdao.replyList(page));
				
				
				// 게시글 갯수 가져오기 
				int listCount = rdao.listCount();
				
				// 매개변수로 넘겨받은 page 변수값을 기준으로 현재 보여줘야 하는 게시글의 범위 계산 
				int startRow = (page-1) * PAGE_LIMIT + 1;
				int endRow = page * PAGE_LIMIT;
				// page=1 일 때(1페이지클릭) startRow=1, endRow=3
				// page=2 일 때(2페이지클릭) startRow=4, endRow=6
				// page=3 일 때(3페이지클릭) startRow=7, endRow=9
				
				// startRow, endRow 기준으로 boardlist 가져오기 
				PageDTO paging= new PageDTO();
				paging.setStartRow(startRow);
				paging.setEndRow(endRow);
				List<ReplyDTO> replyList = rdao.getReplyList(paging);
				
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
				mav.addObject("replyList", replyList);
				mav.setViewName("productview");
				
				
				return mav;
			}





}
