<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
    <title>SAZA | 익명거래 플랫폼</title>
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
  
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script>
  function loginCheck() {
      var id = document.getElementById('mid').value;
      var pw = document.getElementById('mpassword').value;
      var idResult = document.getElementById('id-result');
      var pwResult = document.getElementById('pw-result');
      var msg = "${msg}";
      if(id.length==0){
    		 
    	  idResult.style.color='red';
    	  idResult.innerHTML ='아이디를 입력해주세요';
    	  return false;
    	 
    	  }else if (id.length == ""){
    		  idResult.remove(); 
    		  return true;
    	  }
    if(pw.length==0){
    		  idResult.remove(); 
    		  pwResult.style.color='red';
            pwResult.innerHTML ='비밀번호를 입력해주세요';
            return false;

            }else if (pw.length == ""){
          	  pwResult.remove(); 
          	  return true;
            }
    } 
  
  
  /* function loginCheck() {
      var id = document.getElementById('mid').value;
      var pw = document.getElementById('mpassword').value;
      var idResult = document.getElementById('id-result');
      var pwResult = document.getElementById('pw-result');
      var msg = "${msg}";
   if(id.length==0){
	  idResult.style.color='red';
	  idResult.innerHTML ='아이디를 입력해주세요';
	  return false;
	  }else if(pw.length==0){
		  pwResult.style.color='red';
          pwResult.innerHTML ='비밀번호를 입력해주세요';
          return false;
          }else if(msg != null){
        	  alert(msg);
        	
          }else{
        	  return true;
      		}
}  */


 
 
  
  </script>







<style>
input {
	width: 300px;
	height: 35px;
	font-size: 5px;
	border: none;
}
.links{
        text-align: center;
        margin-bottom: 10px;
        margin-top:15px; 
    }
    a{ 
    	color: #f58b34; text-decoration: none; 
    }
    
#mid,#mpassword{
    border-bottom: 1px solid gray;
    }
    .login_warn{
    margin-top: 30px;
    text-align: center;
    color : red;
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
                            <a class="nav-link" href="shop.html">Shop</a>
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
<body>
	<div style="text-align: center; margin-top:50px; margin-bottom:200px;">
		<h2><img src="resources/img/saza.jpeg" border=0 height="220" width="380"></h2>
		<form action="login.do" method="post" onsubmit="return loginCheck()">
			<input type="text" name="mid" id="mid"placeholder="아이디" style="text-align:left; margin-top:15px;"><br>
			<span id="id-result"></span><br>
			<input type="password" name="mpassword" id="mpassword" placeholder="비밀번호" style="text-align:left; margin-top:15px;"><br>
			<span id="pw-result"></span><br>
			
			<span id="ww-result"></span><br>
			<input type="submit" value="로그인" style="height:45px;"><br>
			<input type="button" value="회원가입" style="margin-top:15px; height:45px;" onclick="location.href='joinpage'"><br>
			<div class="links">
			<a href="pwfindpage">비밀번호 찾기</a> | <a href="findidpage">아이디 찾기</a>
			</div>
		</form>

	</div>
	
	   

    <!-- Start Script -->
    <script src="resources/js/jquery-1.11.0.min.js"></script>
    <script src="resources/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/templatemo.js"></script>
    <script src="resources/js/custom.js"></script>
    <!-- End Script -->
</body>
</html>