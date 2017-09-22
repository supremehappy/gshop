<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<div align="center">
	<div class="header">	
	
		<div class="col-sm-2" align="center">
			로고
		</div>
		<div class="col-sm-5">
			공백
		</div>
		<div class="col-sm-3">
			<c:choose>
				<c:when test="${not empty user_key }">
					<font color="red"><c:out value="${user_key}"></c:out>님, 환영합니다.
					</font>
				</c:when>
				<c:when test="${not empty admin_key }">
					<font color="red">관리자 <c:out value="${admin_key}"></c:out>님
					</font>
				</c:when>
				<c:otherwise>
					<a href="#">■ 회원가입</a>
				</c:otherwise>
			</c:choose>
			
		</div>
		<div class="col-sm-2">
			<c:choose>
				<c:when test="${not empty user_key }">					
					<a href="../logout/logout.html">* 로그아웃하기</a>
				</c:when>	
				<c:when test="${not empty admin_key }">
					<a href="../logout/logout.html">* 로그아웃하기</a>
				</c:when>	
				<c:otherwise>
					<font color="red">
						<a href="../login/loginForm.html">■ 로그인 하기</a>
					</font>
				</c:otherwise>	
			</c:choose>
		</div>
	</div>	
</div>