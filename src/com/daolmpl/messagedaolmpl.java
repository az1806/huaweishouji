package com.daolmpl;

import com.dao.messagedao;

import com.util.GongJuClass;

public class messagedaolmpl implements messagedao {

	public boolean insertmeg(String lyname, String lyhao, String lyeamil,
			String lyneirong) {
		int n = GongJuClass.updateSQL("insert  huaweidb.lydb (lyname,lyhao,lyeamil,lyneirong) values ('"+lyname + "','" +lyhao + "','" + lyeamil + "','" +lyneirong + "')");
		
		
		
		if (n == 1) {
			System.out.println("���Լ���ɹ�");
			return true;
		}else{
			System.out.println("����");
		}
		
		return false;
		
	}
	
}
