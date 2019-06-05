package com.dao;

import java.util.List;

import com.entitly.XinWen;



public interface XinWenDao {
	/**
	 * 显示所有新闻内容
	 * @return
	 */
	List<XinWen> allXinWen();
	/**
	 * 添加新闻内容
	 * @param xwname 名称
	 * @param zxneirong 内容
	 * @param zxtime 时间
	 * @param xwid 新闻类id
	 * @return
	 */
	int addXinWen(String zxname,String zxneirong,String zxtime,int xwid);
	
	/**
	 * 删除新闻内容
	 * @param id
	 * @return
	 */
	int deleteXinWen(int id);
}
