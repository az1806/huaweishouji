package com.dao;

import java.util.List;

import com.entitly.XinWenL;



public interface XinWenLDao {
	/**
	 * ��ѯ����������
	 * @return
	 */
	List<XinWenL> allXinWenL();
	
	/**
	 * ���������
	 * @param xwname
	 * @return
	 */
	int addXinWenL(String xwname);
	
	/**
	 * ɾ��������
	 * @param xwid
	 * @return
	 */
	int deleteXinWenL(int id);
}
