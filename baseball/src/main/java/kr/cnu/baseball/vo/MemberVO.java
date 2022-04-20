package kr.cnu.baseball.vo;

public class MemberVO {
	private int mno, p_no, cnt;
	private String mname, id, pwd, grd, favoteam, grade, msg;
	
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public int getPno() {
		return p_no;
	}
	public void setPno(int p_no) {
		this.p_no = p_no;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getGrd() {
		return grd;
	}
	public void setGrd(String grd) {
		this.grd = grd;
	}
	public String getFavoteam() {
		return favoteam;
	}
	public void setFavoteam(String favoteam) {
		this.favoteam = favoteam;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	@Override
	public String toString() {
		return "MemberVO [mno=" + mno + ", p_no=" + p_no + ", mname=" + mname + ", id=" + id + ", pwd=" + pwd + ", grd="
				+ grd + ", favoteam=" + favoteam + ", grade=" + grade + "]";
	}
	
}
