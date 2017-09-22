<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/gshop/header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">공지게시글 목록</h1>
	<div class="body">
		<div class="container">
			<h2>Hover Rows</h2>
			<p>The .table-hover class enables a hover state on table rows:</p>            
			
			<table class="table table-hover">
				<thead>
					<tr>
						<th width="30">no</th>
						<th width="300">title</th>
						<th width="80">writer</th>
						<th width="90">date</th>
						<th width="30">count</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="notice" items="${NOTICE_LIST }">
						<tr>
							<td>${notice.seq }</td>
							<td><a href="../read/noticeDetail.html?SEQNO=${notice.seq }">${notice.post_title }</a></td>
							<td>${notice.user_id }</td>
							<td>${notice.reg_date }</td>
							<td>${notice.view_count }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<c:forEach var="page" begin="1" end="${COUNT }">
				<a href="../read/noticeList.html?PAGENO=${page }">${page }</a>
			</c:forEach>
			
			<c:choose>
				<c:when test="${not empty admin_key }">
					<div align="right">
						<a href="../login/loginCheck.html?PAGE=/write/noticeInputForm.html" class="btn btn-info" role="button">write</a>
					</div>	
				</c:when>
				<c:otherwise>
					
				</c:otherwise>
			</c:choose>
			
		</div>		
	</div>
</body>
</html>