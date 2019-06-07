package com.daolmpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.ShangPInLeiDao;
import com.entitly.ShangPinLei;
import com.util.GongJuClass;



public  class ShangPInLeiDaoimpl implements ShangPInLeiDao {
	public List<ShangPinLei> queryShangPinLeis(int n) {
		List<ShangPinLei> ps = new ArrayList<ShangPinLei>();
		ResultSet rs = GongJuClass.querySQL("select * from spdb where splbid= "+n);
		try {
			while (rs.next()) {
				ShangPinLei pv = new ShangPinLei();

				pv.setSid(rs.getInt(1));
				pv.setSname(rs.getString(2));
				pv.setColor(rs.getString(3));
				pv.setSpxh(rs.getString(4));
				pv.setSpcc(rs.getString(5));
				pv.setSpnc(rs.getString(6));
				pv.setSpclq(rs.getString(7));
				pv.setJiage(rs.getString(8));
				pv.setXid(rs.getInt(9));
				pv.setSrc(rs.getString(10));
				pv.setSrca(rs.getString(11));
				ps.add(pv);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ps;
	}

	public List<ShangPinLei> queryShangPinLeisa() {
		List<ShangPinLei> pa = new ArrayList<ShangPinLei>();
		ResultSet rs = GongJuClass.querySQL("select * from spdb ");
		try {
			while (rs.next()) {
				ShangPinLei pk = new ShangPinLei();

				pk.setSid(rs.getInt(1));
				pk.setSname(rs.getString(2));
				pk.setColor(rs.getString(3));
				pk.setSpxh(rs.getString(4));
				pk.setSpcc(rs.getString(5));
				pk.setSpnc(rs.getString(6));
				pk.setSpclq(rs.getString(7));
				pk.setJiage(rs.getString(8));
				pk.setXid(rs.getInt(9));
				pk.setSrc(rs.getString(10));
				pk.setSrca(rs.getString(11));
				pa.add(pk);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pa;
	}

	@Override
	public List<ShangPinLei> ShangPinLeisa(String s) {
		List<ShangPinLei> pns = new ArrayList<ShangPinLei>();
		ResultSet rs = GongJuClass.querySQL("select * from spdb where spname like '%"+s+"%'");
		try {
			while (rs.next()) {
				ShangPinLei p = new ShangPinLei();

				p.setSid(rs.getInt(1));
				p.setSname(rs.getString(2));
				p.setColor(rs.getString(3));
				p.setSpxh(rs.getString(4));
				p.setSpcc(rs.getString(5));
				p.setSpnc(rs.getString(6));
				p.setSpclq(rs.getString(7));
				p.setJiage(rs.getString(8));
				p.setXid(rs.getInt(9));
				p.setSrc(rs.getString(10));
				p.setSrca(rs.getString(11));
				pns.add(p);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pns;
	}

	

	@Override
	public int Shanchu(int sid) {
		// TODO Auto-generated method stub
		return GongJuClass.updateSQL("delete from spdb where spid="+  sid);
	}

	
	@Override
	public List<ShangPinLei> ShangPinLeis(int sid) {
		List<ShangPinLei> pvs = new ArrayList<ShangPinLei>();
		ResultSet rs = GongJuClass.querySQL("select * from spdb where spid= "+sid);
		try {
			while (rs.next()) {
				ShangPinLei pv = new ShangPinLei();

				pv.setSid(rs.getInt(1));
				pv.setSname(rs.getString(2));
				pv.setColor(rs.getString(3));
				pv.setSpxh(rs.getString(4));
				pv.setSpcc(rs.getString(5));
				pv.setSpnc(rs.getString(6));
				pv.setSpclq(rs.getString(7));
				pv.setJiage(rs.getString(8));
				pv.setXid(rs.getInt(9));
				pv.setSrc(rs.getString(10));
				pv.setSrca(rs.getString(11));
				pvs.add(pv);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pvs;
	}

	@Override
	public ShangPinLei ShangPinLeisa(int spid) {
		// TODO Auto-generated method stub
	ShangPinLei psvs = new ShangPinLei();
	ResultSet rs = GongJuClass.querySQL("select * from spdb where spid= "+spid);
	try {
		while (rs.next()) {
			ShangPinLei pv = new ShangPinLei();

			pv.setSid(rs.getInt(1));
			pv.setSname(rs.getString(2));
			pv.setColor(rs.getString(3));
			pv.setSpxh(rs.getString(4));
			pv.setSpcc(rs.getString(5));
			pv.setSpnc(rs.getString(6));
			pv.setSpclq(rs.getString(7));
			pv.setJiage(rs.getString(8));
			pv.setXid(rs.getInt(9));
			pv.setSrc(rs.getString(10));
			pv.setSrca(rs.getString(11));
			psvs=pv;
		}

	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return psvs;
	}

	@Override
	public int insertShangPins( String Spname, String color,String spxh, String spcc, String spnc, String spclq, String jiage,int xid, String src, String srca) {
		return	 GongJuClass.updateSQL("insert into huaweidb.spdb(spname,spcolor,spxinghao,spchucun,spneicun,spchuliqi,spjiage,splbid,spsrc,Spsrca)values('"+Spname+"','"+color+"','"+spxh+"','"+spcc+"','"+spnc+"','"+spclq+"','"+jiage+"','"+xid+"','"+src+"','"+srca+"') ;");
	}

	@Override
	public int XiuGai(int spid, String spname, String color, String spxh,
			String spcc, String spnc, String spclq, String jiage, int xid,
			String src, String srca){ 
		// TODO Auto-generated method stub
		return GongJuClass.updateSQL("update huaweidb.spdb set spname='"+spname+"',spcolor='"+color+"',spxinghao='"+spxh+"',spchucun='"+spcc+"',spneicun='"+spnc+"',spchuliqi='"+spclq+"',spjiage='"+jiage+"',splbid='"+xid+"',spsrc='"+src+"',Spsrca='"+srca+"'where spid="+ spid  );
	}

	}
	

	
	




