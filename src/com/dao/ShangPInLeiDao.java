package com.dao;

import java.util.List;

import com.entitly.ShangPinLei;

public interface ShangPInLeiDao {
	List<ShangPinLei> queryShangPinLeis(int n);
	List<ShangPinLei> ShangPinLeis(int sid);
	List<ShangPinLei> queryShangPinLeisa();
	List<ShangPinLei> ShangPinLeisa(String s);
	ShangPinLei  ShangPinLeisa(int spid);
	int insertShangPins(String Spname,String color,String spxh,String spcc,String spnc,String spclq,String jiage,int xid,String src,String srca);
	int Shanchu(int sid);
	int XiuGai(int spid,String spname,String color,String spxh,String spcc,String spnc,String spclq,String jiage,int xid,String src,String srca);
}
