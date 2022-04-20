<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../include/header.jsp"%>
<div class="w3-main" style="margin-left:250px ">
   <div class="w3-row w3-padding-48 w3-col m12 l9  ">
	 <div class="w3-container ">
	   <h1 class="w3-text-teal w3-center w3-margin-bottom w3-card-4"><strong>BOARD</strong></h1>
		<div class="w3-card-4 w3-center ">
			<table class="w3-table-all">
			<tr>
				<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>조회수</th>
			</tr>

			<c:forEach var="BoardList" items="${boardList }">
			<tr>
				<td>${BoardList.rn }</td>
				<td><a href="/baseball/board/Select.cnu?brdno=${BoardList.brdno }" >${BoardList.brdtitle }</a></td>
				<td>${BoardList.nickname }</td>
				<td>
					<fmt:formatDate value="${BoardList.wdate }"></fmt:formatDate>
				</td>
				<td>${BoardList.clicknum }</td>
			</tr>
			</c:forEach>
		</table>
		</div>
		<br>
		<div class="w3-button w3-teal w3-right" id="wbtn">게시글 작성</div>
	  </div>
	</div>
</div>
	