package com.daolmpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.ShangPInLeiDao;
import com.entitly.ShangPinLei;
import com.util.GongJuClass;



public  class ShangPInLeiDaoimpl implements ShangPInLeiDao {
	public List<ShangPinLei> queryShangPinLeis(int n) {
		List<ShangPinLei> ps = new ArrayList<ShangPinLei>();
		ResultSet rs = GongJuClass.querySQL("select * from spdb where splbid= "+n);
		try {
			while (rs.next()) {
				ShangPinLei pv = new ShangPinLei();

				pv.setSid(rs.getInt(1));
				pv.setSname(rs.getString(2));
				pv.setColor(rs.getString(3));
				pv.setSpxh(rs.getString(4));
				pv.setSpcc(rs.getString(5));
				pv.setSpnc(rs.getString(6));
				pv.setSpclq(rs.getString(7));
				pv.setJiage(rs.getString(8));
				pv.setXid(rs.getInt(9));
				pv.setSrc(rs.getString(10));
				pv.setSrca(rs.getString(11));
				ps.add(pv);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ps;
	}

	
	}




