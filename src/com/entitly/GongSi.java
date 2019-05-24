package com.entitly;

public class GongSi {
	
private int gsid;
private String gsname;
private String jianjie;
private String gsphone;
private String gsemail;
private String gsdz;
public GongSi() {
	
}
public GongSi(int gsid, String gsname, String jianjie, String gsphone,
		String gsemail ,String gsdz) {

	this.gsid = gsid;
	this.gsname = gsname;
	this.jianjie = jianjie;
	this.gsphone = gsphone;
	this.gsemail = gsemail;
	this.gsdz = gsdz;
}
public int getGsid() {
	return gsid;
}
public void setGsid(int gsid) {
	this.gsid = gsid;
}
public String getGsname() {
	return gsname;
}
public void setGsname(String gsname) {
	this.gsname = gsname;
}
public String getJianjie() {
	return jianjie;
}
public void setJianjie(String jianjie) {
	this.jianjie = jianjie;
}
public String getGsphone() {
	return gsphone;
}
public void setGsphone(String gsphone) {
	this.gsphone = gsphone;
}
public String getGsemail() {
	return gsemail;
}
public void setGsemail(String gsemail) {
	this.gsemail = gsemail;
}

public String getGsdz() {
	return gsdz;
}
public void setGsdz(String gsdz) {
	this.gsdz = gsdz;
}
@Override
public String toString() {
	return "GongSi [gsid=" + gsid + ", gsname=" + gsname + ", jianjie="
			+ jianjie + ", gsphone=" + gsphone + ", gsemail=" + gsemail
			+ ", gsdz=" + gsdz + "]";
}


}
