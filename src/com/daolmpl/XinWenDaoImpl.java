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
		return xinwen;
	}
	

	@Override
	public int addXinWen(String zxname, String zxneirong, String zxtime,
			int xwid) {
		int n=GongJuClass.updateSQL("insert into xwzxdb (zxname,zxneirong,zxtime,xwid) values('"+zxname+"','"+zxneirong+"','"+zxtime+"','"+xwid+"');");
		return n;
		
	}

	@Override
	public int deleteXinWen(int id) {
		int n= GongJuClass.updateSQL("delete from xwzxdb where zxid="+id);
		return n;
	}


	@Override
	public XinWen getXWid(int id) {
		XinWen xw = new XinWen();
		ResultSet rs = GongJuClass.querySQL("select * from xwzxdb where zxid="+id);
		try {
			while (rs.next()) {
				
				xw.setZxid(rs.getInt(1));
				xw.setZxname(rs.getString(2));
				xw.setZxneirong(rs.getString(3));
				xw.setZxtime(rs.getString(4));
				xw.setXwid(rs.getInt(5));
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return xw;
	}


	@Override
	public int updateXWid(int id,String name,String neirong,String time,int lid) {
		return GongJuClass.updateSQL("update xwzxdb set zxname='"+name+"',zxneirong='"+neirong+"',zxtime='"+time+"',xwid='"+lid+"' where zxid=" + id);
	}


	@Override
	public List<XinWen> allXinWens(String name, String neirong, String time,
			int lid) {
		String sql="select * from xwzxdb where 1=1";
		if(name !=null && !name.equals("")){
			sql +=" and zxname like '%"+name+"%'";
		}
		if(neirong !=null && !neirong.equals("")){
			sql +=" and zxneirong like '%"+neirong+"%'";
		}
		if(time !=null && !time.equals("")){
			sql +=" and zxtime like '%"+name+"%'";
		}
		if(lid >0){
			sql +=" and xwid="+lid;
		}
		List<XinWen> xinwen = new ArrayList<XinWen>();
		ResultSet rs = GongJuClass.querySQL(sql);
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
		return xinwen;
	}
	
}
