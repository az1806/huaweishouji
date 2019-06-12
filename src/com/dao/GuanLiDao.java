package com.dao;

import com.entitly.GuanLi;

public interface GuanLiDao {
	/**
	 * 管理员登录
	 * @param glname
	 * @param glpwd
	 * @return
	 */
GuanLi Login(String glname,String glpwd);
/**
 * 注册管理员
 * @param glname
 * @param glpwd
 * @return
 */
boolean insertGuanLi(String glname,String glpwd);
}
