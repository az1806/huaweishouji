package com.dao;

import java.util.List;

import com.entitly.GongSi;

public interface GongSiDao {
	/**
	 * 查询公司
	 * @return
	 */
	List<GongSi> queryGongSis();
	/**
	 * 查询单个公司
	 * @param gsid
	 * @return
	 */
	GongSi GongSis(int gsid);
	/**
	 * 修改公司信息
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
