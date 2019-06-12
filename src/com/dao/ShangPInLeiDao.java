package com.dao;

import java.util.List;

import com.entitly.ShangPinLei;

public interface ShangPInLeiDao {
	/**
	 * 查询指定类商品
	 * @param n
	 * @return
	 */
	List<ShangPinLei> queryShangPinLeis(int n);
	/**
	 * 查询指定商品
	 * @param sid
	 * @return
	 */
	List<ShangPinLei> ShangPinLeis(int sid);
	/**
	 *  查询商品
	 * @return
	 */
	List<ShangPinLei> queryShangPinLeisa();
	/**
	 * 模糊查询
	 * @param s
	 * @return
	 */
	List<ShangPinLei> ShangPinLeisa(String s);
	/**
	 * 多条件模糊查询
	 * @param spname
	 * @param color
	 * @param spxh
	 * @param xid
	 * @return
	 */
	List<ShangPinLei>  ShangPinLesa(String spname,String color,String spxh,int xid);
	/**
	 * 查询指定商品
	 * @param spid
	 * @return
	 */
	ShangPinLei  ShangPinLeisa(int spid);
	/**
	 * 添加商品
	 * @param Spname
	 * @param color
	 * @param spxh
	 * @param spcc
	 * @param spnc
	 * @param spclq
	 * @param jiage
	 * @param xid
	 * @param src
	 * @param srca
	 * @return
	 */
	int insertShangPins(String Spname,String color,String spxh,String spcc,String spnc,String spclq,String jiage,int xid,String src,String srca);
	/**
	 * 删除指定商品
	 * @param sid
	 * @return
	 */
	int Shanchu(int sid);
	/**
	 * 修改指定商品
	 * @param spid
	 * @param spname
	 * @param color
	 * @param spxh
	 * @param spcc
	 * @param spnc
	 * @param spclq
	 * @param jiage
	 * @param xid
	 * @param src
	 * @param srca
	 * @return
	 */
	int XiuGai(int spid,String spname,String color,String spxh,String spcc,String spnc,String spclq,String jiage,int xid,String src,String srca);
}
