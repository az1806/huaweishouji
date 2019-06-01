package com.entitly;

public class ShangPin {
	private int xid;
	private String name;
	private String src;
	public int getXid() {
		return xid;
	}
	public void setXid(int xid) {
		this.xid = xid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	@Override
	public String toString() {
		return "ShangPin [xid=" + xid + ", name=" + name + ", src=" + src + "]";
	}
	
	

}
