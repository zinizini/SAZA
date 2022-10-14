<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en">

<head>
    <title>SAZA | 익명거래 플랫폼</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="sazalogo-touch-icon" href="resources/img/sazalogo.png">
    <link rel="shortcut icon" type="image/x-icon" href="resources/img/sazalogo.png">

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/templatemo.css">
    <link rel="stylesheet" href="resources/css/custom.css">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="resources/css/fontawesome.min.css">
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
                            <a class="nav-link" href="testpage">About</a>
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
            <div class="searchtype_style" style="display:none">
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



    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" style="background-color: #ff7f27">
            <div class="carousel-item active" style="background-color: #ff7f27">
                <div class="container" style="background-color: #ff7f27">
                    <div class="row p-5" style="background-color: #ff7f27">
                        <div class="col-lg-6 mb-0 d-flex align-items-center" style="background-color: #ff7f27;">
                            <div class="text-align-center align-self-center" style="background-color: #ff7f27;">
                                <div>
                                    <a><img src="resources/img/box2.png" height="400" width="400" 
                                    style="margin-left:420px; margin-light:400px; background-color: #ff7f27;"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item" style="background-color: #10AE10;">
                <div class="container" style="background-color: #10AE10;">
                    <div class="row p-5" style="background-color: #10AE10;">
                        <div style="background-color: #10AE10;" class="col-lg-6 mb-0 d-flex align-items-center">
                            <div style="background-color: #10AE10;">
                                 <a><img src="resources/img/mainsaza3.jpg" height="400" width="800" 
                                 style="margin-left:200px; margin-right:400px; background-color: #10AE10;"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item" style="background-color: #F9E8F5;">
                <div class="container" style="background-color: #F9E8F5;">
                    <div class="row p-5" style="background-color: #F9E8F5;">
                        <div style="background-color: #F9E8F5;" class="col-lg-6 mb-0 d-flex align-items-center">
                            <div style="background-color: #F9E8F5;">
                                 <a><img src="resources/img/mainsaza4.jpg" height="400" width="700" 
                                 style="margin-left:270px; margin-right:350px; background-color: #F9E8F5;"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->


    <!-- Start Categories of The Month -->
    <section class="container py-5" style="margin-bottom:150px;">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">When in doubt, look at SAZA</h1>
                <p>
                    못 보고 지나치기엔 아쉬운 아이템
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="resources/img/Desktable.jpg" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">Desk table</h5>
                <p class="text-center"><a class="btn btn-success" href="/search?searchtype=cateCode&keyword=102002">Go Shop</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="resources/img/Floorlamp.png" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">Floor lamp</h2>
                <p class="text-center"><a class="btn btn-success" href="/search?searchtype=cateCode&keyword=201000">Go Shop</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="resources/img/rug.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">Rug/Carpet</h2>
                <p class="text-center"><a class="btn btn-success" href="/search?searchtype=cateCode&keyword=302002">Go Shop</a></p>
            </div>
        </div>
    </section>
   
    
    <!-- End Featured Product -->


   

    <!-- Start Script -->
    <script src="resources/js/jquery-1.11.0.min.js"></script>
    <script src="resources/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/templatemo.js"></script>
    <script src="resources/js/custom.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script>
   
    function myupdate(){
    	location.href = "myupdate";
    }
    
    </script>
    <!-- End Script -->
   
</body>

</html>