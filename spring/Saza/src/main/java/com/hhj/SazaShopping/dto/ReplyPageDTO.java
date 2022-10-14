package com.hhj.SazaShopping.dto;

import java.util.List;

import lombok.Data;

@Data
public class ReplyPageDTO {
	
	List<ReplyDTO> list;
	
	PageDTO pageInfo;

}
