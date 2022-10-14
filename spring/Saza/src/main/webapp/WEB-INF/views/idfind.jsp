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
  
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script>
/*   function idcheck() {
		var inputId = document.getElementById('mid').value;
		var checkResult = document.getElementById('checkresult');
		console.log(inputId);
		$.ajax({
			type : 'post',
			url : 'idcheck',
			data : {'mid' : inputId},
			dataType : 'text',
			success : function(data) {
				console.log('제대로 돌고 있음.');
				console.log('리턴값' + data);
				if (data == "ok") {
					checkResult.style.color = 'red';
					checkResult.innerHTML = '아이디를 확인해주세요.';					
				} else {
					checkResult.innerHTML = '';	
				}
			},
			error : function() {
				console.log('제대로 안돌고 있음.');
			}
		});

	} */
/*   function emailcheck() {
		var inputEmail = document.getElementById('memail').value;
		var emailResult = document.getElementById('emailresult');
		console.log(inputEmail);
		$.ajax({
			type : 'post',
			url : 'emailcheck',
			data : {'memail' : inputEmail},
			dataType : 'text',
			success : function(data) {
				console.log('제대로 돌고 있음.');
				console.log('리턴값' + data);
				if (data == "ok") {
					emailResult.style.color = 'red';
					emailResult.innerHTML = '이메일 확인해주세요.';					
				} else {
					emailResult.innerHTML = '';	
				}
			},
			error : function() {
				console.log('제대로 안돌고 있음.');
			}
		});

	}
   */
/*   const autoHyphen = (target) => {
 	 target.value = target.value
 	   .replace(/[^0-9]/g, '')
 	  .replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
 	} */
  
/*   function id_search() { 
	  var name = document.getElementById('mname').value;
	  var phone = document.getElementById('mphone').value;
	  var nameResult = document.getElementById('nameresult');
	  var phoneResult = document.getElementById('phoneresult');

	 	if (name.length < 1) {
	 		nameResult.style.color='red';
	 		nameResult.innerHTML ='이름을 입력해주세요';
		  return;
		 }

		 if (phone.length != 13) {
			 phoneResult.style.color='red';
		 	 phoneResult.innerHTML ='휴대폰 번호를 입력해주세요';
			  return;
		 }
		

	 } */
/*  function idfind() {
	 	var phone = document.getElementById('mphone').value;
	 	var idfind = document.getElementById('idfind');

		$.ajax({
	        url:'idfind',
	        type:'post',
	        data: {'mphone' : phone},
	        dataType : "text",

	        success:function(data){
	        	console.log('제대로 돌고 있음.');
				console.log('리턴값' + data);
				if (data == "ok") {
					$('#id_result').text(data);	
					document.getElementById('idfind'); 
				} else {
					console.log('제대로 돌고 있음.');
				}
	        }
			
		});
 } */
 
 
 
 		 /* function idf(){
			 var phone = document.getElementById('mphone').value;
			 console.log(phone);
			/*  var phone = $("mphone").val();
			 var idfind  = $("#idfind") */
			 /*  $.ajax({
			        url:'idfindajax',
			        type:'post',
			        data: {'mphone' : phone},
			        dataType : "json",
			        
			        success:function(data){
			         	console.log('제대로 돌고 있음.');
			        		console.log('리턴값' + data);
			        		
			         	if(data == "ok"){
			         		$('#mphone').text(data);
			         	}else{
			         		

			         		
			         	}
			         },
			         error: function(){ // 실패시 처리할 함수
			        		console.log('제대로 안돌고 있음.');



			        		}
			         });
			        } 
	  */ 
 
  


/* success:function(data){
	console.log('제대로 돌고 있음.');
	console.log('리턴값' + data);
	
	if(data == 0){
		$('#id_value').text("회원 정보를 확인해주세요!");	
	}else{
		$('#id_value').text(data);

		
	}
},
error: function(){ // 실패시 처리할 함수
	console.log('제대로 안돌고 있음.');



	}
});
} */

 
  
  </script>







<style>
input {
	width: 300px;
	height: 35px;
	font-size: 5px;
	border: none;
}
label{
text-align:left; 
margin-top:15px;
}
.links{
        text-align: center;
        margin-bottom: 10px;
        margin-top:15px; 
    }
    .login .form-control {
  		position: relative;
  		height: auto;
  		-webkit-box-sizing: border-box;
     	-moz-box-sizing: border-box;
        	 box-sizing: border-box;
  		padding: 10px;
  		font-size: 16px;
	}
	a{ 
    	color: #f58b34; text-decoration: none; 
    }
    #mname,#mphone{
    border-bottom:1px solid gray;
    }
</style>
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
<body>
	<div style="text-align: center; margin-top:50px; margin-bottom:200px;">
		<h2><img src="resources/img/saza.jpeg" border=0 height="220" width="380"></h2>
		<h2>아이디 찾기</h2>
		<form action="idfind" method="post">	
			<!-- <input type="text" name="mphone" id="mphone" oninput="autoHyphen(this)" class="form-controll"
			style="text-align:left; margin-top:15px;" placeholder = "휴대폰번호를 '-'없이 입력" maxlength="13"
			onblur="idf()"><br> -->
			
			<!-- <span id="phoneresult" style="font-size:15px"></span><br> -->
			<!-- <input type="button" value="아이디 찾기" onClick="idfindbtn()"style="margin-top:15px; height:45px;"><br> -->
			
			<input type="text" name="memail" id="memail" placeholder="예)saza@saza.com" ><br>
			
			
			<input type="submit" value="아이디 찾기" style="margin-top:15px; height:45px;"><br>
		</form>
		<div class="links">
		 <a href="pwfindpage">비밀번호 찾기 </a> | <a href="loginpage">로그인</a> | <a href="joinpage">회원가입 </a>
		</div>

	</div>
	
	   <!-- Start Footer -->
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">SAZA Company</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            South Korea
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw"></i>
                            <a class="text-decoration-none">010-1234-5678</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none">saza@company.com</a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">Products</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">Luxury</a></li>
                        <li><a class="text-decoration-none" href="#">Sport Wear</a></li>
                        <li><a class="text-decoration-none" href="#">Men's Shoes</a></li>
                        <li><a class="text-decoration-none" href="#">Women's Shoes</a></li>
                        <li><a class="text-decoration-none" href="#">Popular Dress</a></li>
                        <li><a class="text-decoration-none" href="#">Gym Accessories</a></li>
                        <li><a class="text-decoration-none" href="#">Sport Shoes</a></li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">Further Info</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">Home</a></li>
                        <li><a class="text-decoration-none" href="#">About Us</a></li>
                        <li><a class="text-decoration-none" href="#">Shop Locations</a></li>
                        <li><a class="text-decoration-none" href="#">FAQs</a></li>
                        <li><a class="text-decoration-none" href="#">Contact</a></li>
                    </ul>
                </div>

            </div>

            <div class="row text-light mb-4">
                <div class="col-12 mb-3">
                    <div class="w-100 my-3 border-top border-light"></div>
                </div>
                <div class="col-auto me-auto">
                    <ul class="list-inline text-left footer-icons">
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="http://facebook.com/"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://twitter.com/"><i class="fab fa-twitter fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.linkedin.com/"><i class="fab fa-linkedin fa-lg fa-fw"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-auto">
                    <label class="sr-only" for="subscribeEmail">Email address</label>
                    <div class="input-group mb-2">
                        <input type="text" class="form-control bg-dark border-light" id="subscribeEmail" placeholder="Email address">
                        <div class="input-group-text btn-success text-light">Subscribe</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="w-100 bg-black py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- End Footer -->

    <!-- Start Script -->
    <script src="resources/js/jquery-1.11.0.min.js"></script>
    <script src="resources/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/templatemo.js"></script>
    <script src="resources/js/custom.js"></script>
    <!-- End Script -->
</body>
</html>