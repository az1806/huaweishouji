package com.dao;

import java.util.List;

import com.entitly.GongSi;

public interface GongSiDao {
	/**
	 * ��ѯ��˾
	 * @return
	 */
	List<GongSi> queryGongSis();
	/**
	 * ��ѯ������˾
	 * @param gsid
	 * @return
	 */
	GongSi GongSis(int gsid);
	/**
	 * �޸Ĺ�˾��Ϣ
	 * @param gsid
	 * @param gsname
	 * @param jianjie
	 * @param gsphone
	 * @param gsemail
	 * @param gsdz
	 * @return
	 */
int GongSis(int gsid,String gsname,String jianjie,String gsphone,String gsemail,String gsdz);
}
