package com.dao;

import java.util.List;


import com.entitly.ShangPin;
import com.entitly.User;
import com.entitly.UserHouTai;

public interface UserHouTaiDao {

	List<UserHouTai> queryUsers();
	User Users(int ygid);
	int TianjiaUser(String ygname, String ygphone,String ygsex,String ygphoto);
	int Shanchu(int ygid);
	int XiuUser(int ygid,String ygname, String ygphone,String ygsex,String ygphoto);
}
