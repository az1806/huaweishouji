package com.dao;

import java.util.List;

import com.entitly.GongSi;

public interface GongSiDao {
	List<GongSi> queryGongSis();
	GongSi GongSis(int gsid);
int GongSis(int gsid,String gsname,String jianjie,String gsphone,String gsemail,String gsdz);
}
