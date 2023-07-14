<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<c:set var="result" value="${param.result }" />
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<c:choose>
	<c:when test="${result=='loginFailed' }">
		<script>
			window.onload = function() {
				alert("아이디나 비밀번호가 틀립니다. 다시 로그인 하세요!");
			}
		</script>
	</c:when>
</c:choose>
<style type="text/css">
	#login_info{
		border-radius:10px;
		box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
		width:500px;
		margin:100px auto;
		padding: 30px 30px;
		
	}
	label{
	color:gray;
	}
	p{
	text-align:center;
	font-size: 30px;
	font-weight: bold;
	}
	#btn_login{
		margin-top: 20px;
		width: 440px;
		
	}
</style>
</head>
<body>
<div id="login_info">
	<p>로그인</p>
	<form name="frmLogin" method="post" action="${contextPath}/member/login.do">
		<div class="form-floating mb-3">
			<input type="text" class="form-control" name="id" id="floatingInput" placeholder="id"> 
			<label for="floatingInput">아이디</label>
		</div>
		<div class="form-floating">
			<input type="password" class="form-control" name="pwd" id="floatingPassword"placeholder="Password"> 
			<label for="floatingPassword">패스워드</label>
		</div>
		<!--  아이디 비밀번호 <input type="text" name="id" value="" size="20"> 
		<input type="password" name="pwd" value="" size="20"> -->
			<input type="submit" value="로그인"  id="btn_login" class="btn btn-dark btn-lg" > 
			
	</form>
</div>
</body>
</html>