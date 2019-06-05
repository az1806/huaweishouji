package com.dao;

import java.util.List;

import com.entitly.XinWen;



public interface XinWenDao {
	/**
	 * ��ʾ������������
	 * @return
	 */
	List<XinWen> allXinWen();
	/**
	 * �����������
	 * @param xwname ����
	 * @param zxneirong ����
	 * @param zxtime ʱ��
	 * @param xwid ������id
	 * @return
	 */
	int addXinWen(String zxname,String zxneirong,String zxtime,int xwid);
	
	/**
	 * ɾ����������
	 * @param id
	 * @return
	 */
	int deleteXinWen(int id);
}
