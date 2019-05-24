package com.daolmpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.article_listdao;
import com.entitly.article_list;
import com.util.GongJuClass;




public class article_listdaolmpl implements article_listdao {
	public List<article_list> queryarticle_lists() {
		List<article_list> xw = new ArrayList<article_list>();
		ResultSet rs = GongJuClass.querySQL("select * from xwdb ;");
		try {
			while (rs.next()) {
				article_list x = new article_list();

				x.setXwid(rs.getInt(1));
				x.setXwname(rs.getString(2));
				xw.add(x);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return xw;
	}

	

}
