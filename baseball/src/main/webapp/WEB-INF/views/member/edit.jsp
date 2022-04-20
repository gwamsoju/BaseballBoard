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
<script type="text/javascript" src="/baseball/js/join.js"></script>
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
  <div class="w3-row w3-padding-48 w3-col m6 w3-display-middle">
	   <div class="w3-card-4 w3-border">
	   	  <h1 class="w3-center">내 정보 수정</h1>
		   	<div class="w3-col w3-border-bottom pdb10">
			  <form method="POST" action="/baseball/member/myInfoEditProc.cnu" name="frm" id="frm"
										class="w3-col w3-margin-top w3-margin-bottom w3-padding w3-card-4">

					<input type="hidden" name="mno" id="mno" value="${DATA.mno}">
					
					<div>
						<label for="name" class="w3-col s3 w3-right-align w3-margin-top clrgrey ft14 mgb10">회원이름 : </label>
						<span class="w3-col s8 mgl10 w3-input mgb10 w3-white" >${DATA.mname }</span>
					</div>
					<div>
						<label for="id" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">아 이 디 : </label>
						<span class="w3-col s8 mgl10 w3-input mgb10 w3-white" >${DATA.id }</span>
					</div>
					<div>
						<label for="pwd" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">비밀번호 : </label>
						<div class="w3-col s8 mgl10 mgb10">
							<input type="password" name="pwd" id="pwd" class="w3-col w3-input w3-border">
						</div>
					</div>
					<div>
						<label for="repw" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">pw check : </label>
						<div class="w3-col s8 mgl10 mgb10">
							<input type="password" name="repw" id="repw" class="w3-col w3-input w3-border">
							<span class="w3-col w3-text-red" id="repwmsg"># 비밀번호가 일치하지 않습니다.</span>
						</div>
					</div>
					<div>
						<label for="favoteam" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">응원 팀 : </label>
						<div class="w3-col s8 mgl10 mgb10">
							<select name="favoteam">
								<option value="KT">KT</option>
								<option value="두산">두산</option>
								<option value="삼성">삼성</option>
								<option value="LG">LG</option>
								<option value="키움">키움</option>
								<option value="SSG">SSG</option>
								<option value="NC">NC</option>
								<option value="롯데">롯데</option>
								<option value="기아">기아</option>
								<option value="한화">한화</option>
							</select>
						</div>
					</div>
					<div>
						<label class="w3-col s3 w3-right-align clrgrey ft14 mgb10">회원성별 : </label>
						<div class="w3-col s8 mgl10 mgb10 w3-center">
							${DATA.grd == 'M' ? '남 자' : '여 자'}
						</div>
					</div>
						<input type="reset" class="w3-half w3-deep-orange w3-hover-orange w3-button"  value="다시 작성">
						<input type="submit" class="w3-half w3-blue w3-hover-aqua w3-button" id="ebtn" value="정보수정">
				</form>
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

