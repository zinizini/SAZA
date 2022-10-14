package com.hhj.SazaShopping.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ProductDTO {
	
	/* 상품 코드 */
	private int gdscode;
	
	/* 상품 이름 */
	private String gdsname;
	
	/* 카테고리 코드 */
	private String cateCode;
	
	/* 카테고리 이름 */
	private String cateName;
	
	/* 상품 가격 */
	private int gdsprice;
	
	/* 상품 소개 */
	private String gdsdetal;
	
	/* 상품 이미지 */
	private MultipartFile gdsfile;
	private String gdsimg;
	
	/* 상품 재고 */
	private int gdsStock;

}
