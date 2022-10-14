<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>


<title>SHOP</title>


<link rel="sazalogo-touch-icon" href="resources/img/sazalogo.png">
<link rel="shortcut icon" type="image/x-icon"
	href="resources/img/sazalogo.png">

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/templatemo.css">
<link rel="stylesheet" href="resources/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="resources/css/fontawesome.min.css">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> 
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->

<style>
.form_section_content select { /* 카테고리 css 설정 */
	width: 92%;
	height: 35px;
	font-size: 20px;
	text-align-last: center;
	margin-left: 5px;
}

.cate_wrap span {
	font-weight: 600;
}

.cate_wrap:not(:first-child) {
	margin-top: 20px;
}

</style>

</head>

<body>


	<!-- Start Top Nav -->
	<nav
		class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block"
		id="templatemo_nav_top">
		<div class="container text-light">
			<div class="w-100 d-flex justify-content-between">
				<div>
					<i class="fa fa-envelope mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none">saza@company.com</a>
					<i class="fa fa-phone mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none">010-1234-5678</a>
				</div>
				<div>
					<a class="text-light" href="https://fb.com/templatemo"
						target="_blank" rel="sponsored"><i
						class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a> <a
						class="text-light" href="https://www.instagram.com/"
						target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
					<a class="text-light" href="https://twitter.com/" target="_blank"><i
						class="fab fa-twitter fa-sm fa-fw me-2"></i></a> <a class="text-light"
						href="https://www.linkedin.com/" target="_blank"><i
						class="fab fa-linkedin fa-sm fa-fw"></i></a>
				</div>
			</div>
		</div>
	</nav>
	<!-- Close Top Nav -->


	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-light shadow">
		<div
			class="container d-flex justify-content-between align-items-center">

			<a href="./"><img src="resources/img/saza.jpeg" border=0
				height="190" width="320"></a>

			<button class="navbar-toggler border-0" type="button"
				data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div
				class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
				id="templatemo_main_nav">
				<div class="flex-fill">
					<ul
						class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
						<li class="nav-item"><a class="nav-link" href="index.html">Home</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="about.html">About</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="shop">Shop</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
						</li>
					</ul>
				</div>
				<div class="navbar align-self-center d-flex">
					<div
						class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
						<div class="input-group">
							<input type="text" class="form-control" id="inputMobileSearch"
								placeholder="Search ...">
							<div class="input-group-text">
								<i class="fa fa-fw fa-search"></i>
							</div>
						</div>
					</div>
					<a class="nav-icon d-none d-lg-inline" href="#"
						data-bs-toggle="modal" data-bs-target="#templatemo_search"> <i
						class="fa fa-fw fa-search text-dark mr-2"></i>
					</a>
					<c:if test="${!empty sessionScope.loginMember}">
						<a class="nav-icon position-relative text-decoration-none"
							href="cartview"> <i
							class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i> <span
							class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
						</a>
					</c:if>

					<c:if test="${empty sessionScope.loginMember}">
						<a class="nav-icon position-relative text-decoration-none"
							href="loginpage"> <i
							class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i> <span
							class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
						</a>
					</c:if>

					<c:if test="${!empty sessionScope.loginMember}">
						<a class="nav-icon position-relative text-decoration-none"
							href="mypage"> <i class="fa fa-fw fa-user text-dark mr-3"></i>
							<span
							class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
						</a>
					</c:if>

					<c:if test="${empty sessionScope.loginMember}">
						<a class="nav-icon position-relative text-decoration-none"
							href="loginpage"> <i class="fa fa-fw fa-user text-dark mr-3"></i>
							<span
							class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
						</a>
					</c:if>
				</div>
			</div>

		</div>
	</nav>
	<!-- Close Header -->

	<!-- Modal -->
	<div class="modal fade bg-white" id="templatemo_search" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="w-100 pt-1 mb-5 text-right">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form action="" method="get"
				class="modal-content modal-body border-0 p-0">
				<div class="input-group mb-2">
					<input type="text" class="form-control" id="inputModalSearch"
						name="q" placeholder="Search ...">
					<button type="submit"
						class="input-group-text bg-success text-light">
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

				<a class="justify-content-between h3 text-decoration-none"
					style="color: green;"><b>관리자용</b></a>
				<c:if test="${sessionScope.loginMember eq 'admin'}">
					<li><a class="text-decoration-none" href="registerpage"
						style="color: black"> 상품 등록 </a></li>
				</c:if>
			</div>
			<div class="col-lg-9">
				<!-- 내용 가운데로  -->

				<h2 style="margin-left: 20px;">상품 등록</h2>
				
			<!-- 	<div class="container-fluid"> -->
				<div class="row" style="margin-left: 10px;">
				<div class="col-md-5"><!-- 이거없애면 넓게 가능 -->
				
				
				<form action="updateprocess" method="post" name="updateform" autocomplete="off" enctype="multipart/form-data">
				 <div class="form_section_content"> 
				<div class="cate_wrap" style="margin-top: 15px;">
				<span>대분류</span> 
				<select class="cate1">
				<option selected value="none">선택</option>
				</select>
				</div>
				<div class="cate_wrap">
				<span>중분류</span> 
				<select class="cate2">
				<option selected value="none">선택</option>
				</select>
				</div>
				<div class="cate_wrap">
				<span>소분류</span> 
				<select class="cate3" name="cateCode">
				<option selected value="none">선택</option>
				</select>
				</div>
				</div> 
				
				상품코드 : <input type="text" value="${productUpdate.gdscode}" name="gdscode" style="margin-top: 15px;" readonly>
				
				<input type="text" value="${productUpdate.gdsname}" name="gdsname" placeholder="상품명" style="margin-top: 15px;" /> 
				<input type="text" value="${productUpdate.gdsprice}" name="gdsprice" placeholder="상품가격" style="margin-top: 15px;" /> 
				<div class="form_section_title">
                    				<label>상품 재고</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsStock" value="${productUpdate.gdsStock}">
                    			</div>
				<textarea rows="5" cols="50" name="gdsdetal" style="margin-top: 15px;" placeholder="내용을 입력하세요.">${productUpdate.gdsdetal}</textarea>
				<button type="submit" id="register_Btn" class="btn btn-warning btn-block" style="margin-top: 15px;" onclick="update(1)" >수정</button>
				<button type="submit" onclick="cancel()" class="btn btn-outline-success btn-block" style="margin-top: 15px;">취소</button>
				
				</form>



					 	</div> 

					</div>
				<!-- </div> -->
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
	
	<script> // 페이지가 렌더링 후 반드시 실행을 하는 document ready 메서드 
	 
	$(document).ready(function(){
		
		
		
		
		/* 카테고리 */
		let cateList = JSON.parse('${cateList}');

		let cate1Array = new Array();
		let cate2Array = new Array();
		let cate3Array = new Array();
		let cate1Obj = new Object();
		let cate2Obj = new Object();
		let cate3Obj = new Object();
		
		let cateSelect1 = $(".cate1");		
		let cateSelect2 = $(".cate2");
		let cateSelect3 = $(".cate3");
		
		/* 카테고리 배열 초기화 메서드 */
		function makeCateArray(obj,array,cateList, tier){
			for(let i = 0; i < cateList.length; i++){
				if(cateList[i].tier === tier){
					obj = new Object();
					
					obj.cateName = cateList[i].cateName;
					obj.cateCode = cateList[i].cateCode;
					obj.cateCodeRef = cateList[i].cateCodeRef;
					
					array.push(obj);				
					
				}
			}
		}	
		
			/* 배열 초기화 */
		makeCateArray(cate1Obj,cate1Array,cateList,1);
		makeCateArray(cate2Obj,cate2Array,cateList,2);
		makeCateArray(cate3Obj,cate3Array,cateList,3);
		
		
		let targetCate2 = '';
		let targetCate3 = '${productUpdate.cateCode}';
		
			/* 소분류 */
		for(let i = 0; i < cate3Array.length; i++){
			if(targetCate3 === cate3Array[i].cateCode){
				targetCate3 = cate3Array[i];
			}
		}// for			
		
		for(let i = 0; i < cate3Array.length; i++){
			if(targetCate3.cateCodeRef === cate3Array[i].cateCodeRef){
				cateSelect3.append("<option value='"+cate3Array[i].cateCode+"'>" + cate3Array[i].cateName + "</option>");
			}
		}				
		
		$(".cate3 option").each(function(i,obj){
			if(targetCate3.cateCode === obj.value){
				$(obj).attr("selected", "selected");
			}
		});			
		
			/* 중분류 */
		for(let i = 0; i < cate2Array.length; i++){
			if(targetCate3.cateCodeRef === cate2Array[i].cateCode){
				targetCate2 = cate2Array[i];	
			}
		}// for		
		
		for(let i = 0; i < cate2Array.length; i++){
			if(targetCate2.cateCodeRef === cate2Array[i].cateCodeRef){
				cateSelect2.append("<option value='"+cate2Array[i].cateCode+"'>" + cate2Array[i].cateName + "</option>");
			}
		}		
		
		$(".cate2 option").each(function(i,obj){
			if(targetCate2.cateCode === obj.value){
				$(obj).attr("selected", "selected");
			}
		});				
		
		
			/* 대분류 */
		for(let i = 0; i < cate1Array.length; i++){
			cateSelect1.append("<option value='"+cate1Array[i].cateCode+"'>" + cate1Array[i].cateName + "</option>");
		}	
		
		$(".cate1 option").each(function(i,obj){
			if(targetCate2.cateCodeRef === obj.value){
				$(obj).attr("selected", "selected");
			}
		});	
	});
	
	

   
    </script>
	
    
     <script >
    
    /* 카테고리 */
	let cateList = JSON.parse('${cateList}');

	let cate1Array = new Array();
	let cate2Array = new Array();
	let cate3Array = new Array();
	let cate1Obj = new Object();
	let cate2Obj = new Object();
	let cate3Obj = new Object();
	
	let cateSelect1 = $(".cate1");		
	let cateSelect2 = $(".cate2");
	let cateSelect3 = $(".cate3");
	
	/* 카테고리 배열 초기화 메서드 */
	function makeCateArray(obj,array,cateList, tier){
		for(let i = 0; i < cateList.length; i++){
			if(cateList[i].tier === tier){
				obj = new Object();
				
				obj.cateName = cateList[i].cateName;
				obj.cateCode = cateList[i].cateCode;
				obj.cateCodeRef = cateList[i].cateCodeRef;
				
				array.push(obj);				
				
			}
		}
	}	
	
		/* 배열 초기화 */
	makeCateArray(cate1Obj,cate1Array,cateList,1);
	makeCateArray(cate2Obj,cate2Array,cateList,2);
	makeCateArray(cate3Obj,cate3Array,cateList,3);

	
		/* 중분류 <option> 태그 */
	$(cateSelect1).on("change",function(){
		
		let selectVal1 = $(this).find("option:selected").val();	
		
		cateSelect2.children().remove();
		cateSelect3.children().remove();
		
		cateSelect2.append("<option value='none'>선택</option>");
		cateSelect3.append("<option value='none'>선택</option>");
		
		for(let i = 0; i < cate2Array.length; i++){
			if(selectVal1 === cate2Array[i].cateCodeRef){
				cateSelect2.append("<option value='"+cate2Array[i].cateCode+"'>" + cate2Array[i].cateName + "</option>");	
			}
		}// for
		
	});
	
		/* 소분류 <option>태그 */
	$(cateSelect2).on("change",function(){
		
		let selectVal2 = $(this).find("option:selected").val();
		
		cateSelect3.children().remove();
		
		cateSelect3.append("<option value='none'>선택</option>");		
		
		for(let i = 0; i < cate3Array.length; i++){
			if(selectVal2 === cate3Array[i].cateCodeRef){
				cateSelect3.append("<option value='"+cate3Array[i].cateCode+"'>" + cate3Array[i].cateName + "</option>");	
			}
		}// for		
		
	});		
    
    </script>
 

</body>

</html>