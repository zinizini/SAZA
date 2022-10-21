package com.hhj.SazaShopping.controller;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hhj.SazaShopping.dto.PageDTO;
import com.hhj.SazaShopping.dto.ReplyDTO;
import com.hhj.SazaShopping.dto.ReplyPageDTO;
import com.hhj.SazaShopping.service.ReplyService;
@RestController
@RequestMapping("/reply")
public class ReplyController {
	
	@Autowired
	private ReplyService rs;
	
	private ModelAndView mav;
	
	/* 댓글 등록 */
	@PostMapping("/enroll")
	public void enrollReplyPOST(ReplyDTO dto) {
		rs.enrollReply(dto);
	}

	/* 댓글 체크 */
	/* mid, gdscode 파라미터 */
	/* 존재 : 1 / 존재x : 0 */
	@PostMapping("/check")
	public String replyCheckPOST(ReplyDTO dto) {
		return rs.checkReply(dto);
	}
	
	/* 댓글 수정 */
	@PostMapping("/updateReply")
	public void updateReply(ReplyDTO dto) {
		rs.updateReply(dto);
	}
	
	/* 댓글 삭제 */
	@PostMapping("/deleteReply")
	public void deleteReply(ReplyDTO dto) {
		rs.deleteReply(dto);
	}
	
	
	/* 댓글 페이징 */
	@GetMapping(value="/list" , produces = MediaType.APPLICATION_JSON_VALUE)
	public ModelAndView getReplyList(@RequestParam(value="page",required=false, defaultValue="1")int page){
		ObjectMapper mapper = new ObjectMapper();
		mav = rs.getReplyList(page);
		
		return mav;
	}
	
}
