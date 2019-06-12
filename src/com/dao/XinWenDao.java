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
	/**
	 * �������ŷ���id��ѯ��Ϣ
	 * @param id
	 * @return
	 */
	XinWen getXWid(int id);
	/**
	 * �޸����ŷ���
	 * @param id
	 * @param name
	 * @return
	 */
	int updateXWid(int id,String name,String neirong,String time,int lid);
	/**
	 * ����������ѯ
	 * @param name
	 * @param neirong
	 * @param time
	 * @param lid
	 * @return
	 */
	List<XinWen> allXinWens(String name,String neirong,String time,int lid);
}
