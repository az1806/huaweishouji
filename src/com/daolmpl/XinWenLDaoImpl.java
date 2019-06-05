package com.daolmpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.XinWenLDao;
import com.entitly.XinWenL;
import com.util.GongJuClass;



public class XinWenLDaoImpl implements XinWenLDao {

	@Override
	public List<XinWenL> allXinWenL() {
		List<XinWenL> xinwenl = new ArrayList<XinWenL>();
		ResultSet rs = GongJuClass.querySQL("select * from xwdb ;");
		try {
			while (rs.next()) {
				XinWenL xwl = new XinWenL();
				xwl.setXwid(rs.getInt(1));
				xwl.setXwname(rs.getString(2));
				xinwenl.add(xwl);
			}
			return xinwenl;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int addXinWenL(String xwname) {
		int n=GongJuClass.updateSQL("insert into xwdb (xwname) value('"+xwname+"')");
		return n;
	}

	@Override
	public int deleteXinWenL(int id) {
		int n= GongJuClass.updateSQL("delete from xwdb where xwid="+id+";");
		return n;
	}
	
	
	
	
}