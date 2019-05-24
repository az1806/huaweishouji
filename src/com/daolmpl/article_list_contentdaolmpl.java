package com.daolmpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.article_list_contentdao;
import com.entitly.article_list_content;
import com.entitly.article_list_more;
import com.util.GongJuClass;



public class article_list_contentdaolmpl implements article_list_contentdao   {
	public List<article_list_content> queryarticle(int ty) {
	
		List<article_list_content> qq = new ArrayList<article_list_content>();
		ResultSet a = GongJuClass.querySQL("select * from xwzxdb where xwid " +ty );
		try {
			while (a.next()) {
				article_list_content q = new article_list_content();

				q.setZxid(a.getInt(1));
				q.setZxname(a.getString(2));
				q.setZxneirong(a.getString(3));
				q.setZxtime(a.getString(4));
				q.setXwid(a.getInt(5));
				qq.add(q);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return qq;
	}

	

	
}
