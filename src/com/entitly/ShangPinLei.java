package com.entitly;

public class ShangPinLei {
private int sid;
private String sname;
private String color;
private String spxh;
private String spcc;
private String spnc;
private String spclq;
private String jiage;
private int xid;
private String src;

public ShangPinLei() {
}

public ShangPinLei(int sid, String sname, String color, String spxh,
		String spcc, String spnc, String spclq, String jiage) {
	
	this.sid = sid;
	this.sname = sname;
	this.color = color;
	this.spxh = spxh;
	this.spcc = spcc;
	this.spnc = spnc;
	this.spclq = spclq;
	this.jiage = jiage;
	this.xid = xid;
	this.src = src;
}

public int getSid() {
	return sid;
}

public void setSid(int sid) {
	this.sid = sid;
}

public String getSname() {
	return sname;
}

public void setSname(String sname) {
	this.sname = sname;
}

public String getColor() {
	return color;
}

public void setColor(String color) {
	this.color = color;
}

public String getSpxh() {
	return spxh;
}

public void setSpxh(String spxh) {
	this.spxh = spxh;
}

public String getSpcc() {
	return spcc;
}

public void setSpcc(String spcc) {
	this.spcc = spcc;
}

public String getSpnc() {
	return spnc;
}

public void setSpnc(String spnc) {
	this.spnc = spnc;
}

public String getSpclq() {
	return spclq;
}

public void setSpclq(String spclq) {
	this.spclq = spclq;
}

public String getJiage() {
	return jiage;
}

public void setJiage(String jiage) {
	this.jiage = jiage;
}
public int getXid() {
	return xid;
}
public void setXid(int xid) {
	this.xid = xid;
}
public String getSrc() {
	return src;
}

public void setSrc(String src) {
	this.src = src;
}

}
