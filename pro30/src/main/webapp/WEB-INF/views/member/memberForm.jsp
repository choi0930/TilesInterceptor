<%@ page language="java" contentType="text/html; charset=UTF-8"
    isELIgnored="false"
    pageEncoding="UTF-8"%>
     <%
    request.setCharacterEncoding("utf-8");
    %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath }"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../resources/css/memberForm.css" >

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript" src="../resources/js/memberForm.js" ></script>

</head>
<body class="d-flex flex-column min-vh-100">
<div class="input-form">
<form method="post" action="${contextPath }/member/addMember.do">
<div id="join_input">
	<fieldset>
	<legend>기본정보입력(필수)</legend>
	<div id="form_userId">
		<label for="userId">아이디</label><br>
		<div>(4-16자의 영문,숫자만 사용)</div><br>
		<div class="input-group">
		<input type="text" name="id" id="userId" class="form_input form-control" aria-describedby="idCheckBtn" required/>
		<button class="btn btn-outline-secondary" type="button" id="idCheckBtn" onclick=" fn_checkId();">ID중복확인</button>
		</div>
		<div id="message"></div>
		
	</div>
	<div id="form_userPwd">
		<label for="userPwd">비밀번호</label><br>
		<div>(8-16자의 영문,숫자,특수문자를 조합해 입력)</div>
		<input type="password" name="pwd" id="userPwd" class="form_input form-control" required/>
		<div id="pwdMessage"></div>
	</div>
	<div id="form_userPwd">
		<label for="userPwdCheck">비밀번호 확인</label><br>
		<input type="password" name="pwdCheck" id="userPwdCheck" class="form_input form-control" required/>
		<div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
		<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
	</div>
	<div id="form_userName">
		<label for="userName">이름</label><br>
		<input type="text" name="name" id="userName" class="form_input form-control" required/>
		<div id="nameMessage"></div>
	</div>
	<div id="form_email">
		<label for="userEmail">이메일</label><br>
		<div>
			<input type="text" name="email" id="userEmail" class="form_input form_email form-control" required/>
		</div>
		<div id="emailMessage"></div>
	</div>
	<button type="submit" class="btn btn-primary" id="submit">회원가입</button>
	<button type="reset" class="btn btn-primary">다시입력</button>
	<a id="before_page"href="${contextPath }/member/listMembers.do">이전 페이지</a>
	</fieldset>

</div>
	</form>
</div>
</body>
</html>