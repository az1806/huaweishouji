package com.daolmpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.dao.article_list_moredao;
import com.entitly.article_list_more;
import com.util.GongJuClass;

public class article_list_moredaoimpl implements article_list_moredao {
	public List<article_list_more> queryarticle(int m) {
		
	List<article_list_more> nr = new ArrayList<article_list_more>();
	ResultSet rs = GongJuClass.querySQL("select * from xwzxdb where xwid="+m);
	try {
		while (rs.next()) {
			article_list_more n = new article_list_more();

			n.setZxid(rs.getInt(1));
			n.setZxname(rs.getString(2));
			n.setZxneirong(rs.getString(3));
			n.setZxtime(rs.getString(4));
			n.setXwid(rs.getInt(5));
			nr.add(n);
		}

	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return nr;

}

	@Override
	public List<article_list_more> queryarticles() {
		List<article_list_more> nr = new ArrayList<article_list_more>();
		ResultSet rs = GongJuClass.querySQL("select * from xwzxdb ");
		try {
			while (rs.next()) {
				article_list_more n = new article_list_more();

				n.setZxid(rs.getInt(1));
				n.setZxname(rs.getString(2));
				n.setZxneirong(rs.getString(3));
				n.setZxtime(rs.getString(4));
				n.setXwid(rs.getInt(5));
				nr.add(n);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return nr;

	}
}