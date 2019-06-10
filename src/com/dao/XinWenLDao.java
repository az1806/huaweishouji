package com.dao;

import java.util.List;

import com.entitly.XinWen;
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
	/**
	 * ��������������id��ѯ��Ϣ
	 * @param id
	 * @return
	 */
	XinWenL getXWLid(int id);
	/**
	 * �޸������������
	 * @param id	�������id
	 * @param name �����������
	 * @return
	 */
	int updateXWL(int id,String name);
}
