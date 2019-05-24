package com.entitly;

public class article_list_content {
		
	private int zxid;
	private String zxname;
	private String zxneirong ;
	private String zxtime;
	private int xwid;
	
	public article_list_content() {
	
	}
	public article_list_content(int zxid, String zxname, String zxneirong,
			String zxtime, int xwid) {
		super();
		this.zxid = zxid;
		this.zxname = zxname;
		this.zxneirong = zxneirong;
		this.zxtime = zxtime;
		this.xwid = xwid;
	}
	public int getZxid() {
		return zxid;
	}
	public void setZxid(int zxid) {
		this.zxid = zxid;
	}
	public String getZxname() {
		return zxname;
	}
	public void setZxname(String zxname) {
		this.zxname = zxname;
	}
	public String getZxneirong() {
		return zxneirong;
	}
	public void setZxneirong(String zxneirong) {
		this.zxneirong = zxneirong;
	}
	public String getZxtime() {
		return zxtime;
	}
	public void setZxtime(String zxtime) {
		this.zxtime = zxtime;
	}
	public int getXwid() {
		return xwid;
	}
	public void setXwid(int xwid) {
		this.xwid = xwid;
	}
	
	
}
