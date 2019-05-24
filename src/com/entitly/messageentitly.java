package com.entitly;

public class messageentitly {
	
	private int lyid;
	
	private String lyname;
	
	private String lytime;
	
	private String lyhao;
	private String lyeamil;
	private String lyneirong;
   
	private String lyzhuangtai;

	

	public messageentitly() {
	
	}

	
	
	
	public messageentitly(int lyid, String lyname, String lytime, String lyhao,
			String lyeamil, String lyneirong, String lyzhuangtai) {
		super();
		this.lyid = lyid;
		this.lyname = lyname;
		this.lytime = lytime;
		this.lyhao = lyhao;
		this.lyeamil = lyeamil;
		this.lyneirong = lyneirong;
		this.lyzhuangtai = lyzhuangtai;
	}

	public int getLyid() {
		return lyid;
	}

	public void setLyid(int lyid) {
		this.lyid = lyid;
	}

	public String getLyname() {
		return lyname;
	}

	public void setLyname(String lyname) {
		this.lyname = lyname;
	}

	public String getLytime() {
		return lytime;
	}

	public void setLytime(String lytime) {
		this.lytime = lytime;
	}

	public String getLyhao() {
		return lyhao;
	}

	public void setLyhao(String lyhao) {
		this.lyhao = lyhao;
	}

	public String getLyeamil() {
		return lyeamil;
	}

	public void setLyeamil(String lyeamil) {
		this.lyeamil = lyeamil;
	}

	public String getLyneirong() {
		return lyneirong;
	}

	public void setLyneirong(String lyneirong) {
		this.lyneirong = lyneirong;
	}

	public String getLyzhuangtai() {
		return lyzhuangtai;
	}

	public void setLyzhuangtai(String lyzhuangtai) {
		this.lyzhuangtai = lyzhuangtai;
	}
	
	
	
}
