package com.dao;

import java.util.List;
import com.entitly.ShangPin;





public interface ShangPinDao {
	/**
	 * 查询商品类
	 * @return
	 */
	List<ShangPin> queryShangPins();
	/**
	 * 查询指定商品类
	 * @param splbid
	 * @return
	 */
	ShangPin ShangPins(int splbid);
	/**
	 * 添加商品类
	 * @param Spname
	 * @return
	 */
	int insertShangPin(String Spname);
	/**
	 * 删除指定商品类
	 * @param splbid
	 * @return
	 */
	int Shanchu(int splbid);
	/**
	 * 修改指定商品类
	 * @param splbid
	 * @param splbname
	 * @return
	 */
	int XiuShangPin(int splbid,String splbname);

}
