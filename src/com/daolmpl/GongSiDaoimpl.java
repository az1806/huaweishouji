package com.daolmpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.GongSiDao;
import com.entitly.GongSi;

import com.util.GongJuClass;

public class GongSiDaoimpl implements GongSiDao {

	public List<GongSi> queryGongSis() {
		List<GongSi> gs = new ArrayList<GongSi>();
		ResultSet rs = GongJuClass.querySQL("select * from gsbdb;");
		try {
			while (rs.next()) {
				GongSi hw = new GongSi();

				hw.setGsid(rs.getInt(1));
				hw.setGsname(rs.getString(2));
				hw.setJianjie(rs.getString(3));
				hw.setGsphone(rs.getString(4));
				hw.setGsemail(rs.getString(5));
				hw.setGsdz(rs.getString(6));
				gs.add(hw);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return gs;
	}

	@Override
	public int GongSis(int gsid, String gsname, String jianjie, String gsphone,
			String gsemail, String gsdz) {
		// TODO Auto-generated method stub
		return GongJuClass.updateSQL("update huaweidb.gsbdb set gsname='"+gsname+"', gsjianjie='"+ jianjie+"', gsphone='"+gsphone+"', gsemail='"+gsemail+"', gsdz='"+gsdz+"' where gsid="+gsid);
	}

	@Override
	public GongSi GongSis(int gsid) {
		GongSi gsv = new GongSi();
		ResultSet rs = GongJuClass.querySQL("SELECT * FROM huaweidb.gsbdb where gsid="+gsid);
		try {
			while (rs.next()) {
				GongSi hw = new GongSi();

				hw.setGsid(rs.getInt(1));
				hw.setGsname(rs.getString(2));
				hw.setJianjie(rs.getString(3));
				hw.setGsphone(rs.getString(4));
				hw.setGsemail(rs.getString(5));
				hw.setGsdz(rs.getString(6));
				gsv=hw;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return gsv;
	}



}
