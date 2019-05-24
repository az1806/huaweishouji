package com.daolmpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import com.dao.ShangPinDao;
import com.entitly.ShangPin;


import com.util.GongJuClass;



public class ShangPinDaoimpl implements ShangPinDao{

	

	public List<ShangPin> queryShangPins() {
		List<ShangPin> pts = new ArrayList<ShangPin>();
		ResultSet rs = GongJuClass.querySQL("select * from splbdb;");
		try {
			while (rs.next()) {
				ShangPin pt = new ShangPin();

				pt.setXid(rs.getInt(1));
				pt.setName(rs.getString(2));
				pts.add(pt);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pts;
	}



	
	}


