package com.dao;

import java.util.List;
import com.entitly.ShangPin;





public interface ShangPinDao {
	List<ShangPin> queryShangPins();
	ShangPin ShangPins(int splbid);
	int insertShangPin(String Spname);
	int Shanchu(int splbid);
	int XiuShangPin(int splbid,String splbname);

}
