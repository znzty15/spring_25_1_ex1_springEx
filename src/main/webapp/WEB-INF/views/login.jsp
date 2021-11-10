<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>
	<h3>로그인 인증되었습니다.</h3>
	이 파일은 login.jsp 입니다.<br>
	
	<%-- <c:if test="${not empty pageContext.request.userPrincipal }">
		<p>
			로그인 상태임<br>
			로그인한 아이디 : ${pageContext.request.userPrincipal.name }<br>
			<a href="<c:url value="j_spring_security_logout"/>">logout</a>
		</p>
	</c:if> --%>
	
	<s:authorize ifAnyGranted="ROLE_USER">
		<p>
			로그인 상태임<br>
			로그인한 아이디 : <s:authentication property="name"/><br>
			<a href="<c:url value="j_spring_security_logout"/>">logout</a>
		</p>
	</s:authorize>
	
	<%-- <c:if test="${empty pageContext.request.userPrincipal }">
		<p>
			로그아웃 상태임
		</p>
	</c:if> --%>
	
	<s:authorize ifNotGranted="ROLE_USER">
		<p>
			로그아웃 상태임
		</p>
	</s:authorize>
	
</body>
</html>