<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>SAZA | ${product.gdsname}</title>

 

<style>
.ct_right_area{
	    float: left;
	    width: 70%;
	    height: 100%;
	    
  	}
  		.title{
		    height: 28%;
		    font-size: 17px; 
		    
		    padding-left: 3%;
  		}
  		.author{
		    font-size: 16px;
		    line-height: 50px;
		    padding-left: 3%;  		
  		}
  		.price{
		    line-height: 30px;
		    padding: 2% 0 2% 3%;  		
  		}
  			.discount_price_number{
			    line-height: 30px;
			    font-size: 22px;
			    color: #f84450;
			    font-weight: bold;  			
  			}
  		.button{
  			padding: 2% 0 2% 3%;
  			text-decoration: none;
  		}
  			.button_quantity{
  				margin-bottom: 2%;
  				
  			}
  			.button_quantity input{
				    height: 26px;
				    width: 40px;
				    text-align: center;
				    font-weight: bold;  			
	  			}
		  	  	.button_quantity button{
					border: 1px solid #aaa;
				    color: black;
				    width: 20px;
				    height: 20px;
				    padding: 3px;
				    background-color: #fff;
				    font-weight: bold;
				    font-size: 15px;
				    line-height: 15px;	  	  	
		  	  	}
		  	  		.btn_cart{
						display: inline-block;
    					width: 140px;
					    text-align: center;
					    height: 50px;
    					line-height: 50px;
    					background-color: black;
    					border: 1px solid ;
    					color: #fff;
    					margin-right: 2px;  
    					 		
		  	  		}
		  	  		.btn_cart:hover{
		  	  		background-color : #a6a4a4;
		  	  		}
		  	  		.btn_buy{
						display: inline-block;
    					width: 140px;
					    text-align: center;
					    height: 50px;
    					line-height: 50px;
    					background-color: #f7dcdc;
    					border: 1px solid #f7dcdc;
    					color: #fff;		
    					  	  		
		  	  		}
		  	  		.btn_buy:hover{
		  	  		background-color : #e4a7a7;
		  	  		}
  	
  	.content_middle{
		width: 100%;
	    min-height: 600px;  	
  	}

		.book_intro{
			width: 80%;
			margin: auto;
			margin-top: 40px;
		}
		.book_content{
			width: 80%;
			margin: auto;
			margin-top: 40px;
			margin-bottom: 40px;
		}
  	
  	   /* ???????????? ?????? */
  .reply_button_wrap{
  	padding : 10px;
  	text-align: right;
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
  
  /* ?????? ?????? */
  	.content_bottom{
  		width: 80%;
  		margin : auto;
  	}
	.reply_content_ul{
		list-style: none;
	}
	.comment_wrap{
		position: relative;
    	border-bottom: 1px dotted #d4d4d4;
    	padding: 14px 0 10px 0;	
    	font-size: 12px;
	}
		/* ?????? ?????? ?????? */
		.reply_top{
			padding-bottom: 10px;
		}
		.id_span{
			padding: 0 15px 0 3px;
		    font-weight: bold;		
		}
		.date_span{
			padding: 0 15px 0;
		}
		/* ?????? ????????? ?????? */
		.reply_bottom{
			padding-bottom: 10px;
		}
		
	
	/* ?????? ??? */
	.reply_line{
		width : 80%;
		margin : auto;
		border-top:1px solid #c6c6cf;  	
		
	}
	
	/* ?????? ?????? */
	.reply_subject h2{
		padding: 15px 0 5px 5px;
		margin-top: 30px;
	}
	
  
  /* ?????? ?????? ?????? div */
  .reply_not_div{
  	text-align: center;
  }
  .reply_not_div span{
	display: block;
    margin-top: 30px;
    margin-bottom: 20px; 
  }
  
  /* ?????? ?????? ?????? ?????? */
  .update_reply_btn{
 	font-weight: bold;
    background-color: #b7b399;
    display: inline-block;
    width: 40px;
    text-align: center;
    height: 20px;
    line-height: 20px;
    margin: 0 5px 0 30px;
    border-radius: 6px;
    color: white; 
    cursor: pointer;
  }
  .delete_reply_btn{
 	font-weight: bold;
    background-color: #e7578f;
    display: inline-block;
    width: 40px;
    text-align: center;
    height: 20px;
    line-height: 20px;
    border-radius: 6px;
    color: white; 
  	cursor: pointer;
  } 	
  	}
  	.delete_btn{
	background-color: #efcdcd;
}

.modify_btn{
	background-color: #efcdcd;
}



.form_section_content select {		/* ???????????? css ?????? */
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

 table {
    width: 100%;
    border: 1px solid #444444;
    border-collapse: collapse;
    text-align: center;
  }
  th, td {
    border: 1px solid #444444;
    padding: 10px;
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
		<!-- ???????????? ??????  -->
		<div class="row">

			<div class="col-lg-5">
				<!--?????????  -->

				<img class="card-img rounded-0 img-fluid"
					src="resources/upload/${product.gdsimg}"> <br>

			</div>

			<div class="col-lg-6">
				<div class="row">
					<div class="col-md-6">
						<ul class="list-inline shop-top-menu pb-3 pt-1">
							<li class="list-inline-item"></li>
						</ul>

					</div>

				</div>


				<div class="row">
					<!--  <div class="col-md-9" >  -->
					<!--   <div class="card mb-9 product-wap rounded-0"> -->
					<!-- ?????????  -->
					<!--                <div class="card rounded-0"> -->
					<!--?????????  -->


					<c:forEach var="member" items="${memberList}">
                ${member.mid}
                </c:forEach>

					<div class="ct_right_area">
						<div class="title">${product.gdsname}</div>

						<div class="price">
							<div class="sale_price">
								<fmt:formatNumber value="${product.gdsprice}" pattern="#,###.##" />
								???
							</div>

						</div>

						<div class="author">${product.gdsdetal}</div>

						<div class="Line"></div>
						<div class="button">
							<div class="button_quantity">
								???????????? <input type="text" class="quantity_input" value="1">
								<span>
									<button class="plus_btn">+</button>
									<button class="minus_btn">-</button>
								</span>
							</div>

							<div class="button_set">
								<button class="btn_cart">???????????? ??????</button>
								<button class="btn_buy">????????????</button>

							</div>


							<div class="btn_section" style="margin-top:15px">
								<c:if test="${sessionScope.loginMember eq 'admin'}">
									<button class="btn modify_btn" id="modifyBtn"
										onclick="update()">??????</button>
									<button class="btn delete_btn" id="deleteBtn"
										onclick="productDelete(1)">??????</button>
								</c:if>
							</div>

						</div>




						<!-- </form> -->





						<!-- ?????? form -->
						<form action="/order/${sessionScope.loginMember}" method="get" class="order_form">
							<input type="hidden" name="orders[0].gdscode" value="${product.gdscode}"> 
							<input type="hidden" name="orders[0].cartqty" value="">
						</form>



					</div>


				</div>

			</div>
			


			 <div class="content_bottom">
			 <div class="reply_subject">
				<h2>??????</h2>
				</div>
				
				
				
				

				<div class="reply_button_wrap">
				<c:if test="${!empty sessionScope.loginMember}">
				<c:forEach var="productOrderList" items="${productOrderList}">
					 <c:if test="${productOrderList.gdscode == product.gdscode }">
						<button>?????? ??????</button>
					</c:if>
					</c:forEach>
					</c:if>
				</div>
				
				
				
				

				<c:if test="${empty replyList}">
					<div class="reply_not_div">
						????????? ????????? ????????????.
					</div>
				</c:if>

				<ul class="reply_content_ul">
				
				<li>
						<div class="comment_wrap">
						 <c:forEach var="reply" items="${replyList}"> 
						
							<div class="reply_top">
							
							<span class="id_span">${reply.mid}</span>
								<span class="date_span">${reply.regDate}</span>
								<span class="rating_span">?????? : <span class="rating_value_span">${reply.rating}</span>???</span>
								<c:if test="${sessionScope.loginMember eq reply.mid}">	
								<a class="update_reply_btn" href="${reply.replyId}">??????</a><a class="delete_reply_btn" href="${reply.replyId}">??????</a>
								
								
								</c:if>  
								
							</div> 
							<div class="reply_bottom">
								<div class="reply_bottom_txt">
								 ${reply.content} 
								</div>
							</div>
							 </c:forEach> 
						</div>
						
						
					</li>

				</ul>



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
    
   
    
    
    <!-- End Script -->
    
    <script>
    
    
    // ?????? ?????? ??????
	let quantity = $(".quantity_input").val();
	$(".plus_btn").on("click", function(){
		$(".quantity_input").val(++quantity);
	});
	$(".minus_btn").on("click", function(){
		if(quantity > 1){
			$(".quantity_input").val(--quantity);
		}
	});
	
	// ????????? ????????? ?????????
	const form = {
			mid : '${sessionScope.loginMember}',
			gdscode : '${product.gdscode}',
			cartqty : ''
	}
	// ???????????? ?????? ??????
	$(".btn_cart").on("click", function(e){

	});
	
	$(".btn_cart").on("click", function(e){
	form.cartqty = $(".quantity_input").val();
	$.ajax({
		url: 'cart/add',
		type: 'POST',
		data: form,
		success: function(result){
			cartAlert(result);
		}
	})
	});
	function cartAlert(result){
		if(result == '0'){
			alert("??????????????? ????????? ?????? ??????????????????.");
		} else if(result == '1'){
			alert("??????????????? ?????????????????????.");
		} else if(result == '2'){
			alert("??????????????? ?????? ??????????????? ????????????.");
		} else if(result == '5'){
			alert("???????????? ???????????????.");	
		}
	}
	
	 function productDelete(value) {
		if(value == 1)
			location.href='productdelete?gdscode='+${product.gdscode};
			alert("?????? ??????");
		}  
	function update() {
		location.href='productupdate?gdscode='+${product.gdscode};
	}
	
	
	$(document).ready(function(){
		
	
	/* ???????????? */
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
	
	/* ???????????? ?????? ????????? ????????? */
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
	
	/* ?????? ????????? */
	makeCateArray(cate1Obj,cate1Array,cateList,1);
	makeCateArray(cate2Obj,cate2Array,cateList,2);
	makeCateArray(cate3Obj,cate3Array,cateList,3);
	
	let targetCate2 = '';
	let targetCate3 = '${product.cateCode}';
	
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
	
	for(let i = 0; i < cate1Array.length; i++){
		cateSelect1.append("<option value='"+cate1Array[i].cateCode+"'>" + cate1Array[i].cateName + "</option>");
	}
	
	$(".cate1 option").each(function(i,obj){
		if(targetCate2.cateCodeRef === obj.value){
			$(obj).attr("selected", "selected");
		}
	});	
	
	
	
	/*????????? ?????????*/
	 const gdscode = '${product.gdscode}';	

	$.getJSON("/reply/list", {gdscode : gdscode}, function(obj){
		
		makeReplyContent(obj);
		
	});
	
	
	
	});	// ready 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/* ???????????? ?????? */
	$(".btn_buy").on("click", function(){
		let cartqty = $(".quantity_input").val();
		$(".order_form").find("input[name='orders[0].cartqty']").val(cartqty);
		$(".order_form").submit();
	});
	
	
	
	
	function refreshreplyList(){
		location.reload();
	} 
	
	/* ???????????? */
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
					alert("?????? ????????? ????????? ?????? ?????????.")
				} else if(result === '0'){
					let popUrl = "/replyEnroll/" + mid + "?gdscode=" + gdscode;
					console.log(popUrl);
					let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes";
					
					window.open(popUrl,"?????? ??????",popOption);							
				}

			}
		});
		
		
		
/* 
		let popUrl = "/replyEnroll/" + mid + "?gdscode=" + gdscode;
		

		
		console.log(popUrl);
		let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes";
		
		window.open(popUrl,"?????? ??????",popOption); */
 
	});  
	
	
	/* ?????? ?????? ?????? */
	 $(document).on('click', '.update_reply_btn', function(e){
			
			e.preventDefault();
			let replyId = $(this).attr("href");
			let popUrl = "/getUpdateReply?replyId=" + replyId + "&gdscode=" + '${product.gdscode}' + "&mid=" + '${sessionScope.loginMember}';	
			let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes"	
			
			window.open(popUrl,"?????? ??????",popOption);			
		 
	 });
	
	 /* ?????? ?????? ?????? */
	 
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
				alert('????????? ?????????????????????.');
			}
		});		
			
	 });
	
	 
	
	 
	
	
	
	 
	 /* ?????? ????????? ?????? */
	 const page = {
		gdscode: '${product.gdscode}',
		pageNum : 1,
		amount : 10
	}
	
	
	 /* ?????? ????????? ?????? ?????? ??? ?????? ?????? ?????? ????????? */
		let replyListInit = function(){
		 $.getJSON("/reply/list", page , function(obj){
				
				makeReplyContent(obj);
				
			});
		}

	
	
	 
	 
			
	 /* ??????(??????) ?????? ?????? ????????? */
		function makeReplyContent(obj){
			if(obj.list.length === 0){
				$(".reply_not_div").html('<span>????????? ????????????.</span>');
				$(".reply_content_ul").html('');
			
			}else{
				
				$(".reply_not_div").html('');
				
				const list = obj.list;
				const pf = obj.pageInfo;	
				const userId = '${member.mid}';	
				
				/* list */
				
				let reply_list = '';			
				$(list).each(function(i,obj){
					reply_list += '<li>';
					reply_list += '<div class="comment_wrap">';
					reply_list += '<div class="reply_top">';
					/* ????????? */
					reply_list += '<span class="id_span">'+ obj.mid+'</span>';
					/* ?????? */
					reply_list += '<span class="date_span">'+ obj.regDate +'</span>';
					/* ?????? */
					reply_list += '<span class="rating_span">?????? : <span class="rating_value_span">'+ obj.rating +'</span>???</span>';
					if(obj.mid === userId){
						reply_list += '<a class="update_reply_btn" href="'+ obj.replyId +'">??????</a><a class="delete_reply_btn" href="'+ obj.replyId +'">??????</a>';
					}
					reply_list += '</div>'; //<div class="reply_top">
					reply_list += '<div class="reply_bottom">';
					reply_list += '<div class="reply_bottom_txt">'+ obj.content +'</div>';
					reply_list += '</div>';//<div class="reply_bottom">
					reply_list += '</div>';//<div class="comment_wrap">
					reply_list += '</li>';

				});	
				$(".reply_content_ul").html(reply_list);
			}
			
		}
		
	
		
		
	
	
    </script>
    
    

</body>

</html>