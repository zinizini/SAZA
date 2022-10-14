<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<title>마이페이지</title>
</head>
<body>

	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="w3-center w3-large w3-margin-top">
				<h3>비밀번호 변경</h3>
			</div>
			<div>
				
				<form id="pwForm" action="/pwUpdate" method="post">	
					<input type="hidden" name="mid" value="${member.mid}">
					<p>
						<label>Password</label>
						<input class="w3-input" id="old_pw" name="old_pw" type="password" 
						placeholder="현재 비밀번호를 입력하세요." required>
					</p>
					<p>
						<label>New Password</label> 
						<input class="w3-input" id="pw" name="mpassword" type="password" 
						placeholder="새로운 비밀번호를 입력하세요." required>
					</p>
					<p>
						<label>Confirm</label>
						<input class="w3-input" type="password" id="pw2" 
						placeholder="새로운 비밀번호를 한번 더 입력하세요." required>
					</p>
					<p class="w3-center">
						<button type="submit" id="joinBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">비밀번호 변경</button>
					</p>
				</form>
			</div>
		</div>
	</div>
	
	
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<script>
	$(function(){

		if(${msg ne null}){
			alert('${msg}');
		};
		
		var reg = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;
		
		if($("#pwForm").submit(function(){
			if($("#pw").val() !== $("#pw2").val()){
				alert("비밀번호가 다릅니다.");
				$("#pw").val("").focus();
				$("#pw2").val("");
				return false;
			}else if(false === reg.test($("#pw").val())){
				alert("8~16자 영문, 숫자, 특수문자를 사용하세요.");
				return false;
			}
			return true;
			
			
		}));
	})


</script>
	
</body>
</html>