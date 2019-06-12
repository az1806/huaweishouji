package com.dao;

import java.util.List;

import com.entitly.LiuYan;



public interface LiuYanDao {
	/**
	 * ÁôÑÔ°å²éÑ¯
	 * @return
	 */
	List <LiuYan> allLiuYan();
	
	
	/**
	 * É¾³ıÁôÑÔ
	 * @param id
	 * @return
	 */
	int deleteLY(int id);
	
	/**
	 * ²éÑ¯Ö¸¶¨ÁôÑÔ
	 * @param id
	 * @return
	 */
	LiuYan getLiuYanid(int id);
	
	/**
	 * ĞŞ¸ÄÁôÑÔ×´Ì¬
	 * @param id
	 * @param zhuangtai
	 * @return
	 */
	int updateLiuYan(int id,String zhuangtai);
}
