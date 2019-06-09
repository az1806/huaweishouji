package com.dao;

import java.util.List;




import com.entitly.UserHouTai;

public interface UserHouTaiDao {

	List<UserHouTai> queryUsersa();
	UserHouTai Users(int ygid);
	int TianjiaUser(String ygname, String ygphone,String ygsex,String ygphoto);
int Shan(int ygid);
	int XiuUser(int ygid,String ygname, String ygphone,String ygsex,String ygphoto);
}
