function newsCheck(){
	if(document.frm.t_news.value.length == 0){
		alert("제목은 필수 항목입니다.");
		return false;
	}	
	if(document.frm.n_from.value.length == 0) {
		alert("출처는 필수 항목입니다.");
		return false;
	}
	if(document.frm.c_news.value.length == 0) {
		alert("내용을 적어주세요.");
		return false;
	}
	
	return true;
}