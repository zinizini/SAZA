<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title> SHOP </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="sazalogo-touch-icon" href="resources/img/sazalogo.png">
    <link rel="shortcut icon" type="image/x-icon" href="resources/img/sazalogo.png">

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/templatemo.css">
    <link rel="stylesheet" href="resources/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="resources/css/fontawesome.min.css">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> 
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
<style>
table {
	border-collapse: collapse;
	width: 100%;
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
	width: 100%;
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
	height: 20px;
	line-height: 13px;
	background-color: #fff;
	text-align: center;
	width: 40px;
	padding: 3px 6px 2px;
	margin-top: 3px;
}



.delete_btn {
	width: 50px;
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

.totalPoint_span {
	font-size: 17px;
	font-weight: bold;
}

.boundary_div {
	font-size: 0;
	border: 1px dotted #d1c7c7;
	margin: 5px 0 5px 0;;
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


</style>

</head>

<body>

    


    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a href="./"><img src="resources/img/saza.jpeg" border=0 height="190" width="320"></a>

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
                            <a class="nav-link" href="about.html">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="shop">Shop</a>
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
                    <a class="nav-icon position-relative text-decoration-none" href="cartview">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                    </a>
                    </c:if>
                    
                    <c:if test="${empty sessionScope.loginMember}">
                    <a class="nav-icon position-relative text-decoration-none" href="loginpage">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                    </a>
                    </c:if>
                  
                    <c:if test="${!empty sessionScope.loginMember}">
						<a class="nav-icon position-relative text-decoration-none" href="mypage">
						<i class="fa fa-fw fa-user text-dark mr-3"></i>
						<span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
						</a>
					</c:if>
					
					<c:if test="${empty sessionScope.loginMember}">
					<a class="nav-icon position-relative text-decoration-none" href="loginpage">
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
		
		
    <div class="content_subject"><span>장바구니</span></div>
    
				<!-- 장바구니 리스트 -->
				<div class="content_middle_section"></div>
				<!-- 장바구니 가격 합계 -->
				<!-- cartInfo -->
				<div class="content_totalCount_section">

					<!-- 체크박스 전체 여부 -->
					<div class="all_check_input_div">
						<input type="checkbox" class="all_check_input input_size_20"
							checked="checked"><span class="all_chcek_span">전체선택</span>
					</div>
					
					

					<table class="subject_table">
						<caption>표 제목 부분</caption>
						<tbody>
							<tr>
								<th class="td_width_1"></th>
								<th class="td_width_2"></th> 
								<th class="td_width_3">상품명</th>
								<th class="td_width_4">가격</th>
								<th class="td_width_5">수량</th>
								<th class="td_width_6">합계</th>
								<th class="td_width_7">삭제</th>
							</tr>
						</tbody>
					</table>
					<table class="cart_table">
						<caption>표 내용 부분</caption>
						<tbody>
							<c:forEach items="${cartList}" var="ci">
								<tr>
									<td class="td_width_1 cart_info_td">
									<input type="checkbox" class="individual_cart_checkbox input_size_20" checked="checked"> 
									<input type="hidden" class="individual_gdsPrice_input" value="${ci.gdsprice}">
									<input type="hidden" class="individual_salePrice_input" value="${ci.salePrice}"> 
									<input type="hidden" class="individual_gdsCount_input" value="${ci.cartqty}">
									<input type="hidden" class="individual_totalPrice_input" value="${ci.gdsprice * ci.cartqty}"> 
									<input type="hidden" class="individual_gdsId_input" value="${ci.gdscode}"></td>

									<td class="td_width_2">
										<div class="image_wrap"
											OnClick="location.href='productview?gdscode=${ci.gdscode}'"
											style="cursor: pointer;">
											<img class="card-img rounded-0 img-fluid"
												src="resources/upload/${ci.gdsimg}" height="200" width="200">
										</div>
									</td>
									<td class="td_width_3"
										OnClick="location.href='productview?gdscode=${ci.gdscode}'"
										style="cursor: pointer;">${ci.gdsname}</td>
									<td class="td_width_4 price_td"><fmt:formatNumber
											value="${ci.gdsprice}" pattern="#,### 원" /><br></td>
									<td class="td_width_4 table_text_align_center">
										<div class="table_text_align_center quantity_div">
											<input type="text" value="${ci.cartqty}"
												class="quantity_input">
											<button class="quantity_btn plus_btn">+</button>
											<button class="quantity_btn minus_btn">-</button>
										</div><a class="quantity_modify_btn" data-cartId="${ci.cartid}">변경</a>
									</td>
									<td class="td_width_4 table_text_align_center"><fmt:formatNumber
											value="${ci.gdsprice * ci.cartqty}" pattern="#,### 원" /></td>
									<td class="td_width_4 table_text_align_center">
										<button class="delete_btn" data-cartid="${ci.cartid}">삭제</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<table class="list_table">
					</table>
				</div>
				
				<!-- 가격 종합 -->
				<div class="content_total_section">
					<div class="total_wrap">
						<table>
							<tr>
								<td>
									<table>
										<tr>
											<td>총 상품 가격</td>
											<td><span class="totalPrice_span"></span> 원</td>
										</tr>
										<tr>
											<td>배송비</td>
											<td><span class="delivery_price"></span>원</td>
										</tr>
										<tr>
											<td>총 주문 상품수량</td>
											<td><span class="totalCount_span"></span>개</td>
										</tr>
									</table>
								</td>
								<td>
									<table>
										<tr>
											<td></td>
											<td></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
						<div class="boundary_div"> </div> 
						<table>
							<tr>
								<td>
									<table>
										<tbody>
											<tr>
												<td><strong>총 결제 예상 금액</strong></td>
												<td><span class="finalTotalPrice_span"></span> 원</td>
											</tr>
										</tbody>
									</table>
								</td>
								<td>
									<table>
										<tbody>
											<tr>


											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- 구매 버튼 영역 -->
				<div class="content_btn_section">
					<a class="order_btn">주문하기</a>
				</div>



			



		
		<!-- 수량 조정 form -->
		<form action="modifycount" method="post" class="quantity_update_form">
			<input type="hidden" name="cartid" class="update_cartId"> <input
				type="hidden" name="cartqty" class="update_bookCount"> <input
				type="hidden" name="mid" value="${member.mid}">
		</form>

		<!-- 삭제 form -->
		<form action="deletecart" method="post" class="quantity_delete_form">
			<input type="hidden" name="cartid" class="delete_cartId"> <input
				type="hidden" name="mid" value="${member.mid}">
		</form>

		<!-- 주문 form -->
		<form  action="/order/${sessionScope.loginMember}" method="get" class="order_form"></form>
	
	</div>
	
	</div>
	
	
	
	


	<!-- End Content -->
    
    

    


    <!-- Start Script -->
    <script src="resources/js/jquery-1.11.0.min.js"></script>
    <script src="resources/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/templatemo.js"></script>
    <script src="resources/js/custom.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script> 
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script> 
   
    
    
    <script>
    
    $(document).ready(function(){
    	
    	
    	
    	/* 종합 정보 섹션 정보 삽입 */
    	setTotalInfo();
    	
    });
    
    /* 체크여부에따른 종합 정보 변화 */
    $(".individual_cart_checkbox").on("change", function(){
    	/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
    	setTotalInfo($(".cart_info_td"));
    });
    
    /* 체크박스 전체 선택 */
    $(".all_check_input").on("click", function(){

    	/* 체크박스 체크/해제 */
    	if($(".all_check_input").prop("checked")){
    		$(".individual_cart_checkbox").attr("checked", true);
    	} else{
    		$(".individual_cart_checkbox").attr("checked", false);
    	}
    	
    	/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
    	setTotalInfo($(".cart_info_td"));	
    	
    	
    });
    
    
    /* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
    function setTotalInfo(){
    	
    	let totalPrice = 0;				// 총 가격
    	let totalCount = 0;				// 총 갯수
    	let totalKind = 0;				// 총 종류
    	let deliveryPrice = 0;			// 배송비
    	let finalTotalPrice = 0; 		// 최종 가격(총 가격 + 배송비)

    	
    	$(".cart_info_td").each(function(index, element){
    		
    		
    		if($(element).find(".individual_cart_checkbox").is(":checked") === true){	//체크여부
    		
    		// 총 가격
    		totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
    		// 총 갯수
    		totalCount += parseInt($(element).find(".individual_gdsCount_input").val());
    		// 총 종류
    		totalKind += 1;
    		}
    		

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
    	
    	/* ※ 세자리 컴마 Javscript Number 객체의 toLocaleString() */
    	
    	// 총 가격
    	$(".totalPrice_span").text(totalPrice.toLocaleString());
    	// 총 갯수
    	$(".totalCount_span").text(totalCount);
    	// 총 종류
    	$(".totalKind_span").text(totalKind);
    	// 배송비
    	$(".delivery_price").text(deliveryPrice);	
    	// 최종 가격(총 가격 + 배송비)
    	$(".finalTotalPrice_span").text(finalTotalPrice.toLocaleString());		
    }
    
    
    /* 수량버튼 */
    $(".plus_btn").on("click", function(){
    	let quantity = $(this).parent("div").find("input").val();
    	$(this).parent("div").find("input").val(++quantity);
    });
    $(".minus_btn").on("click", function(){
    	let quantity = $(this).parent("div").find("input").val();
    	if(quantity > 1){
    		$(this).parent("div").find("input").val(--quantity);		
    	}
    });
    
    
    /* 수량 수정 버튼 */
    $(".quantity_modify_btn").on("click", function(){
    	let cartid = $(this).data("cartid");
    	let cartqty = $(this).parent("td").find("input").val();
    	$(".update_cartId").val(cartid);
    	$(".update_bookCount").val(cartqty);
    	$(".quantity_update_form").submit();
    });
    
    /* 장바구니 삭제 버튼 */
    $(".delete_btn").on("click", function(e){
    	e.preventDefault();
    	const cartid = $(this).data("cartid");
    	$(".delete_cartId").val(cartid);
    	$(".quantity_delete_form").submit();
    });
    
    
    /* 주문 페이지 이동 */	
    $(".order_btn").on("click", function(){
    	
    	let form_contents ='';
    	let orderNumber = 0;
    	
    	$(".cart_info_td").each(function(index, element){
    		
    		if($(element).find(".individual_cart_checkbox").is(":checked") === true){	//체크여부
    			
    			let gdscode = $(element).find(".individual_gdsId_input").val();
    			let cartqty = $(element).find(".individual_gdsCount_input").val();
    			
    			let gdscode_input = "<input name='orders[" + orderNumber + "].gdscode' type='hidden' value='" + gdscode + "'>";
    			form_contents += gdscode_input;
    			
    			let cartqty_input = "<input name='orders[" + orderNumber + "].cartqty' type='hidden' value='" + cartqty + "'>";
    			form_contents += cartqty_input;
    			
    			orderNumber += 1;
    			
    		}
    	});	

    	$(".order_form").html(form_contents);
    	$(".order_form").submit();
    	
    });
    
    </script>
    <!-- End Script -->
     
</body>

</html>