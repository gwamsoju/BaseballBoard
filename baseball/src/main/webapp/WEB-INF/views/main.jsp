<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../views/include/header.jsp" %>
<script type="text/javascript">
	$(document).ready(function(){
		$('.datafr .w3-hover-lime').css('cursor', 'pointer').odd().addClass('w3-light-grey');
		$('.datafr > div').last().addClass('w3-margin-bottom');
		$('.w3-button.pbtn').click(function(){
			var pno = $(this).html();
			
			if(pno == 'pre'){
				pno = '${PAGE.startPage - 1}';
			} else if(pno == 'next'){
				pno = '${PAGE.endPage + 1}';
			}
			
			$('#nowPage').val(pno);
			$('#frm').submit();
		});
		$("input").focus(function(){
			$(this).css("background-color","yellow");
		});
		$("input").blur(function(){
			$(this).css("background-color","white");
		});
	});
</script>
<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3-main" style="margin-left:250px ">
	   <div class="w3-row w3-padding-48 w3-col m12 l9  ">
		 <div class="w3-container ">
		   <h1 class="w3-text-teal w3-center w3-margin-bottom w3-card-4"><strong>TODAY NEWS</strong></h1>
		   		<c:if test="${not empty SID}">
			   		<form action="/baseball/news/writeNews.cnu">
					 	<input type="submit" value="뉴스 작성" class="w3-button w3-blue w3-hover-aqua w3-right" >
					</form>
				</c:if>
			<c:forEach var="data" items="${LIST}">
				<div class="w3-col w3-border-left w3-border-right w3-border-bottom w3-card-4 mgb10" id="list">
					<a class=" w3-left  mgb20" style="font-size: 20px;" onclick="location.href='/baseball/news/newsSelect?nno=${data.nno}'"><b>${data.t_news}</b></a>
					<span class=" w3-left  mgb20 " style="font-size: 15px;">${data.c_news}</span>
					<div>
						<span class=" mgb20 w3-col m9" style="font-size:10px">출처 : ${data.n_from}</span>
						<span class=" mgb20 w3-col m3" style="font-size:10px">작성일: ${data.wdate}</span>
					</div>
				</div>
			</c:forEach>
		  </div>
		</div>

	
     <!--  로그인 창 -->
    
     <div class="w3-row w3-padding-48 w3-col m12 l3 ">
    	<c:if test="${empty SID }"> <!--  로그인을 안했을 경우  -->
		    <div class=" w3-container w3-card " id="login_win">
		      <div class="w3-teal w3-padding w3-xlarge w3-margin w3-center">
		      	Login
		      </div>
		     <form method="POST" class="w3-col w3-padding-16">
		      	<div class="w3-col">
			      	<label for="id" class="w3-col m3  w3-text-grey w3-center" ><h3>ID : &nbsp;</h3></label>
			      	<input type="text" name="id" id="id" placeholder="아이디 입력 !"
			      		class="w3-col m9 w3-input w3-border w3-round-4 ">
		      	</div>
		      	<div class="w3-col">
			      	<label for="pwd" class="w3-col m3 w3-text-grey w3-center"><h3>PW : &nbsp;</h3></label>
			      	<input type="password" name="pwd" id="pwd" placeholder="패스워드 입력 !"
			      		class="w3-col m9 w3-input w3-border w3-round-4">
		      	</div>	
		      	<div class="w3-col">
		      		<div class="w3-button w3-red w3-right" id="lbtn">LOGIN</div>
		      		<div class="w3-button w3-teal" id="jbtn">회원가입</div>
				</div>
			</form>
			</div>
		 	<div class="w3-third w3-container w3-card " id="info_win" style="display: none;">
				<h2 class="w3-center"><span id="vid">${Username}</span> 님 안녕하세요!</h2>
				<div class="w3-col w3-border-bottom pdb10">
					<span class="w3-cell m2 w3-button w3-small w3-red w3-hover-light-green w3-right mt0" id="obtn">LogOut</span>
				</div>
			</div>
		</c:if>
		
	</div>	
 </div>
  <!-- Pagination -->
	 <div class="w3-container w3-center w3-padding-32">
	    <div class="w3-bar w3-border w3-round w3-margin-top">
			<c:if test="${PAGE.startPage == 1}">
						<span class="w3-bar-item w3-grey">이전</span>
			</c:if>
			<c:if test="${PAGE.startPage != 1}">
						<span class="w3-bar-item w3-button w3-hover-lime pbtn">이전</span>
			</c:if>
		<c:forEach var="page" begin="${PAGE.startPage}" end="${PAGE.endPage}">
			<c:if test="${PAGE.nowPage == page}">
						<span class="w3-bar-item w3-button w3-hover-lime w3-green pbtn">${page}</span>
			</c:if>
			<c:if test="${PAGE.nowPage != page}">
						<span class="w3-bar-item w3-button w3-hover-lime pbtn">${page}</span>
			</c:if>
		</c:forEach>
			<c:if test="${PAGE.endPage == PAGE.totalPage}">
						<span class="w3-bar-item w3-grey">다음</span>
			</c:if>
			<c:if test="${PAGE.endPage != PAGE.totalPage}">
						<span class="w3-bar-item w3-button w3-hover-lime pbtn">다음</span>
			</c:if>
		</div>
	</div>
<!--  	
  <footer id="myFooter" class="w3-display-bottomright w3-center" style="width: 100%; position: fixed;">
   
  </footer>
-->
<!-- END MAIN -->


<script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
    overlayBg.style.display = "none";
  } else {
    mySidebar.style.display = 'block';
    overlayBg.style.display = "block";
  }
}

// Close the sidebar with the close button
function w3_close() {
  mySidebar.style.display = "none";
  overlayBg.style.display = "none";
}
</script>

</body>
</html>

