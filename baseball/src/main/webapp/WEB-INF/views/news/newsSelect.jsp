<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="w3-main" style="margin-left:250px ">
   <div class="w3-row w3-padding-48 w3-col m12 l9  ">
	 <div class="w3-container ">
	   <h1 class="w3-text-teal w3-center w3-margin-bottom w3-card-4"><strong>뉴스 기사</strong></h1>
	   <table class="w3-card-4 w3-table w3-bordered">
	   
	   	<tr>
	   		<th>제목</th><td>${news.t_news }</td>
	   	</tr>
	   	<tr>
	   		<th>출처</th><td>${news.n_from }</td>
	   		<th>작성일</th><td><fmt:formatDate value="${news.n_date }"></fmt:formatDate></td>	   		
	   	</tr>
	   	<tr>
	   		<th>내용</th><td>${news.c_news }</td>
	   	</tr>	
	   </table>
	   	<br><br>
	   	<form name="frm" action="" class="w3-center">
	   		<input type="button" value="수정하기" onclick="location.href='/baseball/news/newsUpdate.cnu?nno=${news.nno}'" class="w3-blue">
	   		<input type="button" value="목록" onclick="location.href='/baseball/'">
	   		<input type="button" value="삭제하기" class="w3-red" onclick="location.href='/baseball/news/newsDelete.cnu?nno=${news.nno}'">
	   	</form>
     </div>
   </div>
</div>
	   