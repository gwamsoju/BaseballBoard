$(document).ready(function(){
	//회원가입 클릭 이벤트
	
	//로그인 버튼 클릭 이벤트
	$('#lbtn').click(function(){
		// 1. 입력된 아이디와 비밀번호를 읽어온다.
		var sid = $('#id').val();
		var spw = $('#pw').val();
		// 2. 유효성 검사를 해서 처리한다.
		if(!(sid && spw)){
			// 둘 중 하나라도 입력되지 않은 경우 
			return;
		}
		else{
			// 둘 모두 입력한 경우 
		}
	});
	
});