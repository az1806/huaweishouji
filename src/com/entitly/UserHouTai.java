package com.entitly;

public class UserHouTai {

	    private int ygid;
	    private String ygname;
	    private String ygphone;
	    private String ygsex;
	    private String ygphoto;
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
		public String getYgphoto() {
			return ygphoto;
		}
		public void setYgphoto(String ygphoto) {
			this.ygphoto = ygphoto;
		}
		
		
		
		
		public UserHouTai() {
			super();
		}
		public UserHouTai(int ygid, String ygname, String ygphone,	String ygsex, String ygphoto) {
			super();
			this.ygid = ygid;
			this.ygname = ygname;
			this.ygphone = ygphone;
			this.ygsex = ygsex;
			this.ygphoto = ygphoto;
		}
		@Override
		public String toString() {
			return "UserHouTai [ygid=" + ygid + ", ygname=" + ygname
					+ ", ygphone=" + ygphone + ", ygsex=" + ygsex
					+ ", ygphoto=" + ygphoto + "]";
		}
	    
	    
}
