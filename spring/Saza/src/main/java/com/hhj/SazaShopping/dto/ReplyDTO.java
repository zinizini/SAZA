package com.hhj.SazaShopping.dto;

import java.sql.Date;

import lombok.Data;

public class ReplyDTO {
	
    private int replyId;
	
	private int gdscode;
	
	private String mid;

	private Date regDate;
	
	private String content;
	
	private double rating;

	public int getReplyId() {
		return replyId;
	}

	public void setReplyId(int replyId) {
		this.replyId = replyId;
	}

	public int getGdscode() {
		return gdscode;
	}

	public void setGdscode(int gdscode) {
		this.gdscode = gdscode;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "ReplyDTO [replyId=" + replyId + ", gdscode=" + gdscode + ", mid=" + mid + ", regDate=" + regDate
				+ ", content=" + content + ", rating=" + rating + "]";
	}

}
