package com.dao;

import java.util.List;




import com.entitly.UserHouTai;

public interface UserHouTaiDao {
/**
 * ��ѯ�û�
 * @return
 */
	List<UserHouTai> queryUsersa();
	/**
	 * ��ѯָ���û�
	 * @param ygid
	 * @return
	 */
	UserHouTai Users(int ygid);
	/**
	 * ����û�
	 * @param ygname
	 * @param ygphone
	 * @param ygsex
	 * @param ygphoto
	 * @return
	 */
	int TianjiaUser(String ygname, String ygphone,String ygsex,String ygphoto);
	/**
	 * ɾ��ָ���û�
	 * @param ygid
	 * @return
	 */
int Shan(int ygid);
/**
 * �޸�ָ���û�
 * @param ygid
 * @param ygname
 * @param ygphone
 * @param ygsex
 * @param ygphoto
 * @return
 */
	int XiuUser(int ygid,String ygname, String ygphone,String ygsex,String ygphoto);
}
