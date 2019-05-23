package com.daolmpl;

import com.dao.messagedao;

import com.util.GongJuClass;

public class messagedaolmpl implements messagedao {

	public boolean insertmeg(String lyname, String lyhao, String lyeamil,
			String lyneirong) {
		int n = GongJuClass.updateSQL("insert  huaweidb.lydb (lyname,lyhao,lyeamil,lyneirong) values ('"+lyname + "','" +lyhao + "','" + lyeamil + "','" +lyneirong + "')");
		
		
		
		if (n == 1) {
			System.out.println("留言加入成功");
			return true;
		}else{
			System.out.println("留言");
		}
		
		return false;
		
	}
	
}
