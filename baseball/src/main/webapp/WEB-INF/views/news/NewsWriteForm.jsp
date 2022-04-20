<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<script type="text/javascript" src="/baseball/js/news.js"></script>
<div class="w3-main" style="margin-left:250px ">
	   <div class="w3-row w3-padding-48 w3-col m12 l9  ">
		 <div class="w3-container ">
		   <h1 class="w3-text-teal w3-center w3-margin-bottom w3-card-4"><strong>News Write</strong></h1>
		   	<form name="frm" action="/baseball/news/newsWriteFin.cnu" method="post" class="w3-container w3-card-4">
				<h2><label id="t_news" class="w3-text-teal">제목</label></h2>
				<input class="w3-input" type="text" name="t_news" id="t_news" placeholder="제목을 입력하세요.">
				
				<h2><label id="n_from" class="w3-text-teal">출처</label></h2>
				<input class="w3-input" type="text" name="n_from" id="n_from" >
				
				<h2><label id="content" class="w3-text-teal">내용</label></h2>
				<textarea rows="10" cols="118" name="c_news" id="c_news" placeholder="내용을 입력하세요."></textarea>	
				
				<div class="w3-center w3-margin-bottom">
					<br>
					<input type="submit" value="작성" onclick="return newsCheck()">
					<input type="reset" value="다시 작성">
					<input type="button" value="목록" onclick="location.href='/baseball/'">
				</div>
		</form>
		  </div>
		</div>
	</div>