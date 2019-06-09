package com.daolmpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.UserHouTaiDao;
import com.entitly.User;
import com.entitly.UserHouTai;
import com.util.GongJuClass;

public class UserHouTaiDaoimpl implements UserHouTaiDao{

	@Override
	public List<UserHouTai> queryUsers() {
		List<UserHouTai> us = new ArrayList<UserHouTai>();
		
		ResultSet z = GongJuClass.querySQL("select * from ygdb;");
		
		try {
			while (z.next()) {
				UserHouTai ue = new UserHouTai();

				ue.setYgid(z.getInt(1));
				ue.setYgname(z.getString(2));
				ue.setYgsex(z.getString(3));
				ue.setYgphone(z.getString(4));
				ue.setYgphoto(z.getString(5));
				us.add(ue);
			}
	     
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return us;
	  }

	

	@Override
	public int Shanchu(int ygid) {
		return GongJuClass.updateSQL("delete from ygdb where ygid="+  ygid);
	}

	@Override
	public int XiuUser(int ygid, String ygname, String ygphone, String ygsex,
			String ygphoto) {
		return GongJuClass.updateSQL("update huaweidb.ygdb set ygid='"+ygid+"',ygname='"+ygname+"',ygsex='"+ygsex+"',ygphone='"+ygphone+"',ygphoto='"+ygphoto+"'where ygid="+ ygid  );
	}

	@Override
	public User Users(int ygid) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public int TianjiaUser(String ygname, String ygphone, String ygsex,
			String ygphoto) {
		return	 GongJuClass.updateSQL("insert into huaweidb.ygdb(ygname,ygphone,ygsex,ygphoto)values('"+ygname+"','"+ygphone+"','"+ygsex+"','"+ygphoto+"') ;");
	}
}
