package com.daolmpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.XinWenDao;
import com.entitly.XinWen;

import com.util.GongJuClass;



public class XinWenDaoImpl implements XinWenDao {

	@Override
	public List<XinWen> allXinWen() {
		List<XinWen> xinwen = new ArrayList<XinWen>();
		ResultSet rs = GongJuClass.querySQL("select * from xwzxdb ;");
		try {
			while (rs.next()) {
				XinWen xw = new XinWen();
				xw.setZxid(rs.getInt(1));
				xw.setZxname(rs.getString(2));
				xw.setZxneirong(rs.getString(3));
				xw.setZxtime(rs.getString(4));
				xw.setXwid(rs.getInt(5));
				xinwen.add(xw);
			}
			return xinwen;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	

	@Override
	public int addXinWen(String zxname, String zxneirong, String zxtime,
			int xwid) {
		int n=GongJuClass.updateSQL("insert into xwzxdb (zxname,zxneirong,zxtime,xwid) value('"+zxname+"','"+zxneirong+"','"+zxtime+"','"+xwid+"')");
		return n;
		
	}

	@Override
	public int deleteXinWen(int id) {
		int n= GongJuClass.updateSQL("delete from xwzxdb where zxid="+id+";");
		return n;
	}
	
}
