<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>SHOP</title>
	<style>
		body { margin:0; padding:0; font-family:'맑은 고딕', verdana; }
		a { color:#05f; text-decoration:none; }
		a:hover { text-decoration:underline; }
		
		h1, h2, h3, h4, h5, h6 { margin:0; padding:0; }
		ul, lo, li { margin:0; padding:0; list-style:none; }

		/* ---------- */
		
		div#root { width:900px; margin:0 auto; }
		header#header { }
		nav#nav { }
		section#container { }
		section#content { float:right; width:700px; }
		aside#aside { float:left; width:180px; }
		section#container::after { content:""; display:block; clear:both; } 
		footer#footer { background:#eee; padding:20px; }
		
		/* ---------- */
		 
		header#header div#header_box { text-align:center; padding:30px 0; }
		header#header div#header_box h1 { font-size:50px; }
		header#header div#header_box h1 a { color:#000; }
		
		nav#nav div#nav_box { font-size:14px; padding:10px; text-align:right; }
		nav#nav div#nav_box li { display:inline-block; margin:0 10px; }
		nav#nav div#nav_box li a { color:#333; }
		
		section#container { }
		
		aside#aside h3 { font-size:22px; margin-bottom:20px; text-align:center; }
		aside#aside li { font-size:16px; text-align:center; }
		aside#aside li a { color:#000; display:block; padding:10px 0; }
		aside#aside li a:hover { text-decoration:none; background:#eee; }

		aside#aside li { position:relative; }
		aside#aside li:hover { background:#eee; }   
		aside#aside li > ul.low { display:none; position:absolute; top:0; left:180px;  }
		aside#aside li:hover > ul.low { display:block; }
		aside#aside li:hover > ul.low li a { background:#eee; border:1px solid #eee; }
		aside#aside li:hover > ul.low li a:hover { background:#fff;}
		aside#aside li > ul.low li { width:180px; }		
		
		footer#footer { margin-top:100px; border-radius:50px 50px 0 0; }
		footer#footer div#footer_box { padding:0 20px; }
		
		section#content ul li { display:inline-block; margin:10px; }
		section#content div.goodsThumb img { width:200px; height:200px; }
		section#content div.goodsName { padding:10px 0; text-align:center; }
		section#content div.goodsName a { color:#000; }		
	</style>		
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
			<div id="container_box">
				<section id="content">
					<form role="form" method="post" autocomplete="off">
						<table>
							<tr>
								<th><label for="userId">아이디</label></th>
								<td><input type="email" id="userId" name="userId" required="required" /></td>
								<td rowspan="2">
									<button type="submit" id="signin_btn" name="signin_btn" style="width:80px; height:50px;">로그인</button>
									<c:if test="${msg == false}">
										<span style="color:#f00;">&nbsp;로그인에 실패하였습니다.</span>
									</c:if>
								</td>
							</tr>
							<tr>
								<th><label for="userPass">패스워드</label></th>
								<td><input type="password" id="userPass" name="userPass" required="required"/></td>
							</tr>
						</table>
					</form>
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