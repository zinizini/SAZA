package com.hhj.SazaShopping.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hhj.SazaShopping.dto.PageDTO;
import com.hhj.SazaShopping.dto.ReplyDTO;
import com.hhj.SazaShopping.dto.UpdateReplyDTO;


@Repository
public class ReplyDAO {
	
	@Autowired
	private SqlSessionTemplate sql;

	
	
	/* 댓글 등록 */
	public int enrollReply(ReplyDTO dto) {
		return sql.insert("rm.enrollReply", dto);
	}
	
	public List<ReplyDTO> replyList(int gdscode){
		return sql.selectList("rm.replylist", gdscode);
	}
	
	/* 댓글 존재 체크 */
	public Integer checkReply(ReplyDTO dto) {
		return sql.selectOne("rm.checkReply", dto);
	}
	
	/* 댓글 수정 */
	public int updateReply(ReplyDTO dto) {
		return sql.update("rm.updateReply", dto);
	}
	
	/* 댓글 한개 정보(수정페이지) */
	public ReplyDTO getUpdateReply(int replyId) {
		return sql.selectOne("rm.getUpdateReply", replyId);
	}
	
	/* 평점 평균 구하기 */
	public Double getRatingAverage(int gdscode) {
		return sql.selectOne("rm.getRatingAverage", gdscode);
	}
	
	/* 평점 평균 반영하기 */
	public int updateRating(UpdateReplyDTO dto) {
		return sql.update("rm.updateRating", dto);
	}
	
	/* 댓글 삭제 */
	public int deleteReply(int replyId) {
		return sql.delete("rm.deleteReply", replyId);
	}
	
	
	/* 댓글 페이징 */
	public List<ReplyDTO> getReplyList(PageDTO page){
	    return sql.selectList("rm.getReplyList", page);
    }
	
	
	public int listCount() {
		return sql.selectOne("rm.listcount");
	}
	
	
	
}
