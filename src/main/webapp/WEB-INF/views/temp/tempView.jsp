<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="pageObject" tagdir="/WEB-INF/tags" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Temp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="/js/util.js"></script>
<script type="text/javascript" src="/js/bookmark.js"></script>
<link href="/resources/css/bookmark.css" rel="stylesheet"/>
<script type="text/javascript">
$(function () {
	
	var login = $(".login").text();
	var id = $(".idtest").text();

	$("#testBtn").click(function() {
		
		
		
		if(login != id) {

			// alert("false");
			
			return false;
			
		}
		
		alert("click");
		alert(login);
		alert(id);
		
	});

})
</script>
</head>
<body>
 <div class="container">
  <h1>게시판 글 보기</h1>
  
  <button type="button" id="like" class="like-button">like</button><br>
<!--   <button class="like-button"></button><br> -->
  <button type="button" class="pp-bookmark-btn btn btn-default btn-lg pull-right" data-context="investor" data-context-action="view" data-context-id="7">
</button>

<div id="log"></div>
  <ul class="list-group">
   <li class="list-group-item row">
    <div class="col-md-2 title_label">가게명</div>
    <div class="col-md-10">${vo.shopName }</div>
   </li>
   <li class="list-group-item row">
    <div class="col-md-2 title_label" >사업자번호</div>
    <div class="col-md-10" id="viewShopNo">${vo.shopNo }</div>
   </li> 
   <li class="list-group-item row">
    <div class="col-md-2 title_label">총 자리</div>
    <div class="col-md-2 pull-rigth">
    <button id="more" >&#43; 더보기</button>
    </div>
    <div class="col-md-8"><pre>${vo.total }</pre></div>
   </li>
   <li class="list-group-item row">
    <div class="col-md-2 title_label">현재 자리</div>
    <div class="col-md-10">${vo.now }</div>
    <button type="button" class="pBtn">&#43;</button><br>
    <button type="button" class="mBtn">&#45;</button><br>
    <button type="button" class="mBtn" id="testBtn">test</button><br>
   </li>
   <li class="list-group-item row">
    <div class="col-md-2 title_label">대기열</div>
    <div class="col-md-10">${vo.wait }</div>
    <span class="idtest">test</span>
   </li>
  </ul>
 </div>
 <div class="modal fade waitModal" id="wait" role="dialog"></div>
 <ul>
  <li class="login">${login.id }</li>
 </ul>
</body>
</body>
</html>