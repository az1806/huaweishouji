package com.dao;

import java.util.List;

import com.entitly.article_list_more;



public interface article_list_moredao {
	/**
	 * ��ѯָ������Ϣ
	 * @param m
	 * @return
	 */
	List<article_list_more> queryarticle(int m);
	/**
	 * ��ѯ������Ϣ
	 * @return
	 */
	List<article_list_more> queryarticles();
}
