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
		<a href="https://www.koreabaseball.com"  style="text-decoration:none;" target="_" >??????????????????</a><br>
		<a href="https://www.ktwiz.co.kr/"  style="text-decoration:none;" target="_"  >KT??????</a><br>
		<a href="https://www.doosanbears.com/"  style="text-decoration:none;" target="_">???????????????</a><br>
		<a href="http://www.ssglanders.com/main"  style="text-decoration:none;" target="_">SSG?????????</a><br>
		<a href="https://www.lgtwins.com/"  style="text-decoration:none;" target="_">???????????????</a><br>
		<a href="https://www.hanwhaeagles.co.kr/index.do"  style="text-decoration:none;" target="_">???????????????</a><br>
		<a href="http://www.samsunglions.com/"  style="text-decoration:none;" target="_">??????????????????</a><br>
		<a href="https://tigers.co.kr/"  style="text-decoration:none;" target="_">??????????????????</a><br>
		<a href="http://www.giantsclub.com/html/"  style="text-decoration:none;" target="_">??????????????????</a><br>
		<a href="https://www.heroesbaseball.co.kr/index.do" style="text-decoration:none;" target="_">??????????????????</a><br>
		<a href="https://www.ncdinos.com/homepage.do"  style="text-decoration:none;" target="_">NC????????????</a>													
    </div>
     <div class="w3-container w3-theme-l1">
      <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
    </div>
</nav>

		<div class="w3-display-middle">
	<div class=" w3-content w3-margin " style="width: 750px; height: 700px;">
		<!-- ????????? -->
		<h1 class="w3-dark-grey w3-center w3-padding w3-card-4">Ya9.com ????????????</h1>
		<form method="POST" action="" name="frm" id="frm"
			class="w3-col w3-margin-top w3-margin-bottom w3-padding w3-card-4">
			<div>
				<label for="mname" class="w3-col s3 w3-right-align w3-margin-top clrgrey ft14 mgb10">???????????? : </label>
				<input type="text" name="mname" id="mname" class="w3-col s8 w3-margin-top mgl10 w3-input w3-border mgb10" placeholder="?????? ??????">
			</div>
			<div>
				<label for="id" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">??? ??? ??? : </label>
				<div class="w3-col s8 mgl10">
					<input type="text" name="id" id="id" class="w3-col m3 w3-input w3-border mgb10" style="width: 370px;" placeholder="????????? ??????">
					<div class="w3-col w100 w3-button w3-blue w3-right" id="idck">id check</div>
					<span class="w3-col mgb10 w3-center" id="idmsg"></span>
				</div>
			</div>
			<div>
				<label for="pw" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">???????????? : </label>
				<div class="w3-col s8 mgl10 mgb10">
					<input type="password" name="pwd" id="pwd" class="w3-col w3-input w3-border" placeholder="???????????? ??????">
					<span class="w3-col w3-text-red" id="pwmsg"># ??????????????? 12345 ??? ???????????????.</span>
				</div>
			</div>
			<div>
				<label for="repw" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">???????????? ?????? : </label>
				<div class="w3-col s8 mgl10 mgb10">
					<input type="password" name="repw" id="repw" class="w3-col w3-input w3-border" placeholder="???????????? ??????">
					<span class="w3-col w3-text-red" id="repwmsg"># ??????????????? ???????????? ????????????.</span>
				</div>
			</div>
			<div>
				<label for="fteam" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">?????? ??? : </label>
				<div class="w3-col s8 mgl10 mgb10">
					<select id="favoteam" name="favoteam">
						<option value="KT">KT</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="LG">LG</option>
						<option value="??????">??????</option>
						<option value="SSG">SSG</option>
						<option value="NC">NC</option>
						<option value="??????">??????</option>
						<option value="KIA">KIA</option>
						<option value="??????">??????</option>
					</select>
				</div>
			</div>
			<!-- 
			<div class="w3-col">
			<div>
				<label for="fp" class="w3-col s3 w3-right-align clrgrey ft14 mgb10">?????? ?????? : </label>
				<div class="w3-col s8 mgl10 mgb10">
					<input type="text" name="fp" id="fp" class="w3-col w3-input w3-border" placeholder="???????????? ??????">
				</div>
			</div>
			</div>
			-->
			<div class="w3-col">
				<label class="w3-col s3 w3-right-align clrgrey ft14 mgb10">???????????? : </label>
				<div class="w3-col s8 mgl10 mgb10 w3-center">
					<div class="w3-half">
						<input type="radio" name="grd" id="mgen" class="w3-radio" value="M"> <label for="mgen"> ??????</label>
					</div>
					<div class="w3-half">
						<input type="radio" name="grd" id="fgen" class="w3-radio" value="F"> <label for="fgen"> ??????</label>
					</div>
				</div>
			</div>
		</form>
		
		<!-- ?????? ?????? -->
		<div class="w3-col w3-margin-top w3-card-4">
			<div class="w3-half w3-grey w3-hover-orange w3-button" id="rbtn">reset</div>  
			<div class="w3-half w3-dark-grey w3-hover-aqua w3-button" id="jbtn">join</div> 
		</div>
		</div>
	</div>
</body>
</html>