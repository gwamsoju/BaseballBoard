package kr.cnu.baseball.vo;

import java.util.Date;

public class BoardVO {
	
	String brdtitle, nickname, content;
	int brdno, clicknum,rn;
	Date wdate, udate, ddate;
	public String getBrdtitle() {
		return brdtitle;
	}
	public void setBrdtitle(String brdtitle) {
		this.brdtitle = brdtitle;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getBrdno() {
		return brdno;
	}
	public void setBrdno(int brdno) {
		this.brdno = brdno;
	}
	public int getClicknum() {
		return clicknum;
	}
	public void setClicknum(int clicknum) {
		this.clicknum = clicknum;
	}
	
	public int getRn() {
		return rn;
	}
	public void setRn(int rn) {
		this.rn = rn;
	}
	public Date getWdate() {
		return wdate;
	}
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	public Date getUdate() {
		return udate;
	}
	public void setUdate(Date udate) {
		this.udate = udate;
	}
	public Date getDdate() {
		return ddate;
	}
	public void setDdate(Date ddate) {
		this.ddate = ddate;
	}
	@Override
	public String toString() {
		return "BoardVO [brdtitle=" + brdtitle + ", nickname=" + nickname + ", content=" + content + ", brdno=" + brdno
				+ ", clicknum=" + clicknum + ", wdate=" + wdate + ", udate=" + udate + ", ddate=" + ddate + "]";
	}
	
	
}
