package com.daolmpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.LiuYanDao;
import com.entitly.LiuYan;
import com.util.GongJuClass;



public class LiuYanDaoImpl implements LiuYanDao {

	@Override
	public List<LiuYan> allLiuYan() {
		List<LiuYan> ly=new ArrayList<LiuYan>();
		ResultSet rs = GongJuClass.querySQL("select * from lydb ;");
		try {
			while (rs.next()) {
				LiuYan xw = new LiuYan();
				xw.setLyid(rs.getInt(1));
				xw.setLyname(rs.getString(2));
				xw.setLytime(rs.getString(3));
				xw.setLyhao(rs.getString(4));
				xw.setLyeamil(rs.getString(5));
				xw.setLyneirong(rs.getString(6));
				xw.setLyzhuangtai(rs.getString(7));
				ly.add(xw);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ly;
		
	}

	@Override
	public int deleteLY(int id) {
		int n= GongJuClass.updateSQL("delete from lydb where lyid="+id+";");
		return n;
	}

	@Override
	public LiuYan getLiuYanid(int id) {
		LiuYan liuyan=new LiuYan();
		ResultSet rs = GongJuClass.querySQL("select * from lydb where lyid="+id+";");
		try {
			while (rs.next()) {
				
				liuyan.setLyid(rs.getInt(1));
				
				liuyan.setLyzhuangtai(rs.getString(7));
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return liuyan;
		
	}
	@Override
	public int updateLiuYan(int id, String zhuangtai) {
		return GongJuClass.updateSQL("update lydb set lyzhuangtai='"+zhuangtai+"' where lyid=" + id);
	}

	
		
}
