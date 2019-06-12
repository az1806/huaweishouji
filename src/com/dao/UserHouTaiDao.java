package com.dao;

import java.util.List;




import com.entitly.UserHouTai;

public interface UserHouTaiDao {
/**
 * 查询用户
 * @return
 */
	List<UserHouTai> queryUsersa();
	/**
	 * 查询指定用户
	 * @param ygid
	 * @return
	 */
	UserHouTai Users(int ygid);
	/**
	 * 添加用户
	 * @param ygname
	 * @param ygphone
	 * @param ygsex
	 * @param ygphoto
	 * @return
	 */
	int TianjiaUser(String ygname, String ygphone,String ygsex,String ygphoto);
	/**
	 * 删除指定用户
	 * @param ygid
	 * @return
	 */
int Shan(int ygid);
/**
 * 修改指定用户
 * @param ygid
 * @param ygname
 * @param ygphone
 * @param ygsex
 * @param ygphoto
 * @return
 */
	int XiuUser(int ygid,String ygname, String ygphone,String ygsex,String ygphoto);
}
