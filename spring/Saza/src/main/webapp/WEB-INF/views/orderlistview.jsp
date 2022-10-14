<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

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
    *{
	margin: 0;
	padding:0;
}
a{
	text-decoration: none;
}
a:link {color: black;}
a:visited {color: black;}
a:active {color: black;}
a:hover {color: black;}
ul{
    list-style: none;
}
/* 화면 전체 렙 */
.wrapper{
	width: 100%;
}
/* content 랩 */
.wrap{
	width : 1080px;
	margin: auto;
}
/* 홈페이지 기능 네비 */ 
.top_gnb_area{
	width: 100%;
    height: 50px;
    background-color: #f0f0f1;
    position:relative;
}
.top_gnb_area .list{
	position: absolute;
    top: 0px;
    right: 0;
    
}
.top_gnb_area .list li{
	list-style: none;	
    float : left;
    padding: 13px 15px 0 10px;
    font-weight: 900;
    cursor: pointer;
}

/* 관리제 페이지 상단 현페이지 정보 */
.admin_top_wrap{
    height:110px;
    line-height: 110px;
    background-color: #5080bd;
    margin-bottom: 15px;
}
.admin_top_wrap>span{
    margin-left: 30px;
    display:inline-block;
    color: white;
    font-size: 50px;
    font-weight: bolder;
}
/* 관리자 wrap(네비+컨텐츠) */
.admin_wrap{
    
    
}

/* 관리자페이지 네비 영역 */
.admin_navi_wrap{
    width: 20%;
    height: 300px;
    float:left;
    height: 100%;
}
.admin_navi_wrap li{
    display: block;
    height: 80px;
    line-height: 80px;
    text-align: center;
}
.admin_navi_wrap li a{
    display: block;
    height: 100%;
    width: 95%;
    margin: 0 auto;
    cursor: pointer;
    font-size: 30px;
    font-weight: bolder;
}
 
.admin_list_06{
    background-color: #c8c8c8;
} 


/* 관리자페이지 컨텐츠 영역 */
.admin_content_wrap{
    width: 80%;
    float:left;
    min-height:700px;
}
.admin_content_subject{	/* 관리자 컨텐츠 제목 영역 */
    font-size: 40px;
    font-weight: bolder;
    padding-left: 15px;
    background-color: #6AAFE6;
    height: 80px;
    line-height: 80px;
    color: white;	
}
	/* 작가 목록 영역 */
.order_table_wrap{
	padding: 20px 35px;
	min-height: 570px;
}
.order_table{
	margin: auto;
    width: 900px;
    border: 1px solid #d3d8e1;
    text-align: center;
    border-collapse: collapse;
    margin-top: 10px;
}
.order_table td{
	padding: 10px 5px;
	border : 1px solid #e9ebf0;
}
.order_table thead{
	background-color: #f8f9fd;	
	font-weight: 600;
}

.table_empty{
	height: 50px;
    text-align: center;
    margin: 200px 0 215px 0px;
    font-size: 25px;
}

	/* 검색 영역 */
.search_wrap{
	margin-top:30px;
}
.search_input{
    position: relative;
    text-align:center;	
}
.search_btn{
	height: 32px;
    width: 80px;
    font-weight: 600;
    font-size: 18px;
    line-height: 20px;
    position: absolute;
    margin-left: 15px;
    background-color: #c3daf7;
}

	/* 페이지 버튼 인터페이스 */
.pageMaker_wrap{
	text-align: center;
    margin-bottom: 40px;
    margin-top: 40px;
}
.pageMaker{
    list-style: none;
    display: inline-block;
}	
.pageMaker_btn {
    float: left;
    width: 40px;
    height: 40px;
    line-height: 40px;
    margin-left: 20px;
}
.active{
	border : 2px solid black;
	font-weight:400;
}
.next, .prev {
    border: 1px solid #ccc;
    padding: 0 10px;
}
.next a, .prev a {
    color: #ccc;
}

button{
    all: unset;
    font-weight: bold;
    }
    .card-img rounded-0 img-fluid{
    width: 100%;
    height:100%;
    }
    
    .delete_btn{
    border: none;
    color: white;
    padding: 5px 15px;
    cursor: pointer;
    background-color: #f7564b;	
}
.delete_btn:hover{
	background-color : #da190b;
}

.delivery_btn{
    border: none;
    color: white;
    padding: 5px 15px;
    cursor: pointer;
    background-color: #178012;	
    margin-top:10px;
}
.delivery_btn:hover{
	background-color : #0e510b;
}
/* 리뷰쓰기 버튼 */
  .reply_button_wrap{
  	padding : 10px;
  	text-align: center;
  }
  .reply_button_wrap button{
	background-color: #fa825a;
    color: white;
    font-weight: bold;
    font-size: 15px;
    padding: 5px 12px;
    cursor: pointer;  

  }
  .reply_button_wrap button:hover{
  	background-color: #f74f16;
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
                            <a class="nav-link" href="shoppage">Shop</a>
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
		<div class="row">

			<div class="col-lg-3">
				<h1 class="h2 pb-4">마이 페이지</h1>
				<div class="list-unstyled templatemo-accordion">

					<a
						class="collapsed d-flex justify-content-between h3 text-decoration-none">
						내 정보 </a>
					<!-- <button onclick="update()">프로필 정보</button><br> -->
					<a class="text-decoration-none" href="javascript:update()">프로필
						정보</a><br> <a class="text-decoration-none" href="#">주소록</a><br>

					<div class="pb-3">
						<a
							class="collapsed d-flex justify-content-between h3 text-decoration-none"
							style="padding-top: 10px"> 쇼핑 정보 </a> <a
							class="text-decoration-none" href="#">구매 내역</a><br> <a
							class="text-decoration-none" href="#">판매 내역</a><br> <a
							class="text-decoration-none" href="#">관심 상품</a><br> <a
							class="text-decoration-none" href="/chatpage">챗 </a><br>

					</div>
					<c:if test="${sessionScope.loginMember eq 'admin'}">
						<a
							class="collapsed d-flex justify-content-between h3 text-decoration-none"
							style="padding-top: 10px"> 관리자 페이지 </a>
						<a class="text-decoration-none" href="memberlistpage">회원 관리</a>
						<br>
						<a class="text-decoration-none" href="#">주문 현황</a>
						<br>
					</c:if>
					<button onclick="logout()" style="padding-top: 10px">로그아웃</button>

				</div>


			</div>



			<div class="col-lg-9">
				<div class="row">
					<div class="col-md-6">
						<h3>주문 상세 내역</h3>
					</div>

				</div>




				<div class="admin_content_wrap">

					<table class="order_table">
						<colgroup>
							<col width="35%">
							<col width="25%">
							<col width="15%">
							<col width="10%">
							<col width="15%">


						</colgroup>
						<thead>
							<tr>

								<td class="th_column_1">상품이름</td>
								<td class="th_column_2">이미지</td>
								<td class="th_column_3">상품가격</td>
								<td class="th_column_4">상품수량</td>
								<td class="th_column_5">리뷰작성</td>
							
							</tr>
						</thead>
						<c:forEach var="ordi" items="${ordilist}">
							<tr>
								<td>${ordi.gdsname}</td>
								<td><img height="100" width="100"
									src="/resources/upload/${ordi.gdsimg}"></td>
								<td>${ordi.gdsprice}원</td>
								<td>${ordi.cartqty}</td>
								<td>

								 <div class="reply_button_wrap">
								<c:if test="${empty reply.replyId }">
										
										
									<button OnClick="location.href='productview?gdscode=${ordi.gdscode}'">
												리뷰쓰기</button><br>
											
												 
									</c:if>
									</div>
									

								<%-- 	<c:forEach var="reply" items="${replyList}">
									

										<c:if test="${ordi.gdscode eq reply.gdscode}">



											<button Onclick="window.open('getUpdateReply?replyId=${reply.replyId}&gdscode=${reply.gdscode}&mid=${reply.mid}')">
												수정 </button>
											
											<a class="delete_reply_btn" href="${reply.replyId}"> 삭제</a>

										</c:if>

									</c:forEach> --%></td>


							</tr>
						</c:forEach>


					</table>

				</div>


			</div>
			

		</div>


	</div>
	

	<!-- End Content -->




    

    <!-- Start Script -->
    <script src="resources/js/jquery-1.11.0.min.js"></script>
    <script src="resources/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/templatemo.js"></script>
    <script src="resources/js/custom.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    
    
<script>
function logout(){
	location.href = 'logout';
}
    
	
	$(document).ready(function(){
	
	
	/*리스트 테스트*/
	 const gdscode = '${product.gdscode}';	

	$.getJSON("/reply/list", {gdscode : gdscode}, function(obj){
		
		makeReplyContent(obj);
		
	});
	
	
	
	});	// ready 
	

	
	/* 바로구매 버튼 */
	$(".btn_buy").on("click", function(){
		let cartqty = $(".quantity_input").val();
		$(".order_form").find("input[name='orders[0].cartqty']").val(cartqty);
		$(".order_form").submit();
	});
	
	
	
	
	function refreshreplyList(){
		location.reload();
	} 
	
	/* 리뷰쓰기 */
	$(".reply_button_wrap").on("click", function(e){
		
		 e.preventDefault();		 
		
		const mid = '${sessionScope.loginMember}';
		const gdscode = '${product.gdscode}'; 
		
		
		
		$.ajax({
			data : {
				gdscode : gdscode,
				mid : mid
			},
			url : '/reply/check',
			type : 'POST',
			success : function(result){
				
				if(result === '1'){
					alert("이미 등록된 리뷰가 존재 합니다.")
				} else if(result === '0'){
					let popUrl = "/replyEnroll/" + mid + "?gdscode=" + gdscode;
					console.log(popUrl);
					let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes";
					
					window.open(popUrl,"리뷰 쓰기",popOption);							
				}

			}
		});
		
		
		
/* 
		let popUrl = "/replyEnroll/" + mid + "?gdscode=" + gdscode;
		

		
		console.log(popUrl);
		let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes";
		
		window.open(popUrl,"리뷰 쓰기",popOption); */
 
	});  
	
	
	/* 리뷰 수정 버튼 */
	 $(document).on('click', '.update_reply_btn', function(e){
			
			e.preventDefault();
			let replyId = $(this).attr("href");
			let popUrl = "/getUpdateReply?replyId=" + replyId + "&gdscode=" + '${product.gdscode}' + "&mid=" + '${sessionScope.loginMember}';	
			let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes"	
			
			window.open(popUrl,"리뷰 수정",popOption);			
		 
	 });
	
	 /* 리뷰 삭제 버튼 */
	 
	 $(document).on('click', '.delete_reply_btn', function(e){

		e.preventDefault();
		let replyId =  $(this).attr("href");
		
		$.ajax({
			data : {
				replyId : replyId,
				gdscode : '${product.gdscode}'
			},
			url : '/reply/deleteReply',
			type : 'POST',
			success : function(result){
				
				refreshreplyList();
				alert('삭제가 완료되엇습니다.');
			}
		});		
			
	 });
	
	 
	
		
	
	
    </script>
    <!-- End Script -->
</body>

</html>