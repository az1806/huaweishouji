package com.dao;

import java.util.List;

import com.entitly.ShangPinLei;

public interface ShangPInLeiDao {
	List<ShangPinLei> queryShangPinLeis(int n);
	List<ShangPinLei> queryShangPinLeisa();
	List<ShangPinLei> ShangPinLeisa(String s);
}
