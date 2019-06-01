package com.dao;

import java.util.List;
import com.entitly.ShangPin;




public interface ShangPinDao {
	List<ShangPin> queryShangPins();
	int insertShangPin(String Spname);
	int Shanchu(int splbid);
}
