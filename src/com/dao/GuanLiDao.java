package com.dao;

import com.entitly.GuanLi;

public interface GuanLiDao {
	/**
	 * ����Ա��¼
	 * @param glname
	 * @param glpwd
	 * @return
	 */
GuanLi Login(String glname,String glpwd);
/**
 * ע�����Ա
 * @param glname
 * @param glpwd
 * @return
 */
boolean insertGuanLi(String glname,String glpwd);
}
