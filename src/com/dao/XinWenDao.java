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
	/**
	 * 根据新闻分类id查询信息
	 * @param id
	 * @return
	 */
	XinWen getXWid(int id);
	/**
	 * 修改新闻分类
	 * @param id
	 * @param name
	 * @return
	 */
	int updateXWid(int id,String name,String neirong,String time,int lid);
	/**
	 * 多种条件查询
	 * @param name
	 * @param neirong
	 * @param time
	 * @param lid
	 * @return
	 */
	List<XinWen> allXinWens(String name,String neirong,String time,int lid);
}
