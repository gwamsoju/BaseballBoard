<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/baseball/css/w3.css">
<link rel="stylesheet" type="text/css" href="/baseball/css/user.css">
<script type="text/javascript" src="/baseball/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/baseball/js/w3color.js"></script>
<script type="text/javascript" src="/baseball/js/join.js"></script>
<style type="text/css">
	.avtimg {
		width: 100px;
		height: 100px;
	}
	.avtbox {
		display: inline-block;
		width: 102px;
		height: 117px;
	}
	#pwmsg, #repwmsg, #avtfr, #idmsg {
		display: none;
	}
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
	
</style>
<script type="text/javascript">
</script>
</head>
<body>
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
  <a class="w3-bar-item w3-button w3-hover-black w3-xlarge" href="#">Board</a>
   <div class="w3-container  w3-padding-12">
		<h4 class="w3-xxxlarge w3-"><b>LINK</b></h4>
		<a href="https://www.koreabaseball.com"  style="text-decoration:none;" target="_" >대한야구협회</a><br>
		<a href="https://www.ktwiz.co.kr/"  style="text-decoration:none;" target="_"  >KT위즈</a><br>
		<a href="https://www.doosanbears.com/"  style="text-decoration:none;" target="_">두산베어스</a><br>
		<a href="http://www.ssglanders.com/main"  style="text-decoration:none;" target="_">SSG랜더스</a><br>
		<a href="https://www.lgtwins.com/"  style="text-decoration:none;" target="_">엘지트윈스</a><br>
		<a href="https://www.hanwhaeagles.co.kr/index.do"  style="text-decoration:none;" target="_">한화이글스</a><br>
		<a href="http://www.samsunglions.com/"  style="text-decoration:none;" target="_">삼성라이온즈</a><br>
		<a href="https://tigers.co.kr/"  style="text-decoration:none;" target="_">기아타이거즈</a><br>
		<a href="http://www.giantsclub.com/html/"  style="text-decoration:none;" target="_">롯데자이언츠</a><br>
		<a href="https://www.heroesbaseball.co.kr/index.do" style="text-decoration:none;" target="_">키움히어로즈</a><br>
		<a href="https://www.ncdinos.com/homepage.do"  style="text-decoration:none;" target="_">NC다이노스</a>													
    </div>
     <div class="w3-container w3-theme-l1">
      <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
    </div>
</nav>

		<div class="w3-display-middle">
	<div class=" w3-content w3-margin " style="width: 750px; height: 700px;">
		<!-- 타이틀 -->
		<h1 class="w3-dark-grey w3-center w3-padding w3-card-4">Ya9.com 회원가입</h1>
		<form method="POST" action="" name="frm" id="frm"
			class="w3-col w3-margin-top w3-margin-bottom w3-padding w3-card-4">
			<div>
				<label for="mname" class="w3-col s3 w3-right-align w3-margin-top clrgrey ft14 mgb10">회원이름 : </label>
				<input type="text" name="mname" id="mname" class="w3-col s8 w3-margin-top mgl10 w3-input w3-border mgb10" placeholder="이름 입력">
			</div>
			<div>
				<label for="id" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">아 이 디 : </label>
				<div class="w3-col s8 mgl10">
					<input type="text" name="id" id="id" class="w3-col m3 w3-input w3-border mgb10" style="width: 370px;" placeholder="아이디 입력">
					<div class="w3-col w100 w3-button w3-blue w3-right" id="idck">id check</div>
					<span class="w3-col mgb10 w3-center" id="idmsg"></span>
				</div>
			</div>
			<div>
				<label for="pw" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">비밀번호 : </label>
				<div class="w3-col s8 mgl10 mgb10">
					<input type="password" name="pwd" id="pwd" class="w3-col w3-input w3-border" placeholder="비밀번호 입력">
					<span class="w3-col w3-text-red" id="pwmsg"># 비밀번호는 12345 만 가능합니다.</span>
				</div>
			</div>
			<div>
				<label for="repw" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">비밀번호 확인 : </label>
				<div class="w3-col s8 mgl10 mgb10">
					<input type="password" name="repw" id="repw" class="w3-col w3-input w3-border" placeholder="비밀번호 확인">
					<span class="w3-col w3-text-red" id="repwmsg"># 비밀번호가 일치하지 않습니다.</span>
				</div>
			</div>
			<div>
				<label for="fteam" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">응원 팀 : </label>
				<div class="w3-col s8 mgl10 mgb10">
					<select id="favoteam" name="favoteam">
						<option value="KT">KT</option>
						<option value="두산">두산</option>
						<option value="삼성">삼성</option>
						<option value="LG">LG</option>
						<option value="키움">키움</option>
						<option value="SSG">SSG</option>
						<option value="NC">NC</option>
						<option value="롯데">롯데</option>
						<option value="KIA">KIA</option>
						<option value="한화">한화</option>
					</select>
				</div>
			</div>
			<!-- 
			<div class="w3-col">
			<div>
				<label for="fp" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">최애 선수 : </label>
				<div class="w3-col s8 mgl10 mgb10">
					<input type="text" name="fp" id="fp" class="w3-col w3-input w3-border" placeholder="선수이름 입력">
				</div>
			</div>
			</div>
			-->
			<div class="w3-col">
				<label class="w3-col s3 w3-right-align clrgrey ft14 mgb10">회원성별 : </label>
				<div class="w3-col s8 mgl10 mgb10 w3-center">
					<div class="w3-half">
						<input type="radio" name="grd" id="mgen" class="w3-radio" value="M"> <label for="mgen"> 남자</label>
					</div>
					<div class="w3-half">
						<input type="radio" name="grd" id="fgen" class="w3-radio" value="F"> <label for="fgen"> 여자</label>
					</div>
				</div>
			</div>
		</form>
		
		<!-- 버튼 태그 -->
		<div class="w3-col w3-margin-top w3-card-4">
			<div class="w3-half w3-grey w3-hover-orange w3-button" id="rbtn">reset</div>  
			<div class="w3-half w3-dark-grey w3-hover-aqua w3-button" id="jbtn">join</div> 
		</div>
		</div>
	</div>
</body>
</html>