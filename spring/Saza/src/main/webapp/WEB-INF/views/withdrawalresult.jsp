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
    button{
    all: unset;
    font-weight: bold;
    margin-top:20px;
    }
    input {
    font-size:17px;
    margin-top:20px;
  
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

            <div class="col-lg-3"style="margin-bottom:200px;">
               <h1 class="h2 pb-4">마이 페이지</h1>
                <div class="list-unstyled templatemo-accordion"> 
                    
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="mypage">
                        내 정보 
                        </a>
                        <!-- <button onclick="update()">프로필 정보</button><br> -->
                        <a class="text-decoration-none" href="javascript:update()">프로필 정보</a><br>
                        <a class="text-decoration-none" href="#">주소록</a><br>
                        
                        <div class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" style="padding-top:10px">
                            쇼핑 정보 
                        </a>
                        
                            <a class="text-decoration-none" href="#">구매 내역</a><br>
                            <a class="text-decoration-none" href="#">판매 내역</a><br>
                            <a class="text-decoration-none" href="#">관심 상품</a><br>
                            <a class="text-decoration-none" href="/chatpage">챗 </a><br>
                          
                   </div>
                   <c:if test="${sessionScope.loginMember eq 'admin'}">
                   <a class="collapsed d-flex justify-content-between h3 text-decoration-none" style="padding-top:10px">
                            관리자 페이지 </a>
                            <a class="text-decoration-none" href="memberlistpage">회원 관리</a><br>
                            <a class="text-decoration-none" href="#">주문 현황</a><br>
                            </c:if>
                   <button onclick="logout()" style="padding-top:10px">로그아웃</button>
                   
                </div>
                
				
			</div>
			

            <div class="col-lg-9">
               <!--  <div class="row"> -->
                    <!-- <div class="col-md-6"> --> 
                        <ul class="list-inline shop-top-menu pb-3 pt-1">
                            <li class="list-inline-item">
                                <h3 >회원 탈퇴</h3>
                                <span style="font-weight: bold;">회원탈퇴에 앞서 아래 내용을 반드시 확인해 주세요.</span>
                            </li>
                            
                        </ul>
                  <!--   </div> -->
              
                <!-- </div> -->
            <div class="row"> 
                    <!-- <div class="col-md-4"> -->
                        <form action="withdraw" name="wdcheck" >
                        <input type="checkbox" name="input_check1" id="input_check1"  >
                         <b>&nbsp;&nbsp;SAZA을 탈퇴하면 회원 정보 및 서비스 이용 기록이 삭제됩니다.</b><br>
                         
                        <input type="checkbox" name="input_check2" id="input_check2" >
                         <b>&nbsp;&nbsp;관련 법령 및 내부 기준에 따라 별도 보관하는 경우에는 일부 정보가 보관될 수 있습니다.</b><br>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 전자상거래 등 소비자 보호에 관한 법률<br>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-계약 또는 청약철회 등에 관한 기록: 5년 보관<br>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-대금결제 및 재화 등의 공급에 관한 기록: 5년 보관<br>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관<br>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 통신비밀보호법<br>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-접속 로그 기록: 3개월 보관<br>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 내부 기준에 따라 별도 보관<br>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-부정이용 방지를 위해 이름, 이메일(로그인ID), 휴대전화번호, CI/DI: 3년 보관<br>
                        <input type="checkbox" name="input_check3" id="input_check3" >
                         <b>&nbsp;&nbsp;SAZA 탈퇴가 제한된 경우에는 아래 내용을 참고하시기 바랍니다.</b><br>
                        <input type="button" value="탈퇴하기" id ="deleteclick" onclick="deletefn('${member.mid}')">
                        <input type="button" value="취소하기" onclick="before()">
                       
                        </form>
                        <!-- onSubmit="return CheckForm(this)" -->
             <!--        </div> -->
                   
                
                   
                   
                   
                </div> 
               
            </div> 

        </div>
    </div>
    <!-- End Content -->

    


    

    <!-- Start Script -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="resources/js/jquery-1.11.0.min.js"></script>
    <script src="resources/js/jquery-migrate-1.2.1.min.js"></script> 
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/templatemo.js"></script>
    <script src="resources/js/custom.js"></script>
   <script>
    
     function deletefn(id){
    	var check1 = document.getElementById('input_check1').checked;
    	var check2 = document.getElementById('input_check2').checked;
    	var check3 = document.getElementById('input_check3').checked;
    	
    	if(!check1){
    		alert("회원탈퇴 내용을 모두 동의해 주셔야 탈퇴가 가능합니다.");
    		return false;
    	}if(!check2){
    		alert("회원탈퇴 내용을 모두 동의해 주셔야 탈퇴가 가능합니다.");
    		return false;
    	}if(!check3){
    		alert("회원탈퇴 내용을 모두 동의해 주셔야 탈퇴가 가능합니다.");
    		return false;
    	}else{
    		alert("이용해 주셔서 감사합니다.");
    		console.log('삭제할아이디'+id);
    		location.href="withdraw?mid="+id;
    	}
     }
     
     function before(){
    	 location.href="memberupdate";
     }

    
    </script> 
    
    <!-- End Script -->
     
</body>

</html>