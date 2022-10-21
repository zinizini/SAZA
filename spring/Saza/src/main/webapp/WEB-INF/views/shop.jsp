<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>

 <style>
.searchtype_style{
 display: none;

}

    </style>


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
						<a class="nav-icon position-relative text-decoration-none" href="javascript:myupdate()">
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
            <form action="search" method="get" class="modal-content modal-body border-0 p-0">
            <div class="searchtype_style">
            <select name="searchtype">
			<option value="gdsname">제목</option>
			</select>
			</div>
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="keyword" placeholder="검색어를 입력하세요">
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
				<h1 class="h2 pb-4" style="font-weight: bolder">카테고리</h1>
				<ul class="list-unstyled templatemo-accordion">
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none">
							<b style="font-size: 27px;">가구</b>
					</a>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#">체어 <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
					</a>

						<ul class="collapse show list-unstyled pl-3">
							<li><a href="/search?searchtype=cateCode&keyword=101001"
								class="text-decoration-none">암체어</a></li>
							<li><a href="/search?searchtype=cateCode&keyword=101002"
								class="text-decoration-none">오피스체어</a></li>
							<li><a href="/search?searchtype=cateCode&keyword=101003"
								class="text-decoration-none">소파</a></li>
						</ul></li>


					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#">테이블 <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
					</a>
						<ul id="collapseTwo" class="collapse list-unstyled pl-3">
							<li><a href="/search?searchtype=cateCode&keyword=102001"
								class="text-decoration-none">사이드테이블</a></li>
							<li><a href="/search?searchtype=cateCode&keyword=102002"
								class="text-decoration-none">데스크테이블</a></li>
						</ul></li>

					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#">수납장 <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
					</a>
						<ul id="collapseThree" class="collapse list-unstyled pl-3">
							<li><a href="/search?searchtype=cateCode&keyword=103001"
								class="text-decoration-none">선반/장식장</a></li>
							<li><a href="/search?searchtype=cateCode&keyword=103002"
								class="text-decoration-none">행거/옷장</a></li>
						</ul></li>

					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none">
							<b style="font-size: 27px;">조명</b>
					</a>
					<li><a href="/search?searchtype=cateCode&keyword=201000"
						class="text-decoration-none">플로어램프</a></li>
					<li><a href="/search?searchtype=cateCode&keyword=202000"
						class="text-decoration-none">테이블램프</a></li>



					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none">
							<b style="font-size: 27px; margin-top: 25px;">소품</b>
					</a>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#">아트 <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
					</a>
						<ul class="collapse show list-unstyled pl-3">
							<li><a href="/search?searchtype=cateCode&keyword=301001"
								class="text-decoration-none">그림</a></li>
							<li><a href="/search?searchtype=cateCode&keyword=301002"
								class="text-decoration-none">오브제</a></li>

						</ul></li>


					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#">패브릭 <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
					</a>
						<ul id="collapseTwo" class="collapse list-unstyled pl-3">
							<li><a href="/search?searchtype=cateCode&keyword=302001"
								class="text-decoration-none">쿠션/방석</a></li>
							<li><a href="/search?searchtype=cateCode&keyword=302002"
								class="text-decoration-none">러그/카페트</a></li>
						</ul></li>


				</ul>




				<c:if test="${sessionScope.loginMember eq 'admin'}">
					<a class="justify-content-between h3 text-decoration-none"
						style="color: green;"><b>관리자용</b></a>
					<li><a class="text-decoration-none" href="register"
						style="color: black"> 상품 등록 </a></li>
				</c:if>
			</div>

			<div class="col-lg-9">
            <h3 style="text-align:center; margin-bottom:45px; margin-top:5px;">SHOP</h3>
                
                
                
                    
		<div class="row"><!-- 밖으로해야 네모칸 줄로 말고 가로로 됌  -->
		<c:forEach var="product" items="${productList}">
		
		  
                <div class="col-md-4"> <!--좁게 -->  
                <div class=""  OnClick="location.href='productview?gdscode=${product.gdscode}'" style="cursor:pointer;"><!-- 네모 -->
                <div class=""> <!-- 사진이랑 내용 경계선  -->
			
			<img class="card-img rounded-0 img-fluid" src="resources/upload/${product.gdsimg}"height="200" width="200"> <br>
			</div>
			
			<div class="card-body">
			<ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
			<li >
			
				<span style="font-size:16px">${product.gdsname}</span><br>
				<div style="margin-top:15px">
				<span style="font-weight:bold"> <fmt:formatNumber value="${product.gdsprice}" pattern="#,###.##"/>원</span>
				</div>
		
			</li>
			
			</ul>
			 
			</div>
			
	</div>
	</div>
			

		</c:forEach>
		
		
				

	</div>
	
	<div style=" text-align: center; margin-top:80px; margin-bottom:100px;">
				<c:choose>
					<c:when test="${shop.page<=1}">
			[이전]&nbsp;
		</c:when>
					<c:otherwise>
						<!-- 현재 페이지에서 1감소한 페이지 요청하는 링크 -->
						<a href="shop?page=${shop.page-1}">[이전]</a>&nbsp;
		</c:otherwise>
				</c:choose>

				<c:forEach begin="${shop.startPage}" end="${shop.endPage}" var="i"
					step="1">
					<c:choose>
						<c:when test="${i eq shop.page}">
				${i}
			</c:when>
						<c:otherwise>
							<a href="shop?page=${i}">${i}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<c:choose>
					<c:when test="${shop.page>=shop.maxPage}">
			[다음]
		</c:when>
					<c:otherwise>
						<a href="shop?page=${shop.page+1}">[다음]</a>
					</c:otherwise>
				</c:choose>
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
    
    
    
    <!-- End Script -->
    
    <script>
      const modal = document.querySelector('.modal');
      const btnOpenPopup = document.querySelector('.btn-open-popup');

      btnOpenPopup.addEventListener('click', () => { 
    	  modal.style.display = 'block';
    	
        body.style.overflow = 'hidden';

        body.style.overflow = 'auto';
       
      });
     
      
      function update(){
      	location.href = "memberupdate";
      }
      
      function myupdate(){
      	location.href = "myupdate";
      }
      
      
    </script>


   
</body>

</html>