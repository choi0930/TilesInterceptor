<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.no-underline {
	text-decoration: none;
}
</style>
<title>사이드 메뉴</title>

</head>
<body>
	<h1>사이드 메뉴</h1>
	<h1>
		<a href="${contextPath }/member/listMembers.do" class="no-underline">회원관리</a><br>
		<a href="${contextPath }/board/listArticles.do" class="no-underline">게시판관리</a><br>
		<a href="#" class="no-underline">상품관리</a><br>
	</h1>
</body>
</html>