package com.dao;

import java.util.List;

import com.entitly.LiuYan;



public interface LiuYanDao {
	/**
	 * ���԰��ѯ
	 * @return
	 */
	List <LiuYan> allLiuYan();
	
	
	/**
	 * ɾ������
	 * @param id
	 * @return
	 */
	int deleteLY(int id);
	
	/**
	 * ��ѯָ������
	 * @param id
	 * @return
	 */
	LiuYan getLiuYanid(int id);
	
	/**
	 * �޸�����״̬
	 * @param id
	 * @param zhuangtai
	 * @return
	 */
	int updateLiuYan(int id,String zhuangtai);
}
