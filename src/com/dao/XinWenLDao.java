package com.dao;

import java.util.List;

import com.entitly.XinWenL;



public interface XinWenLDao {
	/**
	 * 查询所有新闻类
	 * @return
	 */
	List<XinWenL> allXinWenL();
	
	/**
	 * 添加新闻类
	 * @param xwname
	 * @return
	 */
	int addXinWenL(String xwname);
	
	/**
	 * 删除新闻类
	 * @param xwid
	 * @return
	 */
	int deleteXinWenL(int id);
}
