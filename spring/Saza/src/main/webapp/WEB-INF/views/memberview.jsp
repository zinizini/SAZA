<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>memberview.jsp</h2>
	아이디 : ${result.mid} <br>
	
	
	<a href="./">홈으로</a>
	<a href="memberlist">리스트로 돌아가기</a>

	<table>
		<tr>
			<th>아이디</th>
			<th>상세조회</th>
		</tr>
		<c:forEach var="member" items="${memberList}">
			<tr>
				<td>${member.mid}</td>
				<td><a href="memberview?mid=${member.mid}">조회</a>
			</tr>
		</c:forEach>
		
		
	</table>




</body>
</html>