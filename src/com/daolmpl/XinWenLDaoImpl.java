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
		return GongJuClass.updateSQL("insert into huaweidb.xwdb (xwname) value('"+xwname+"');");
		
	}

	@Override
	public int deleteXinWenL(int id) {
		int n= GongJuClass.updateSQL("delete from xwdb where xwid="+id);
		return n;
	}

	@Override
	public XinWenL getXWLid(int id) {
		XinWenL xwl = new XinWenL();
		ResultSet rs = GongJuClass.querySQL("select * from xwdb ;");
		try {
			while (rs.next()) {
				
				xwl.setXwid(rs.getInt(1));
				xwl.setXwname(rs.getString(2));
				
			}
			return xwl;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	
	}

	@Override
	public int updateXWL(int id, String name) {
		return GongJuClass.updateSQL("update xwdb set xwname='"+name+"' where xwid=" + id);
	}
		
	}
	
	
	
	
