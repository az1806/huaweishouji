package com.daolmpl;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.dao.GuanLiDao;
import com.entitly.GongSi;
import com.entitly.GuanLi;
import com.entitly.ShangPinLei;

import com.util.GongJuClass;





public class GuanLiDaoimpl implements GuanLiDao {

	@Override
	public GuanLi Login(String glname, String glpwd) {
		
	
		ResultSet rs = GongJuClass.querySQL("select * from htglydb where htuser='"+glname+"' and htpassword='"+glpwd+"'");
		
			if (rs != null) {
				try {
					while (rs.next()) {
						GuanLi gl = new GuanLi();
						
						gl.setGlname(rs.getString(2));
						gl.setGlpwd(rs.getString(3));
						return gl;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			return null;
		}
}