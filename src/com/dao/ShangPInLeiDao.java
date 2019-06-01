package com.dao;

import java.util.List;

import com.entitly.ShangPinLei;

public interface ShangPInLeiDao {
	List<ShangPinLei> queryShangPinLeis(int n);
	List<ShangPinLei> queryShangPinLeisa();
	List<ShangPinLei> ShangPinLeisa(String s);
	int insertShangPins(String Spname,String color,String spxh,String spcc,int xid);
	int Shanchu(int sid);
	int XiuGai(int sid,String Spname,String color,String spxh,String spcc,int xid);
}
