function boardCheck(){
	if(document.frm.brdtitle.value.length == 0){
		alert("제목을 입력해주세요.");
		frm.brdtitle.focus();
		return false;
	}
	if(document.frm.nickname.value.length == 0){
		alert("작성자를 입력");
		return false;
	}
	if(document.frm.content.value.length == 0){
		alert("내용을 입력해주세요.");
		frm.content.focus();
		return false;
	}
	return true;
}