package com.hhj.SazaShopping.dto;

import lombok.Data;

@Data
public class PageDTO {
	private int page;
	private int maxPage;
	private int startPage;
	private int endPage;
	private int startRow;
	private int endRow;
	
	/* 상품 번호(댓글 기능에서 사용) */
	private int gdscode;
}
