package com.entitly;

public class GuanLi {
	
	private String glname;
	private String glpwd;
	
	public GuanLi() {
		super();
	}

	public GuanLi(String glname, String glpwd) {
		super();
		
		this.glname = glname;
		this.glpwd = glpwd;
	}

	

	public String getGlname() {
		return glname;
	}

	public void setGlname(String glname) {
		this.glname = glname;
	}

	public String getGlpwd() {
		return glpwd;
	}

	public void setGlpwd(String glpwd) {
		this.glpwd = glpwd;
	}

	@Override
	public String toString() {
		return "GuanLi [glname=" + glname + ", glpwd=" + glpwd + "]";
	}

	
	
}
