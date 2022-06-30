<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul>
	<c:if test="${member == null}">
		<li>
			<h4><a href="/member/signin">로그인</a></h4>
		</li>
		<li>
			<h4><a href="/member/signup">회원가입</a></h4>
		</li>
	</c:if>
	<c:if test="${member != null}">
		<li>
			<h4><span style="color:#55FF;">${member.userName}</span>님 환영합니다.</h4>
		</li>
		<c:if test="${member.verify == 9}">
			<li>
				<h4><a href="/admin/index">관리자 화면</a></h4>
			</li>
		</c:if>
		<li>
			<h4><a href="/shop/cartList">장바구니</a></h4>
		</li>
		<li>
			<h4><a href="/shop/orderList">주문 내역</a></h4>
		</li>
		<li>
			<h4><a href="/member/signout">로그아웃</a></h4>
		</li>
	</c:if>
</ul>
