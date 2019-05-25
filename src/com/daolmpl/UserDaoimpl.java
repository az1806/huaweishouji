package com.daolmpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.UserDao;
import com.entitly.User;

import com.util.GongJuClass;

public class UserDaoimpl implements UserDao {
	public List<User> queryUsers(){
	List<User> us = new ArrayList<User>();
	ResultSet rs = GongJuClass.querySQL("select * from ygdb;");
	
	try {
		while (rs.next()) {
			User ue = new User();

			ue.setYgid(rs.getInt(1));
			ue.setYgname(rs.getString(2));
			ue.setYgsex(rs.getString(3));
			ue.setYgphone(rs.getString(4));
			ue.setYgphoto(rs.getString(5));
			us.add(ue);
		}
     
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return us;
  }

	
	
}