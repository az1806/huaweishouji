package com.dao;

import java.util.List;

import com.entitly.ShangPinLei;

public interface ShangPInLeiDao {
	/**
	 * ��ѯָ������Ʒ
	 * @param n
	 * @return
	 */
	List<ShangPinLei> queryShangPinLeis(int n);
	/**
	 * ��ѯָ����Ʒ
	 * @param sid
	 * @return
	 */
	List<ShangPinLei> ShangPinLeis(int sid);
	/**
	 *  ��ѯ��Ʒ
	 * @return
	 */
	List<ShangPinLei> queryShangPinLeisa();
	/**
	 * ģ����ѯ
	 * @param s
	 * @return
	 */
	List<ShangPinLei> ShangPinLeisa(String s);
	/**
	 * ������ģ����ѯ
	 * @param spname
	 * @param color
	 * @param spxh
	 * @param xid
	 * @return
	 */
	List<ShangPinLei>  ShangPinLesa(String spname,String color,String spxh,int xid);
	/**
	 * ��ѯָ����Ʒ
	 * @param spid
	 * @return
	 */
	ShangPinLei  ShangPinLeisa(int spid);
	/**
	 * �����Ʒ
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
	 * ɾ��ָ����Ʒ
	 * @param sid
	 * @return
	 */
	int Shanchu(int sid);
	/**
	 * �޸�ָ����Ʒ
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
