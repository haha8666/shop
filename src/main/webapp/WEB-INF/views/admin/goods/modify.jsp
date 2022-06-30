<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SHOP</title>
	
	<script src="/resources/jquery/jquery-3.6.0.min.js"></script>
	
	<link rel="stylesheet" href="/resources/bootstrap/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/bootstrap/bootstrap-theme.min.css">
	<script src="/resources/bootstrap/bootstrap.min.js"></script>
	<script src="/resources/ckeditor/ckeditor.js"></script>
	
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
				<h2>상품 수정</h2>
				
				<form role="form" method="post" autocomplete="off" enctype="multipart/form-data">
					<input type="hidden" name="gdsNum" value="${goods.gdsNum}"/>
					
					<div class="inputArea">
						<label>1차 분류</label>
						<select class="category1">
							<option value="">전체</option>
						</select>
						<label>2차 분류</label>
						<select class="category2" name="cateCode">
							<option value="">전체</option>
						</select>
					</div>
					
					<div class="inputArea">
						<label for="gdsName">상품명</label>
						<input type="text" id="gdsName" name="gdsName" value="${goods.gdsName}"/>
					</div>
					<div class="inputArea">
						<label for="gdsPrice">상품가격</label>
						<input type="text" id="gdsPrice" name="gdsPrice" value="${goods.gdsPrice}"/>
					</div>
					<div class="inputArea">
						<label for="gdsStock">상품수량</label>
						<input type="text" id="gdsStock" name="gdsStock" value="${goods.gdsStock}"/>
					</div>
					<div class="inputArea">
						<label for="gdsDes">상품소개</label>
						<textarea rows="5" cols="50" id="gdsDes" name="gdsDes">${goods.gdsDes}</textarea>
						<script>
							var ckeditor_config = {
								resize_enaleb : false,
								enterMode : CKEDITOR.ENTER_BR,
								shiftEnterMode : CKEDITOR.ENTER_P,
								filebrowserUploadUrl : "/admin/goods/ckUpload"
							};
						
							CKEDITOR.replace("gdsDes", ckeditor_config);
						</script>						
					</div>
					<div class="inputArea">
						<label for="gdsImg">이미지</label> 
						<input type="file" id="gdsImg" name="file" />
						<div class="select_img">
							<img src="${goods.gdsImg}" /> 
							<input type="hidden" name="gdsImg" value="${goods.gdsImg}" /> 
							<input type="hidden" name="gdsThumbImg" value="${goods.gdsThumbImg}" />
						</div>
						<script>
							$("#gdsImg").change(function() {
								if (this.files && this.files[0]) {
									var reader = new FileReader;
									reader.onload = function(data) {
										$(".select_img img").attr("src",data.target.result).width(500);
									}
									reader.readAsDataURL(this.files[0]);
								}
							});
						</script>
						<%=request.getRealPath("/") %>
					</div>
					<div class="inputArea">
						<button type="submit" id="update_Btn" class="btn btn-primary">완료</button>
						<button type="button" id="back_Btn" class="btn btn-warning">취소</button>
						<script>
							$("#back_Btn").click(function(){
								location.href="/admin/goods/view?n=" + ${goods.gdsNum};
							});
						</script>
					</div>
				</form>
			</div>
		</section>
				
		<footer id="footer">
			<div id="footer_box">
				<%@ include file="../include/footer.jsp" %>
			</div>
		</footer>	
		
	</div>
		
	<script>
		
		var select_cateCode = '${goods.cateCode}';
		var select_cateCodeRef = '${goods.cateCodeRef}';
		var select_cateName = '${goods.cateName}';

		if(select_cateCodeRef != null && select_cateCodeRef != '') {
			$(".category1").val(select_cateCodeRef);
			$(".category2").val(select_cateCode);
			$(".category2").children().remove();
			$(".category2").append("<option value='" + select_cateCode + "'>" + select_cateName + "</option>");
			$(".category2").append("<option value='" + select_cateCode + "'>" + select_cateName + "</option>");
		} else {
			$(".category1").val(select_cateCode);
			$(".category2").append("<option value='" + select_cateCode + "' selected='selected'>전체</option>");
		}		
	</script>
	<script>
		var regExp = /[^0-9]/gi;
	
		$("#gdsPrice").keyup(function(){ numCheck($(this)); });
		$("#gdsStock").keyup(function(){ numCheck($(this)); });
	
		function numCheck(selector) {
			var tempVal = selector.val();
			selector.val(tempVal.replace(regExp, ""));
		}
	</script>	
</body>
</html>
