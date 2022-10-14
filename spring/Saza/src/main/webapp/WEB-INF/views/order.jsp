<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">

<title> SHOP </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="sazalogo-touch-icon" href="/resources/img/sazalogo.png">
    <link rel="shortcut icon" type="image/x-icon" href="/resources/img/sazalogo.png">

    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/templatemo.css">
    <link rel="stylesheet" href="/resources/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="/resources/css/fontawesome.min.css">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> 
    
   
  
 
    
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
<style>
.memberInfo_table{
    width: 100%;
    border-spacing: 0;
    border-top: 2px solid #363636;
    border-bottom: 1px solid #b6b6b6; 
 }
 .member_info_div td{
 	padding : 12px;
 	text-align: left;
 }
 
  /* 사용자 정보  */
 .memberInfo_table{
    width: 100%;
    border-spacing: 0;
    border-top: 2px solid #363636;
    border-bottom: 1px solid #b6b6b6; 
 }
 .member_info_div td{
 	padding : 12px;
 	text-align: left;
 }
 /* 사용자 주소 정보 */
 .addressInfo_div{
 	margin-top: 30px;
 }
 .addressInfo_input_div_wrap{
 	border-bottom: 1px solid #f3f3f3;
 	height: 240px;
 }
.address_btn {
    background-color: #555;
    color: white;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    font-size: 17px;
    width: 50%;
}

.address_btn:hover{
	background-color: #777;
}
.addressInfo_button_div::after{
	content:'';
	display:block;
	clear:both;
}
		.addressInfo_input_div{
			padding:12px;
			text-align: left;
			display: none;
			line-height: 40px;
			
		}
		.addressInfo_input_div th{
			border-color: transparent;
		    background-color: transparent;		
		}
		.addressInfo_input_div th{
			padding : 12px 5px 12px 20px;
			vertical-align: top;
		}
		.addressInfo_input_div td{
			padding : 8px 12px;
		}		
		.addressInfo_input_div_2 input{
			padding: 6px 5px;
		}
.address_search_btn{
    vertical-align: middle;
    display: inline-block;
    border: 1px solid #aaa;
    width: 150px;
    text-align: center;
    height: 35px;
    line-height: 30px;
    color: #555;
    cursor: pointer;
}
.orderGoods_div{
	margin-top:30px;
}
.goods_kind_div{
	font-size: 25px;
    line-height: 35px;
    font-weight: bold;
}
.goods_subject_table{
	font-size: 14px;
    line-height: 20px;
    width: 85%;
    text-align: center; 
}
.goods_subject_table th{
	text-align: center;
    color: #333;
    border-bottom: 1px solid #e7e7e7;
    border-top: 2px solid #3084d9;
    background: #f4f9fd;
    padding: 2px 0;	 
}
.goods_table{
	font-size: 14px;
	line-height: 20px;
	border-bottom: 1px solid #e7e7e7;
	width: 85%;
}

.goods_table tr{
height: 110px;
}
.goods_table_price_td{
	text-align: center;
}
.goods_table_gdsname_td{
text-align: center;

}
/* 주문 종합 정보 */
.total_info_div{
	position:absolute;
	top: 690px;
	right : 20px;
	width : 300px;
	border : 1px solid #333;
	border-top-width:2px;	
	
	
}
.total_info_price_div{
	width: 90%;
    margin: auto;
	position: relative;
}
.total_info_div ul{
	list-style: none;
}
.total_info_div li{
	text-align: right;
	margin-top:10px;
}
.price_span_label{
	float: left;
}
.price_total_li{
	border-top: 1px solid #ddd;
	padding-top: 20px;
}
.strong_red{
	color: red;
}
.total_price_red{
	font-size: 25px;
}
.total_price_label{
	margin-top: 5px;
}
.point_li{
    padding: 15px;
    border-top: 1px solid #ddd;
    margin: 10px -15px 0;
}
.total_info_btn_div{
	border-top: 1px solid #ddd;
    text-align: center;
    padding: 15px 20px;
}
.order_btn{
    display: inline-block;
    font-size: 21px;
    line-height: 50px;
    width: 200px;
    height: 50px;
    background-color: #0b559e;
    color: #fff;
    font-weight: bold;
    cursor: pointer;
}

table {
	border-collapse: collapse;
	width: 100%;
	margin-bottom: 30px;
}

.table_text_align_center {
	text-align: center;
}

caption {
	visibility: hidden;
	width: 0;
	height: 0;
	font-size: 0;
	line-height: 0;
	overflow: hidden;
}

.content_subject {
	height: 90px;
	line-height: 90px;
	margin-bottom: 10px;
}

.content_subject span {
	padding-left: 30 px;
	display: inline-block;
	color: black;
	font-size: 40px;
	font-weight: bolder;
}

.content_totalCount_section {
	margin-bottom: 12px;
}

.content_btn_section {
	margin-top: 20px;
	text-align: right;
}

.content_btn_section a {
	color: #fefeff;
	background-color: #365fdd;
	min-width: 125px;
	padding: 17px 25px;
	display: inline-block;
	height: 39px;
	font-size: 23px;
	font-weight: bold;
	text-align: center;
	margin-right: 14px;
	line-height: 39px;
}

.subject_table {
	font-size: 14px;
	line-height: 20px;
	width: 80%;
	text-align: center;
}

th {
	text-align: center;
	color: #333;
	border-bottom: 1px solid #e7e7e7;
	border-top: 1px solid #3084d9;
	background: #f4f9fd;
	padding: 2px 0;
}

.td_width_1 {
	width: 5%;
}

.td_width_2 {
	width: 10%;
}

.td_width_3 {
	width: 25%;
}

.td_width_4 {
	width: 15%;
}

.cart_table {
	font-size: 14px;
	line-height: 20px;
}

.cart_table tr {
	height: 110px;
}

.price_td {
	padding-left: 5px;
	text-align: center;
}

.red_color {
	color: red;
}

.green_color {
	color: green;
}

.cart_table td {
	border-bottom: 1px solid #e7e7e7;
}

.quantity_div {
	position: relative;
	width: 42px;
	height: 25px;
	text-align: left;
	margin: 5px auto;
}

.quantity_input {
	position: absolute;
	width: 27px;
	height: 23px;
	text-align: center;
	border: 1px solid #c6c6c6;
	border-right: 0px;
	line-height: 19px;
	font-size: 12px;
	color: #4c4848;
	left: 0;
}

.quantity_btn {
	position: absolute;
	border: 1px solid #aaa;
	color: #3a60df;
	width: 14px;
	height: 13px;
	padding: 0px;
	background-color: #fff;
	font-weight: bold;
	font-size: 7px;
	line-height: 6px;
	vertical-align: middle;
}

.plus_btn {
	top: 0;
	right: 0
}

.minus_btn {
	bottom: 0;
	right: 0
}

.quantity_modify_btn {
	border: 1px solid #d0d0d0;
	height: 13px;
	line-height: 13px;
	background-color: #fff;
	text-align: center;
	width: 28px;
	display: inline-block;
	padding: 3px 6px 2px;
	margin-top: 3px;
}

.table_text_align_center {
	text-align: center;
}

.delete_btn {
	width: 40px;
}

.content_total_section {
	background-color: rgb(227, 237, 247);
}

.total_wrap {
	width: 80%;
	margin: auto;
	padding: 10px 0 10px 0;
}

.total_wrap td {
	width: 50%;
}

.finalTotalPrice_span {
	color: #854A72;
	font-size: 17px;
	font-weight: bold;
}


.boundary_div {
	font-size: 0;
	border: 1px dotted #d1c7c7;
	margin: 5px 0 5px 0;
}

.input_size_20 {
	width: 20px;
	height: 20px;
}

.all_check_input {
	margin: 18px 0 18px 18px;
}

.all_chcek_span {
	padding-left: 8px;
	font-size: 20px;
	font-weight: bold;
}
/* 이미지 */
.image_wrap{
	width: 100%;
	height: 100%;
}
.image_wrap img{
    max-width: 85%;
    height: auto;
    display: block;		
}


</style>


  

</head>

<body>

    <!-- Start Top Nav -->
    
    <!-- Close Top Nav -->


    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a href="/"><img src="/resources/img/saza.jpeg" border=0 height="190" width="320"></a>
               

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="testpage">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/shop">Shop</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">Contact</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                   <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                   <c:if test="${!empty sessionScope.loginMember}">
                    <a class="nav-icon position-relative text-decoration-none" href="/cartview">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                    </a>
              
                    
                    </c:if>
                    
                    <c:if test="${empty sessionScope.loginMember}">
                    <a class="nav-icon position-relative text-decoration-none" href="/loginpage">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                    </a>
                    </c:if>
                  
                    <c:if test="${!empty sessionScope.loginMember}">
						<a class="nav-icon position-relative text-decoration-none" href="/mypage">
						<i class="fa fa-fw fa-user text-dark mr-3"></i>
						<span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
						</a>
					</c:if>
					
					<c:if test="${empty sessionScope.loginMember}">
					<a class="nav-icon position-relative text-decoration-none" href="/loginpage">
						<i class="fa fa-fw fa-user text-dark mr-3"></i>
						<span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
						</a>
					</c:if> 
                        
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->

    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>



    <!-- Start Content -->
	<div class="container py-5">
		
		<div class="content_area">
		
		
    
    
    <div class="content_main">
				<!-- 회원 정보 -->
				<div class="member_info_div">
					<table class="table_text_align_center memberInfo_table">
						<tbody>
							<tr>
								<th style="width: 25%;">주문자</th>
								<td style="width: *">${member.mid} | ${member.memail}</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- 배송지 정보 -->
				<div class="addressInfo_div">
					<div class="addressInfo_button_div">
						<button class="address_btn address_btn_1" onclick="showAdress('1')" style="background-color: #3c3838;">사용자 정보 주소록</button>
						<button class="address_btn address_btn_2" onclick="showAdress('2')">직접 입력</button>
					</div>
					<div class="addressInfo_input_div_wrap">
						<div class="addressInfo_input_div addressInfo_input_div_1" style="display: block;">
						<table>
			<colgroup>
				<col width="25%">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<th>이름</th>
					<td>
						${member.mname}
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>
						${member.memberaddr1} ${member.memberaddr2}<br>${member.memberaddr3}
						<input class="selectAddress" value="T" type="hidden">
						<input class="addressee_input" value="${member.mname}" type="hidden">
						<input class="address1_input" type="hidden" value="${member.memberaddr1}">
						<input class="address2_input" type="hidden" value="${member.memberaddr2}">
						<input class="address3_input" type="hidden" value="${member.memberaddr3}">										
					</td>
				</tr>
			</tbody>
		</table>
						</div>
						<div class="addressInfo_input_div addressInfo_input_div_2">
						<table>
			<colgroup>
				<col width="25%">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<th>이름</th>
					<td>
						<input class="addressee_input" style="display: inline; width:300px; height:35px;">
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>
					<input class="selectAddress" value="F" type="hidden">
						
					<input class="form-control" style="width: 40%; display: inline; width:300px;" placeholder="우편번호" 
                     name="memberaddr1" id="addr1" type="text"  readonly>
                    <button type="button" class="address_search_btn" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button>                         
                               
                                
                    <input class="form-control" style="top: 5px; width:600px; margin-top:10px;" placeholder="도로명 주소" 
                     name="memberaddr2" id="addr2" type="text"  readonly>
                               
                               
                    <input class="form-control" placeholder="상세주소" name="memberaddr3" id="addr3" type="text" 
                     style="top: 5px; width:600px; margin-top:10px;">
					</td>
					
				</tr>
			</tbody>
		</table>
						</div>
					</div>
				</div>
				<!-- 상품 정보 -->
				<div class="orderGoods_div">
		<!-- 상품 종류 -->
		<div class="goods_kind_div">
			주문상품 <span class="goods_kind_div_kind"></span>종 <span class="goods_kind_div_count"></span>개
		</div>
		<!-- 상품 테이블 -->
		<table class="goods_subject_table">
			<colgroup>
				<col width="15%">
				<col width="45%">
				<col width="40%">
			</colgroup>
			<tbody>
				<tr>
					<th></th>
					<th>상품명</th>
					<th>판매가</th>
				</tr>
			</tbody>
		</table>
		<table class="goods_table">
			<colgroup>
				<col width="15%">
				<col width="45%">
				<col width="40%">
			</colgroup>					
			<tbody>
				<c:forEach items="${orderList}" var="ol">
					<tr>
						<td>
						
							<div class="image_wrap">
							<img src="/resources/upload/${ol.gdsimg}">
							</div>
						</td>
						<td class="goods_table_gdsname_td">${ol.gdsname}</td>
						<td class="goods_table_price_td">
							<fmt:formatNumber value="${ol.gdsprice}" pattern="#,### 원" /> | 수량 ${ol.cartqty}개
							<br><fmt:formatNumber value="${ol.totalPrice}" pattern="#,### 원" />
							<input type="hidden" class="individual_gdsprice_input" value="${ol.gdsprice}">
							<input type="hidden" class="individual_salePrice_input" value="${ol.salePrice}">
							<input type="hidden" class="individual_cartqty_input" value="${ol.cartqty}">
							<input type="hidden" class="individual_totalPrice_input" value="${ol.salePrice * ol.cartqty}">
							<input type="hidden" class="individual_gdscode_input" value="${ol.gdscode}">
							<input type="hidden" class="individual_gdsname_input" value="${ol.gdsname}">
							<input type="hidden" class="individual_gdsimg_input" value="${ol.gdsimg}">
						</td>
					</tr>							
				</c:forEach>

			</tbody>
		</table>
	</div>
				<!-- 주문 종합 정보 -->
				<div class="total_info_div">
		<!-- 가격 종합 정보 -->
		<div class="total_info_price_div">
			<ul>
				<li>
					<span class="price_span_label">상품 금액</span>
					<span class="totalPrice_span"></span>원
				</li>
				<li>
					<span class="price_span_label">배송비</span>
					<span class="delivery_price_span"></span>원
				</li>
																		<li>
					
				</li>
				<li class="price_total_li">
					<strong class="price_span_label total_price_label">최종 결제 금액</strong>
					<strong class="strong_red">
						<span class="total_price_red finalTotalPrice_span">
							
						</span>원
					</strong>
				</li>
				
			</ul>
		</div>
		<!-- 버튼 영역 -->
		<div class="total_info_btn_div">
			<a class="order_btn" style="color: white;">결제하기</a>
		</div>
	</div>
			</div>
    
    
    
    
    
	</div>
	</div>
	
	<!-- 주문 요청 form -->
		<form class="order_form" action="/order" method="post" >
			<!-- 주문자 회원번호 -->
			<input name="mid" value="${member.mid}" type="hidden">
			<!-- 주소록 & 받는이-->
			<input name="addressee" type="hidden">
			<input name="memberaddr1" type="hidden">
			<input name="memberaddr2" type="hidden">
			<input name="memberaddr3" type="hidden">
			
			<input name="gdsname" type="hidden">
			<input name="gdsimg" type="hidden">
			<!-- 상품 정보 -->
		</form>
	
	


	<!-- End Content -->
    
    

    


    

    <!-- Start Script -->
    <script src="/resources/js/jquery-1.11.0.min.js"></script>
    <script src="/resources/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="/resources/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/templatemo.js"></script>
    <script src="/resources/js/custom.js"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>

   


    
  

    
    
    <script>
    $(document).ready(function(){
    	
    	/* 주문 조합정보란 최신화 */
    	setTotalInfo();
    	
    });
    
    
    
    /* 주소입력란 버튼 동작(숨김, 등장) */
    function showAdress(className){
    	/* 컨텐츠 동작 */
    		/* 모두 숨기기 */
    		$(".addressInfo_input_div").css('display', 'none');
    		/* 컨텐츠 보이기 */
    		$(".addressInfo_input_div_" + className).css('display', 'block');		
    	
    	/* 버튼 색상 변경 */
    		/* 모든 색상 동일 */
    			$(".address_btn").css('backgroundColor', '#555');
    		/* 지정 색상 변경 */
    			$(".address_btn_"+className).css('backgroundColor', '#3c3838');	
    		
    	/* selectAddress T/F */
    	    /* 모든 selectAddress F만들기 */
    			$(".addressInfo_input_div").each(function(i, obj){
    					$(obj).find(".selectAddress").val("F");
    				});
    	/* 선택한 selectAdress T만들기 */
    			$(".addressInfo_input_div_" + className).find(".selectAddress").val("T");
    }
    
    
    /* 다음 주소 연동 */
    function execPostCode() {
        new daum.Postcode({
            oncomplete: function(data) {
               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

               // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
               var extraRoadAddr = ''; // 도로명 조합형 주소 변수

               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
               if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                   extraRoadAddr += data.bname;
               }
               // 건물명이 있고, 공동주택일 경우 추가한다.
               if(data.buildingName !== '' && data.apartment === 'Y'){
                  extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
               }
               // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
               if(extraRoadAddr !== ''){
                   extraRoadAddr = ' (' + extraRoadAddr + ')';
               }
               // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
               if(fullRoadAddr !== ''){
                   fullRoadAddr += extraRoadAddr;
               }

               // 우편번호와 주소 정보를 해당 필드에 넣는다.
               $("[name=memberaddr1]").val(data.zonecode);
               $("[name=memberaddr2]").val(fullRoadAddr);
         
               
               /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
               document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
               document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
           }
        }).open();
    }
    
    const autoHyphen = (target) => {
    	 target.value = target.value
    	   .replace(/[^0-9]/g, '')
    	  .replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
    	}
    
    function wtpage(){
    	location.href = "withdrawalpage";
    }
    
    
    /* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
    function setTotalInfo(){

    	let totalPrice = 0;				// 총 가격
    	let totalCount = 0;				// 총 갯수
    	let totalKind = 0;				// 총 종류
    	let deliveryPrice = 0;			// 배송비
    	let finalTotalPrice = 0; 		// 최종 가격(총 가격 + 배송비)	
    	
    	$(".goods_table_price_td").each(function(index, element){
    		// 총 가격
    		totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
    		// 총 갯수
    		totalCount += parseInt($(element).find(".individual_cartqty_input").val());
    		// 총 종류
    		totalKind += 1;
    	});	

    	/* 배송비 결정 */
    	if(totalPrice >= 500000){
    		deliveryPrice = 0;
    	} else if(totalPrice == 0){
    		deliveryPrice = 0;
    	} else {
    		deliveryPrice = 3000;	
    	}
    	
    	finalTotalPrice = totalPrice + deliveryPrice;	
    	
    	
    	/* 값 삽입 */
    	// 총 가격
    	$(".totalPrice_span").text(totalPrice.toLocaleString());
    	// 총 갯수
    	$(".goods_kind_div_count").text(totalCount);
    	// 총 종류
    	$(".goods_kind_div_kind").text(totalKind);
    	// 배송비
    	$(".delivery_price_span").text(deliveryPrice.toLocaleString());	
    	// 최종 가격(총 가격 + 배송비)
    	$(".finalTotalPrice_span").text(totalPrice.toLocaleString());		
    	
    }
    
    
    /* 주문 요청 */
    $(".order_btn").on("click", function(){

    	/* 주소 정보 & 받는이*/
    	$(".addressInfo_input_div").each(function(i, obj){
    		if($(obj).find(".selectAddress").val() === 'T'){
    			$("input[name='addressee']").val($(obj).find(".addressee_input").val());
    			$("input[name='memberaddr1']").val($(obj).find(".address1_input").val());
    			$("input[name='memberaddr2']").val($(obj).find(".address2_input").val());
    			$("input[name='memberaddr3']").val($(obj).find(".address3_input").val());
    		}
    	});	
    	
    	
    	/* 상품정보 */
    	let form_contents = ''; 
    	$(".goods_table_price_td").each(function(index, element){
    		let gdscode = $(element).find(".individual_gdscode_input").val();
    		let cartqty = $(element).find(".individual_cartqty_input").val();
    		let gdscode_input = "<input name='orders[" + index + "].gdscode' type='hidden' value='" + gdscode + "'>";
    		form_contents += gdscode_input;
    		let cartqty_input = "<input name='orders[" + index + "].cartqty' type='hidden' value='" + cartqty + "'>";
    		form_contents += cartqty_input;
    		let gdsname = $(element).find(".individual_gdsname_input").val();
    		let gdsimg = $(element).find(".individual_gdsimg_input").val();
    		
    	});	
    	$(".order_form").append(form_contents);	
    	
    	/* 서버 전송 */
    	$(".order_form").submit();	
    	

		
		
		
		
		
    	
    });
    
    
    
    
    
    
    
    
    
 
    
    
    </script>
    <!-- End Script -->
     
</body>

</html>