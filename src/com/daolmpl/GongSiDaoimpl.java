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
		ResultSet rs = GongJuClass.querySQL("select * from gsdb;");
		try {
			while (rs.next()) {
				GongSi hw = new GongSi();

				hw.setGsid(rs.getInt(1));
				hw.setGsname(rs.getString(2));
				hw.setJianjie(rs.getString(3));
				hw.setGsphone(rs.getString(4));
				hw.setGsemail(rs.getString(5));
				gs.add(hw);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return gs;
	}

}
