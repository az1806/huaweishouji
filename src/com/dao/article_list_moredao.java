package com.dao;

import java.util.List;

import com.entitly.article_list_more;



public interface article_list_moredao {
	/**
	 * 查询指定类信息
	 * @param m
	 * @return
	 */
	List<article_list_more> queryarticle(int m);
	/**
	 * 查询所有信息
	 * @return
	 */
	List<article_list_more> queryarticles();
}
