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
    }
    .card-img rounded-0 img-fluid{
    width: 100%;
    height:100%;
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
                    
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none">
                        내 정보 
                        </a>
                        <!-- <button onclick="update()">프로필 정보</button><br> -->
                        <a class="text-decoration-none" href="javascript:update()">프로필 정보</a><br>
                        
                        <div class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" style="padding-top:10px">
                            쇼핑 정보 
                        </a>
                        
                            <a class="text-decoration-none" href="orderview?mid=${member.mid}">구매 내역</a><br>
                            <a class="text-decoration-none" href="#">관심 상품</a><br>
                          
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
			
			

            <div class="col-lg-9" >
                <div class="row">
                    <div class="col-md-6">
                        <h3>프로필 정보</h3>
                    </div>
                   
                </div>
                
                <div class="row">
                    <div class="col-md-4">
                       <!--  <div class="card mb-4 product-wap rounded-0"> --> <!-- //겉에 테두리  -->
                      <!--       <div class="card rounded-0"> -->
                                <img class="card-img rounded-0 img-fluid"  src="/resources/profileimg/${member.mfilename}" style="height:250px; width:250px; margin-bottom:20px;">
                                
                            </div>
                            <!-- <div class="card-body"> -->
                                <h2>${sessionScope.loginMember}</h2>
                                <form action="profileupdate" method="post" name="updateform" enctype="multipart/form-data">
                                <i class="h3 text-decoration-none"></i>
                                이미지 변경<br>
                                <input type="file" name="mfile"><br>
                                <!-- 아이디 -->
                                <input type="hidden" name="mid" value="${member.mid}" 
                                style="width:300px;font-size: 5px;border: none; border-bottom: 1px solid gray;"readonly><br> 
                                현재 비밀번호<br>
                                <input type="text" name="mpassword" id="pwd"
                                style="width:300px;font-size: 5px;border: none; border-bottom: 1px solid gray;"><br>
                                이메일<br>
                                <input type="email" name="memail" value="${member.memail}"
                                style="width:300px;font-size: 5px;border: none; border-bottom: 1px solid gray;"><br>
                                이름<br>
                                <input type="text" name="mname" value="${member.mname}"
                                style="width:300px;font-size: 5px;border: none; border-bottom: 1px solid gray;"><br>
                                휴대폰 번호<br>
                                <input type="text" name="mphone" value="${member.mphone}" placeholder="휴대폰번호를 '-'없이 입력하세요" 
                                style="width:300px;font-size: 5px;border: none; border-bottom: 1px solid gray;" oninput="autoHyphen(this)" maxlength="13"><br>
                                주소<br>
                                <div class="form-group">                   
                                <input class="form-control" style="width: 40%; display: inline; width:300px;" placeholder="우편번호" 
                                name="memberaddr1" id="addr1" type="text" value="${member.memberaddr1}" readonly>
                                <button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button>                           
                                </div>
                                <div class="form-group">
                                <input class="form-control" style="top: 5px; width:600px; margin-top:10px;" placeholder="도로명 주소" 
                                name="memberaddr2" id="addr2" type="text" value="${member.memberaddr2}" readonly>
                                </div>
                                <div class="form-group">
                                <input class="form-control" placeholder="상세주소" name="memberaddr3" id="addr3" type="text" value="${member.memberaddr3}"
                                style="top: 5px; width:600px; margin-top:10px;">
                                </div>

                     
                               
                                <input type="button" value="수정" onclick="updatefn()" 
                                style="margin-top:30px;">
                                <input type="submit" value="수정취소"><br>
                                </form>
                               
                                <a href="javascript:pwupdate()" style="margin-top:20px;">비밀번호 변경</a>
                                <a href="javascript:wtpage()" style="margin-top:10px;">회원탈퇴</a>
                                
                
                              
                        <!--     </div> -->
                        <!-- </div> -->
                    <!-- </div> -->
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
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="/resources/js/addressapi.js"></script>
     <script>
    function logout(){
    	location.href = 'logout';
    }
    function updatefn() {
		var passwordConfirm = document.getElementById('pwd').value;
		var password = '${member.mpassword}';
		if(password == passwordConfirm){
			updateform.submit();
			alert('수정이 완료되었습니다');
		} else {
			alert('비밀번호를 다시 입력해주세요');
		}
	}
    function newpwdCheck() {
        var pw = document.getElementById('newpwd').value;
        var exp =/^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;
        var result = document.getElementById('pwdresult');
        if(pw.length==0){
            result.style.color='red';
            result.innerHTML ='필수입력항목입니다';
        }else if(pw.match(exp)) {
            result.style.color ='green';
            result.innerHTML='유효한 비밀번호 형식입니다';
        }else{
            result.style.color='red';
            result.innerHTML='8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.';
        }
    }
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
    function pwupdate(){
    	location.href = "pUpdate";
    }


    </script>
    <!-- End Script -->
</body>

</html>