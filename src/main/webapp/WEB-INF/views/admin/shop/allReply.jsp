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
				<h2>상품 소감</h2>
				<ul>
					<c:forEach items="${reply}" var="reply">
						<li>
							<div class="replyInfo">
								<p>
									<span>작성자</span>${reply.userName} (${reply.userId})
								</p>
								<p>
									<span>작성된 상품</span><a href="/shop/view?n=${reply.gdsNum}">바로가기</a>
								</p>
							</div>
							<div class="replyContent">
								${reply.repCon}
							</div>
							<div class="replyControll">
								<form role="form" method="post">
									<input type="hidden" name="repNum" value="${reply.repNum}">
									<button type="submit" class="delete_${reply.repNum}_btn">삭제</button>
								</form>
							</div>
						</li>
					</c:forEach>
				</ul>
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
