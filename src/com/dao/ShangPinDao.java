package com.dao;

import java.util.List;
import com.entitly.ShangPin;





public interface ShangPinDao {
	/**
	 * ��ѯ��Ʒ��
	 * @return
	 */
	List<ShangPin> queryShangPins();
	/**
	 * ��ѯָ����Ʒ��
	 * @param splbid
	 * @return
	 */
	ShangPin ShangPins(int splbid);
	/**
	 * �����Ʒ��
	 * @param Spname
	 * @return
	 */
	int insertShangPin(String Spname);
	/**
	 * ɾ��ָ����Ʒ��
	 * @param splbid
	 * @return
	 */
	int Shanchu(int splbid);
	/**
	 * �޸�ָ����Ʒ��
	 * @param splbid
	 * @param splbname
	 * @return
	 */
	int XiuShangPin(int splbid,String splbname);

}
