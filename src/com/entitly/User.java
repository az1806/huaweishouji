package com.entitly;

public class User {
    private int ygid;
    private String ygname;
    private String ygphone;
    private String ygsex;
	public int getYgid() {
		return ygid;
	}
	public void setYgid(int ygid) {
		this.ygid = ygid;
	}
	public String getYgname() {
		return ygname;
	}
	public void setYgname(String ygname) {
		this.ygname = ygname;
	}
	public String getYgphone() {
		return ygphone;
	}
	public void setYgphone(String ygphone) {
		this.ygphone = ygphone;
	}
	public String getYgsex() {
		return ygsex;
	}
	public void setYgsex(String ygsex) {
		this.ygsex = ygsex;
	}
	
	public User() {
		
	}
	
	public User(int ygid, String ygname, String ygphone, String ygsex) {
		super();
		this.ygid = ygid;
		this.ygname = ygname;
		this.ygphone = ygphone;
		this.ygsex = ygsex;
	}
	@Override
	public String toString() {
		return "工号：" + ygid + "员工姓名：" + ygname + "员工手机号："
				+ ygphone + "员工性别：" + ygsex ;
	}
    
    
} 
