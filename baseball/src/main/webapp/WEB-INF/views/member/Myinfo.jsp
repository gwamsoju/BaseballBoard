<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<title>YA9.com</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="/baseball/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/baseball/js/main.js"></script>
<link rel="stylesheet" type="text/css" href="/baseball/css/kingdom.css"></link>
<style>
html,body{font-family: "Roboto", sans-serif;}
.w3-sidebar {
  z-index: 3;
  width: 250px;
  top: 43px;
  bottom: 0;
  height: inherit;
}

html, body {
	margin-bottom: 0px;
	padding-bottom: 0px;
	height: 100%;
	width: 100%;
}
.hidden {
  visibility: hidden;
}
</style>
<body class="w3-display-container ">
<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-theme w3-top w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-right w3-hide-large w3-hover-white w3-large w3-theme-l1" href="javascript:void(0)" onclick="w3_open()"><i class="fa fa-bars"></i></a>
    <a href="/baseball" class="w3-bar-item w3-button w3-theme-l1 w3-large">HOME</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-white"></a>

  </div>
</div>

<!-- Sidebar -->
<nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="Close Menu">
    <i class="fa fa-remove"></i>
  </a>
  <h4 class="w3-bar-item w3-xxxlarge"><b>Menu</b></h4>
  <a class="w3-bar-item w3-button w3-hover-black w3-xlarge" href="#">PlayerInfo</a>
  <a class="w3-bar-item w3-button w3-hover-black w3-xlarge" href="#" id="bbtn">Board</a>
   <div class="w3-container  w3-padding-12">
		<h4 class="w3-xxxlarge w3-"><b>LINK</b></h4>
		<a href="https://www.koreabaseball.com" class="w3-button w3-hover-black w3-large w3-bar w3-left-align " style="text-decoration:none;" target="_" >대한야구협회</a><br>
		<a href="https://www.ktwiz.co.kr/" class="w3-button w3-hover-black w3-large w3-bar w3-left-align " style="text-decoration:none;" target="_"  >KT위즈</a><br>
		<a href="https://www.doosanbears.com/" class="w3-button w3-hover-black w3-large w3-bar w3-left-align " style="text-decoration:none;" target="_">두산베어스</a><br>
		<a href="http://www.ssglanders.com/main" class="w3-button w3-hover-black w3-large w3-bar w3-left-align " style="text-decoration:none;" target="_">SSG랜더스</a><br>
		<a href="https://www.lgtwins.com/" class="w3-button w3-hover-black w3-large w3-bar w3-left-align " style="text-decoration:none;" target="_">엘지트윈스</a><br>
		<a href="https://www.hanwhaeagles.co.kr/index.do" class="w3-button w3-hover-black w3-large w3-bar w3-left-align " style="text-decoration:none;" target="_">한화이글스</a><br>
		<a href="http://www.samsunglions.com/" class="w3-button w3-hover-black w3-large w3-bar w3-left-align " style="text-decoration:none;" target="_">삼성라이온즈</a><br>
		<a href="https://tigers.co.kr/" class="w3-button w3-hover-black w3-large w3-bar w3-left-align " style="text-decoration:none;" target="_">기아타이거즈</a><br>
		<a href="http://www.giantsclub.com/html/" class="w3-button w3-hover-black w3-large w3-bar w3-left-align " style="text-decoration:none;" target="_">롯데자이언츠</a><br>
		<a href="https://www.heroesbaseball.co.kr/index.do" class="w3-button w3-hover-black w3-large w3-bar w3-left-align " style="text-decoration:none;" target="_">키움히어로즈</a><br>
		<a href="https://www.ncdinos.com/homepage.do" class="w3-button w3-hover-black w3-large w3-bar w3-left-align " style="text-decoration:none;" target="_">NC다이노스</a>													
    </div>
     <div class="w3-container w3-theme-l1">
      <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
    </div>
</nav>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3-main" style="margin-left:250px ">
  <div class="w3-row w3-padding-48 w3-col m9  ">
	   <div class="w3-card-4 w3-border">
	   <h1 class="w3-center">${DATA.mname} 회원님의 정보</h1>
	   	<div class="w3-col w3-border-bottom pdb10">
	<c:if test="${not empty SID and (DATA.id eq SID) }">
			<form method="post" action="" id="frm2">
				<input type="hidden" name="id" value="${SID}">
			</form>
			<span class="w3-cell m2 w3-button w3-large w3-orange w3-hover-deep-orange w3-left mt0 btnBox" id="iebtn">정보수정</span>
			<span class="w3-cell m2 w3-button w3-large w3-red w3-hover-pale-red w3-right mt0 btnBox" id="dbtn">탈 퇴</span>
	</c:if>
		</div>
			<div class="w3-rest pdr10">
				<div class="w3-col w3-display-container contBox">
					<div class="w3-col w3-display-middle">
						<div class="w3-col w3-text-grey ft18px mh3"><span class="w3-third w3-right-align">회원번호 : </span><span class="w3-twothird w3-center" id="no">${DATA.mno}</span></div>
						<div class="w3-col w3-text-grey ft18px mh3"><span class="w3-third w3-right-align">회원이름 : </span><span class="w3-twothird w3-center">${DATA.mname}</span></div>
						<div class="w3-col w3-text-grey ft18px mh3"><span class="w3-third w3-right-align">아 이 디  : </span><span class="w3-twothird w3-center">${DATA.id}</span></div>
						<div class="w3-col w3-text-grey ft18px mh3"><span class="w3-third w3-right-align">성별       : </span><span class="w3-twothird w3-center">
							<c:if test="${DATA.grd == 'M'}">남자</c:if>
							<c:if test="${DATA.grd ==  'F'}">여자</c:if>
						</span></div>
						
						<div class="w3-col w3-text-grey ft18px mh3"><span class="w3-third w3-right-align">선호구단 : </span><span class="w3-twothird w3-center">${DATA.favoteam}</span></div>
						<div class="w3-col w3-text-grey ft18px mh3"><span class="w3-third w3-right-align">등급       : </span><span class="w3-twothird w3-center">${DATA.grade}</span></div>
					</div>
				</div>
			</div>
   		</div>
	</div>	
 </div>
  <!-- Pagination -->
 	 

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

