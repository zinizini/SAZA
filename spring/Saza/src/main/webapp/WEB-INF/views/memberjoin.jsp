<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<style>
input {
	width: 300px;
	height: 35px;
	font-size: 5px;
	border: none;
}
#joinclick{
height:45px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
var idCheck = 0;
var pwdCheck = 0;
	function idoverlap() {
		var inputId = document.getElementById('mid').value;
		var checkResult = document.getElementById('checkresult');
		var joinclick = document.getElementById('joinclick');
		console.log(inputId);
		$.ajax({
			type : 'post',
			url : '/idcheck',
			data : {'mid' : inputId},
			dataType : 'text',
			success : function(data) {
				console.log('제대로 돌고 있음.');
				console.log('리턴값' + data);
				if (data == "ok") {
					checkResult.style.color = 'green';
					checkResult.innerHTML = '사용가능한 아이디입니다.';
					idCheck = 1;
					if(idCheck==1 && pwdCheck ==1){
						document.getElementById('joinclick').removeAttribute('disabled'); 
						signupCheck();
					}
					
				} else {
					checkResult.style.color = 'red';
					checkResult.innerHTML = '이미 사용중인 아이디입니다.';
					document.getElementById('joinclick').setAttribute('disabled',true);
					idCheck = 0;
				}
			},
			error : function() {
				console.log('제대로 안돌고 있음.');
				document.getElementById('joinclick').setAttribute('disabled',true);
				idCheck = 0;
			}
		});

	}
	function pwCheck() {
        var pw = document.getElementById('mpassword').value;
        var exp =/^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;
        var result = document.getElementById('pwresult');
        var joinclick = document.getElementById('joinclick');
        if(pw.length==0){
        	pwdCheck = 0;
            result.style.color='red';
            result.innerHTML ='필수입력항목입니다';
            document.getElementById('joinclick').setAttribute('disabled',true);    
        }else if(pw.match(exp)) {
            result.style.color ='green';
            result.innerHTML='유효한 비밀번호 형식입니다';
            pwdCheck = 1;
        if(idCheck==1 && pwdCheck ==1){
            	document.getElementById('joinclick').removeAttribute('disabled');
            	signupCheck();
            }
        }else{
        	pwdCheck = 0;
            result.style.color='red';
            result.innerHTML='8~16자 영문, 숫자, 특수문자를 사용하세요.';
            document.getElementById('joinclick').setAttribute('disabled',true);
        }
    }
	function signupCheck(){
		var email = document.getElementById('memail').value;
		var joinclick = document.getElementById('joinclick');
		if(email==0){
			document.getElementById('joinclick').setAttribute('disabled',true);
		}else{
			document.getElementById('joinclick').removeAttribute('disabled');
		}
	}
	
</script>




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
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>

<body>
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none">saza@company.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none">010-1234-5678</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->


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
</head>
<body>

	<div style="text-align:center; margin-top:100px; margin-bottom:100px;">
	<h2> 회원가입 </h2>
	<form action="memberjoin" method="post">
	<p>
	<label style="margin-top:30px;margin-bottom:13px;">아이디</label><br> 
	<input type="text" name="mid" id="mid" placeholder="아이디를 입력해주세요" onkeyup="idoverlap()"><br>
	<span id="checkresult" style="font-size:15px"></span><br>
	</p>
	<p>
	<label style="margin-bottom:13px;">비밀번호</label> <br>
	<input type="text" name="mpassword" id="mpassword" placeholder="영문, 숫자, 특수문자를 조합(8-16자)"
	onblur="pwCheck()"><br>
	<span id="pwresult" style="font-size:15px"></span><br>
	</p>
	<p>
	<label style="margin-top:13px; margin-bottom:13px;">이메일</label><br>
	<input type="email" name="memail" id="memail" placeholder="예)saza@saza.com" onkeyup="idoverlap()"><br>
	<p>
	<input type="submit" value="가입하기" id="joinclick" disabled="disabled" style="margin-top:15px;">
	</p>	
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