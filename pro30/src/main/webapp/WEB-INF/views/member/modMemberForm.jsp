<%@page import="org.springframework.web.servlet.ModelAndView"%>
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
<title>Insert title here</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
$(function(){
	$('#alert-success').hide();
	$('#alert-danger').hide();
	$("input").keyup(function(){
		var pwd1 = $('#userPwd').val();
		var pwd2 = $('#userPwdCheck').val();
		if(pwd1 !="" || pwd2 != ""){
			if(pwd1 == pwd2){
				$('#alert-success').show();
				$('#alert-danger').hide();
				$('#submit').removeAttr("disabled");
			}else{
				$('#alert-success').hide();
				$('#alert-danger').show();
				$('#submit').attr("disabled","disabled");
			}
		}
	});
});
function fn_select(){
	var text = $('#email_select').val();
	if((text =='self') || (text=='choose')){
		$('#selects').val("");
		$('#selects').attr('disabled', false);
	}
	else{
		$('#selects').val(text);
		$('#selects').attr('disabled', true);
	}

	}
</script>
<style type="text/css">
*{
	margin:0px;
	padding: 0px;
	}

	fieldset{
	border: 0px
	}
	a{
	text-decoration: none;
	}
	#modForm{
	height:auto;
		width: 470px;
		margin: 0 auto;
		padding:20px 20px;
		margin-top:80px;
		background: #fff;
     	border-radius: 10px;
      	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	}
	#form_userId, .form_userPwd, #form_userName, #form_email,#form_joinDate{
	margin-bottom: 20px;
	}
	.alert{
	margin-top: 10px;
	}
</style>
</head>
<body class="d-flex flex-column min-vh-100">
<div id="modForm">
<form method ="post" action="${contextPath }/member/modMember.do">
	<fieldset>
	<legend>회원정보 수정창</legend>
	<!-- 아이디 -->
	<div id="form_userId">
		<div>아이디</div>
		<div><input type="text"  disabled="disabled" value="${memberVO.id }"class="form_input form-control"></div>
		<input type="hidden" name="id" value="${memberVO.id }">
	</div>
	<!-- 비밀번호 수정 -->
	<div class="form_userPwd">
		<div>비밀번호</div>
		<div><input type="password" name="pwd" id ="userPwd"value="${memberVO.pwd }" class="form_input form-control"></div>
	</div>
	<!-- 비밀번호 확인 -->
	<div class="form_userPwd">
		<div>비밀번호 확인</div>
		<div><input type="password" name="pwd2" id ="userPwdCheck" class="form_input form-control"></div>
		<div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
		<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
	</div>
	<!-- 이름 수정 -->
	<div id="form_userName">
		<div>이름</div>
		<div><input type="text" name="name" value="${memberVO.name}"class="form_input form-control"></div>
	</div>
	
	<!-- 이메일 수정 -->
	<div id="form_email">
		<label for="userEmail">이메일</label><br>
		<div>
			<input type="text" name="email" value="${memberVO.email }" id="userEmail" class="form_input form_email form-control" required/>
		</div>
	</div>
	
	<!-- 가입일 -->
	<div id="form_joinDate">
		<div>가입일</div>
		<div><input type="text" disabled value ="${memberVO.joinDate}"class="form_input form-control"></div>
	</div>
		<button type="submit" class="btn btn-primary" id="submit">회원정보 수정</button>
		<a id="before_page"href="${contextPath }/member/listMembers.do">이전 페이지</a>
	</fieldset>
	</form>
</div>
</body>
</html>