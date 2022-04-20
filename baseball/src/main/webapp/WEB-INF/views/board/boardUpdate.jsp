<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="w3-main" style="margin-left:250px ">
   <div class="w3-row w3-padding-48 w3-col m12 l9  ">
	 <div class="w3-container ">
	   <h1 class="w3-text-teal w3-center w3-margin-bottom w3-card-4"><strong>게시글 수정</strong></h1>
	   <form name="frm" method="post" action="/baseball/board/UpdateFin.cnu">
	   		<input type="hidden" name="brdno" value="${board.brdno }">
		   <table class="w3-card-4 w3-table w3-bordered">
				<tr>
					<th>제목</th>
					<td><input type="text" name="brdtitle" value="${board.brdtitle }"></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${board.nickname }</td>
				</tr>
				<tr>
					<th>작성일</th><td><fmt:formatDate value="${board.wdate }"></fmt:formatDate></td>	
				</tr>   		
				<tr>
					<th>내용</th>
					<td><textarea rows="5" cols="110" name="content" >${board.content }</textarea></td>
				</tr>	
		   </table>
		   <br><br>
		   <div class="w3-center">
		   		<input type="submit" value="수정" onclick="return boardCheck()">
		   		<input type="button" value="목록" onclick="location.href='/baseball/board/board.cnu'">
	   		</div>
	   </form>
     </div>
   </div>
</div>