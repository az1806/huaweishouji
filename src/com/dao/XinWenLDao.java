package com.dao;

import java.util.List;

import com.entitly.XinWen;
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
	/**
	 * 根据新闻类别分类id查询信息
	 * @param id
	 * @return
	 */
	XinWenL getXWLid(int id);
	/**
	 * 修改新闻类的内容
	 * @param id	新闻类的id
	 * @param name 新闻类的名称
	 * @return
	 */
	int updateXWL(int id,String name);
}
