<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%-- pageContext를 이용하여 request객체를 얻고 얻어진 request객체를 이용하여   contextPath를 얻어 변수에 저장
<c:set var="변수명"       value="값" />  --%>        
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
*{
	margin:0;
	padding:0;
}
input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip:rect(0,0,0,0);
	border: 0;
}
#product_img_label{
	border:1px black solid;
}

#detailScrollbar {
	display:inline-block;
	overflow-y:hidden;
	overflow-x:auto;
	height:160px;
	white-space:nowrap;
	width:50%; 
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	
});
</script>   
</head>
<body>
	<div id="product_selectList">
		<select id="dae" name="dae" size ="10" style="width:200px;height:200px;">
			<option value="01">과일</option>
			<option value="02">채소</option>
			<option value="03">잡곡/견과</option>
			<option value="04">정육/계란류</option>
			<option value="05">수산물/건해산</option>
			<option value="06">우유/유제품/유아식</option>
			<option value="07">냉장/냉동/간편식</option>
			<option value="08">김치/반찬/밀키트</option>
			<option value="09">생수/음료/주류</option>
			<option value="10">커피/원두/차</option>
			<option value="11">라면/면류/즉석식품/통조림</option>
			<option value="12">장류/양념/가루/오일</option>
			<option value="13">과자/시리얼/빙과/떡</option>
			<option value="14">베이커리/잼/샐러드</option>
			<option value="15">건강식품</option>
			<option value="16">친환경/유기농</option>
		</select>
		<select id="jung" name="jung" size ="10" style="width:200px;height:200px;">
		</select>
		<select id="product" name="product" size ="10" style="width:200px;height:200px;">
		</select>
	</div>
	
	<div id="product_newCh">
		<input type="button" value="새 상품등록" />
		<input type="button" value="상품 변경" />
	</div>
	<div id="product_detail">
		<form action="" method="post">
		<table style="width:1000px">
			<tr>
				<th width="30%"><label for="product_name">상품명</label></th>
				<td width="70%"><input type="text" id="product_name" placeholder="상품명을 입력하세요" /></td>
			</tr>
			<tr>
				<th width="30%"><label for="product_price">가격</label></th>
				<td width="70%"><input type="text" id="product_price" placeholder="가격을 입력하세요" /></td>
			</tr>
			<tr>
				<th width="30%">상품 이미지 업로드</th>
				<td width="70%">
					<input type="button" value="+" />
					<label for="product_img"  id="product_img_label">이미지 업로드</label>
					<input type="file" id="product_img" name="product_img">
					
					<br/>
					<input type="button" value="-" />
					<label for="product_img"  id="product_img_label">이미지 업로드</label>
					<input type="file" id="product_img" name="product_img">
					
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" id="previous_product_img" value="이전이미지">
					<img src="http://placehold.it/500x500" /> 
					<input type="button" id="next_product_img" value="다음이미지">				
				</td>
			</tr>
			
			<tr>
				<th width="30%">상품 상세설명 업로드</th>
				<td width="70%">
					<input type="button" value="+" />
					<label for="product_detailImg"  id="product_img_label">상품 설명</label>
					<input type="file" id="product_detailImg" name="product_img">
					<br/>
					<input type="button" value="-" />
					<label for="product_img"  id="product_img_label">상품 설명</label>
					<input type="file" id="product_img" name="product_img">
				</td>
			</tr>
			<tr>
			
			</tr>
			<tr>
				<td colspan="2">
					<div id="detailScrollbar">
						<img src="http://placehold.it/150x150" />
						<img src="http://placehold.it/150x150" />
						<img src="http://placehold.it/150x150" />
						<img src="http://placehold.it/150x150" />
						<img src="http://placehold.it/150x150" />
						<img src="http://placehold.it/150x150" />
						<img src="http://placehold.it/150x150" />
						<img src="http://placehold.it/150x150" />
						<img src="http://placehold.it/150x150" />
						<img src="http://placehold.it/150x150" />
					</div>
				</td> 
			</tr>
			<tr>
				<td colspan="2">
					<img src="http://placehold.it/500x500" />
				</td>
			</tr>
		</table>
		<input type="submit" value="등록">
		<input type="submit" value="변경">
		</form>
	</div>
</body>
</html>