<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
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
						<h3>주문 내역</h3>
					</div>

				</div>




				<div class="admin_content_wrap">

					 <table class="order_table">
						<colgroup>
							<col width="20%">
							<col width="25%">
							<col width="25%">
							<col width="30%">
							
						</colgroup>
						<thead>
							<tr>
								<td class="th_column_1">주문일</td>
								<td class="th_column_2">주문코드</td>
								<td class="th_column_3">배송현황</td>
								<td class="th_column_4">운송장번호</td>
								<!-- <td class="th_column_4">주문 아이디</td>  -->
								
								
								
							</tr>
						</thead>
						<c:forEach items="${list}" var="list">
						
						<c:if test="${list.mid == sessionScope.loginMember }">
						
							<tr>
								<td><c:out value="${list.orderDate}"></c:out></td> 
								
								
								<c:if test="${list.orderState == '배송완료' }">
								<td style="cursor: pointer;" OnClick="location.href='orderlistView?orderId=${list.orderId}'"><c:out value="${list.orderId}"></c:out></td>
								</c:if>
								<c:if test="${list.orderState == '배송준비' or list.orderState == '주문취소' }">
								<td><c:out value="${list.orderId}"></c:out></td>
								</c:if>

							
								<td><c:out value="${list.orderState}"></c:out></td>
								<td><c:out value="${list.trackingNum}"></c:out></td> 
								<%-- <td><c:out value="${list.mid}"></c:out></td> --%>
								
								


								
							</tr>
							
							</c:if>
						
							
						
						</c:forEach>
						
					
					</table> 
					
					
					
					
					
					
					 
					

					<!-- <div class="search_wrap">
						<div class="search_input">
							<form action="msearch" method="get">
								<input type="hidden" name="searchtype" value="mid"> 
								<input type="text" name="keyword" placeholder="검색어입력"> 
								<input class="search_btn" type="submit" value="검색">
							</form>
						</div>



					</div> -->


				</div>


			</div>
			<%-- <div class="pageMaker_wrap">
				<c:choose>
					<c:when test="${paging.page<=1}">
			[이전]&nbsp;
		</c:when>
					<c:otherwise>
						<!-- 현재 페이지에서 1감소한 페이지 요청하는 링크 -->
						<a href="/orderlist?page=${paging.page-1}">[이전]</a>&nbsp;
		</c:otherwise>
				</c:choose>

				<c:forEach begin="${paging.startPage}" end="${paging.endPage}"
					var="i" step="1">
					<c:choose>
						<c:when test="${i eq paging.page}">
				${i}
			</c:when>
						<c:otherwise>
							<a href="/orderlist?page=${i}">${i}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<c:choose>
					<c:when test="${paging.page>=paging.maxPage}">
			[다음]
		</c:when>
					<c:otherwise>
						<a href="/orderlist?page=${paging.page+1}">[다음]</a>
					</c:otherwise>
				</c:choose>
			</div> --%>

		</div>


	</div>
	
	
	<%-- <h2>memberview.jsp</h2>
	아이디 : ${result.mid} <br>
	운송장번호 : ${result.trackingNum} <br>
	 --%>
	
	

	<%-- <table>
		<tr>
			<th>아이디</th>
			<th>운송장번호</th>
			<th>운송장번호</th>
			<th>운송장번호</th>
			<th>운송장번호</th>
			
		</tr>
		<c:forEach items="${list}" var="list">
						<c:if test="${list.mid == sessionScope.loginMember }">
							<tr>
								<td><c:out value="${list.orderDate}"></c:out></td> 
								<td><c:out value="${list.orderState}"></c:out></td>
								<td><c:out value="${list.trackingNum}"></c:out></td> 
								<td><c:out value="${list.mid}"></c:out></td>
								
								 <c:forEach items="${orderitemlist}" var="orderitemlist"> 
								
								<c:forEach items="${orderpageitemlist}" var="orderpageitemlist">
								
								<c:if test="${orderpageitemlist.gdscode eq orderitemlist.gdscode }">
								<td><c:out value="${orderitemlist.gdsprice}"></c:out></td>
								</c:if>
								
								</c:forEach>
					</c:forEach>  
					
					
								
								
							</tr>
							</c:if>
						</c:forEach>
		</table> --%>
	



	<!-- End Content -->




    

    <!-- Start Script -->
    <script src="resources/js/jquery-1.11.0.min.js"></script>
    <script src="resources/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/templatemo.js"></script>
    <script src="resources/js/custom.js"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="/resources/js/addressapi.js"></script>
     <script>
    function logout(){
    	location.href = 'logout';
    }
    
   
  

    </script>
    <!-- End Script -->
</body>

</html>