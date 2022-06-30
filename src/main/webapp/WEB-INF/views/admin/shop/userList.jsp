<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SHOP</title>
	
	<script src="/resources/jquery/jquery-3.6.0.min.js"></script>
	
	<link rel="stylesheet" href="/resources/bootstrap/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/bootstrap/bootstrap-theme.min.css">
	<script src="/resources/bootstrap/bootstrap.min.js"></script>
	
	<link rel="stylesheet" href="/resources/css/admin/default.css"/>
</head>
<body>
	<div id="root">
		<header id="header">
			<div id="header_box">
				<%@ include file="../include/header.jsp" %>
			</div>
		</header>
		
		<nav id="nav">
			<div id="nav_box">
				<%@ include file="../include/nav.jsp" %>
			</div>
		</nav>

		<section id="container">
			<aside>
				<%@ include file="../include/aside.jsp" %>
			</aside>
			<div id="container_box">
				<h2>유저 목록</h2>
				<section id="content">
					<table>
						<thead>
							<tr>
								<td style="font-weight:bold;">이름</td>
								<td style="font-weight:bold;">아이디</td>
								<td style="font-weight:bold;">전화번호</td>
								<td style="font-weight:bold;">가입일</td>
								<td style="font-weight:bold;">주소</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${userList}" var="userList">
								<tr>
									<td>${userList.userName}</td>
									<td>${userList.userId}</td>
									<td>${userList.userPhon}</td>
									<td><fmt:formatDate value="${userList.regiDate}" pattern="yyyy-MM-dd"/></td>
									<td>${userList.userAddr1} ${userList.userAddr1} ${userList.userAddr1}</td>
								</tr>
							</c:forEach>
							
						</tbody>
					</table>
				</section>
			</div>
		</section>

		<footer id="footer">
			<div id="footer_box">
				<%@ include file="../include/footer.jsp" %>
			</div>
		</footer>	
		
	</div>

</body>
</html>
