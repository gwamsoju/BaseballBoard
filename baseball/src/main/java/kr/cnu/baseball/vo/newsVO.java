package kr.cnu.baseball.vo;

import java.util.*;
import java.text.*;

public class newsVO {
	private int nno;
	private String t_news, c_news, n_from, wdate;
	private Date n_date;
	
	public int getNno() {
		return nno;
	}
	public void setNno(int nno) {
		this.nno = nno;
	}
	public String getT_news() {
		return t_news;
	}
	public void setT_news(String t_news) {
		this.t_news = t_news;
	}
	public String getC_news() {
		return c_news;
	}
	public void setC_news(String c_news) {
		this.c_news = c_news;
	}
	public String getN_from() {
		return n_from;
	}
	public void setN_from(String n_from) {
		this.n_from = n_from;
	}
	public Date getN_date() {
		return n_date;
	}
	public void setN_date(Date n_date) {
		this.n_date = n_date;
		setWdate();
	}
	public void setWdate(Date n_date) {
		SimpleDateFormat form = new SimpleDateFormat("yyyy년 MM월 dd일 ");
		wdate = form.format(n_date);
	}
	public void setWdate() {
		SimpleDateFormat form = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		wdate = form.format(n_date);
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
		
	}
	
	
}
