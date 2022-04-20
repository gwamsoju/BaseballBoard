$(document).ready(function(){
	$('#lbtn').click(function(){
		var sid = $('#id').val(); // main.jsp에서 name id에서 받아온 값을 sid에 저장 .. .
		var spw = $('#pwd').val();
		
		if(!(sid && spw)) {
			return;
		}
		
		$.ajax({
			url: '/baseball/member/loginProc.cnu',
			type: 'post',
			dataType: 'json',
			data: {
				id: sid,
				pwd: spw
				
			},
			success: function(obj){
				if(obj.cnt == 1){
					$('#vid').val(sid);
					alert(' 환영합니다 !');
					$('#login_win').css('display', 'none');
					$('#info_win').css('display', 'block');
					
				} else {
					$('#id').val('');
					$('#pwd').val('');
					alert('로그인 실패 ');
				}
			},
			error: function(){
				alert('### 통신실패 ###');
			}
		});
	});
	
	$('.w3-button').click(function(){
		var tmp = $(this).attr('id');
		var spath = '';
		switch(tmp){
			case 'obtn':
				spath = '/baseball/member/logout.cnu';	
				alert('안녕히 가세요 ');
				break;
			case 'mbtn':
				spath = '/baseball/member/myInfo.cnu';
				$('#frm2').attr('action', spath).submit();
				return;
			case 'jbtn':
				spath = '/baseball/member/join.cnu';
				break;
			case 'iebtn':
				spath = '/baseball/member/editInfo.cnu';
				$('#frm2').attr('action', spath).submit();
				return;
			case 'bbtn':
				spath = '/baseball/board/board.cnu';
				break;
			case 'wbtn':
				spath = '/baseball/board/boardwrite.cnu';
				break;
		}
		$(location).attr('href',spath);
	});
	
});