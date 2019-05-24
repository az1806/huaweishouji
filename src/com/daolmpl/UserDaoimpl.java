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
			User u = new User();

			u.setYgid(rs.getInt(1));
			u.setYgname(rs.getString(2));
			u.setYgsex(rs.getString(3));
			u.setYgphone(rs.getString(4));
			u.setYgphoto(rs.getString(5));
			us.add(u);
		}
     
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return us;
  }

	
	
}