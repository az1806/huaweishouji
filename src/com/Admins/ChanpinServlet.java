package com.Admins;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.GongSiDao;
import com.dao.ShangPInLeiDao;
import com.dao.ShangPinDao;
import com.daolmpl.GongSiDaoimpl;
import com.daolmpl.ShangPInLeiDaoimpl;
import com.daolmpl.ShangPinDaoimpl;
import com.entitly.GongSi;
import com.entitly.ShangPin;
import com.entitly.ShangPinLei;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import com.util.Result;

public class ChanpinServlet extends BaseServlet {
	ShangPinDao ptd = new ShangPinDaoimpl();
	GongSiDao hws = new GongSiDaoimpl();
	
	 ShangPInLeiDao pw = new ShangPInLeiDaoimpl();
	public void Come(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		ShangPinDao ptd = new ShangPinDaoimpl();
		List<ShangPin> pts= ptd.queryShangPins();
		request.setAttribute("spname", pts);

		request.getRequestDispatcher("/Admin/Splb.jsp").forward(request, response);
		
	}
	public void Comev(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 
		 int splbid=Integer.parseInt(request.getParameter("splbid"));
		
			ShangPin ptvs= ptd.ShangPins(splbid);
			
           request.setAttribute("sname", ptvs);
			
			request.getRequestDispatcher("/Admin/GoodsAddX.jsp").forward(request, response);
		
	}
	
	
	
	public void Comes(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
	int spid=Integer.parseInt(request.getParameter("spid"));
	ShangPinLei psvs = pw.ShangPinLeisa(spid);
	   request.setAttribute("snvame", psvs);
		request.getRequestDispatcher("/Admin/GoodsAddsX.jsp").forward(request, response);
		
	}
		public void Add(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			 response.setCharacterEncoding("utf-8");
			 
			 PrintWriter out = response.getWriter();
			 
			 ShangPinDao spname = new ShangPinDaoimpl();
			 
			 String sp=request.getParameter("spname");
			 
			 int s=spname.insertShangPin(sp);
			 if(s>0){
				 String sps=Result.toClient(true,"添加成功");
				 out.println(sps);	
			 }else{
				 String sps=Result.toClient(true,"添加失败");
				 out.println(sps);	
			 }
		}
					
			
		

		
		public void Delete(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			 response.setCharacterEncoding("utf-8");
			 
		
			
			 int splbid=Integer.parseInt(request.getParameter("splbid"));
	
			 int v=ptd.Shanchu(splbid);
			 if(v>0){
				
				 List<ShangPin> pts= ptd.queryShangPins();
					request.setAttribute("spname", pts);

					request.getRequestDispatcher("/Admin/Splb.jsp").forward(request, response);	
			 }
			 else{
				System.out.print("删除失败");
				
					
			 }
			 }
		public void Adds(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			 response.setCharacterEncoding("utf-8");
			 
			
		
			 String Spname=request.getParameter("spname");
			 String color=request.getParameter("color");
			 String spxh=request.getParameter("spxh");
			 String spcc=request.getParameter("spcc");
			
			 String spnc=request.getParameter("spnc");
			 String spclq=request.getParameter("spclq");
			 String jiage=request.getParameter("jiage");
			    int xid=Integer.parseInt(request.getParameter("xid"));
			    String src=request.getParameter("src");
			    String srca=request.getParameter("srca");
			 int s=pw.insertShangPins(Spname, color, spxh, spcc,spnc,spclq,jiage,xid,src,srca);
			 
			 if(s>0){ System.out.println("成功");
			 List<ShangPinLei> pas= pw.queryShangPinLeisa();
				request.setAttribute("safname", pas);
					request.getRequestDispatcher("/Admin/SpGl.jsp").forward(request, response);
			 }else{
				 System.out.println("不成功");
				 
			 }
			
			
		}
		public void ShanChu(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			 response.setCharacterEncoding("utf-8");
			 int sid=Integer.parseInt(request.getParameter("sid"));
			 int v=pw.Shanchu(sid);
			 if(v>0){
				 System.out.println("删除成功");

					List<ShangPin> pts= ptd.queryShangPins();
					request.setAttribute("spname", pts);
					List<ShangPinLei> pas= pw.queryShangPinLeisa();
					request.setAttribute("safname", pas);
						request.getRequestDispatcher("/Admin/SpGl.jsp").forward(request, response);	
			 }else{
				System.out.println("删除失败");
			 }
		}
			
		public void XiuGai(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			 response.setCharacterEncoding("utf-8");
			
				PrintWriter out = response.getWriter();
			int spid=Integer.parseInt(request.getParameter("spid"));
			 String spname=request.getParameter("spname");
			 String color=request.getParameter("color");
			 String spxh=request.getParameter("spxh");
			 String spcc=request.getParameter("spcc");
			 String spnc=request.getParameter("spnc");
			 String spclq=request.getParameter("spclq");
			 String jiage=request.getParameter("jiage");
			    int xid=Integer.parseInt(request.getParameter("xid"));
			    String src=request.getParameter("src");
			    String srca=request.getParameter("srca");
			 int s=pw.XiuGai(spid, spname, color, spxh, spcc, spnc, spclq, jiage, xid, src, srca);
			 if(s>0){
				 System.out.println("修改成功");
		
					
					out.println("<script>window.parent.location.reload();</script>");
			 }else{
				 System.out.println("修改失败");
				 
			 }
		}
		
		public void Xiu(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			 response.setCharacterEncoding("utf-8");
				PrintWriter out = response.getWriter();
				int splbid=Integer.parseInt(request.getParameter("splbid"));
				 String splbname=request.getParameter("splbname");
				 int s=ptd.XiuShangPin(splbid, splbname);
				 if(s>0){
					 
					 System.out.println("修改成功");
						
						out.println("<script>window.parent.location.reload();</script>");
					
				 }
				
				 
		else{
					 System.out.println("修改失败");
					 
				 }
			

				
		}
		public void GongSi(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			 response.setCharacterEncoding("utf-8");
		
			List<GongSi> gs=hws.queryGongSis();
			request.setAttribute("gsname", gs);
			request.getRequestDispatcher("/Admin/GongSi.jsp").forward(request, response);
			
		}	
		
		public void lGS(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			 request.setCharacterEncoding("utf-8");
			 response.setCharacterEncoding("utf-8");
			 int gsid=Integer.parseInt(request.getParameter("gsid"));
			GongSi gsv=hws.GongSis(gsid);
			request.setAttribute("gvsname", gsv);
			request.getRequestDispatcher("/Admin/GongSiX.jsp").forward(request, response);
			
		}	
		public void GSXiu(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			 response.setCharacterEncoding("utf-8");
				PrintWriter out = response.getWriter();
				 int gsid=Integer.parseInt(request.getParameter("gsid"));
				 String gsname=request.getParameter("gsname");
				 String jianjie=request.getParameter("jianjie");
				 String gsphone=request.getParameter("gsphone");
				 String gsemail=request.getParameter("gsemail"); 
				 String gsdz=request.getParameter("gsdz");
				 int s=hws.GongSis(gsid, gsname, jianjie, gsphone, gsemail, gsdz);
				 if(s>0){
					 
					 System.out.println("修改成功");
						
						out.println("<script>window.parent.location.reload();</script>");
					
				 }
				
				 
		else{
					 System.out.println("修改失败");
					 
				 }
			
		}
		public void saveImg(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			PrintWriter out = response.getWriter();
			SmartUpload smart=new SmartUpload();
			smart.setCharset("UTF-8");
			smart.initialize(getServletConfig(), request, response);
			try {
				smart.upload();
				smart.save("/images");
				String fileName=smart.getFiles().getFile(0).getFileName();
				out.println(Result.toClient(true, fileName));
			} catch (SmartUploadException e) {
				out.println(Result.toClient(false, "上传失败"));
				e.printStackTrace();
			}
			
		}
		
		public void DchaX(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			 response.setCharacterEncoding("utf-8");
			List<ShangPin> pts= ptd.queryShangPins();
			
			
		
			 String   spname= 	request.getParameter("spname");
			 
			 String color=request.getParameter("color");
			 String spxh=request.getParameter("spxh");
			 
			 String xidws=request.getParameter("xid");
			 int xid=0;
				if(xidws !=null && !xidws.equals("")){
					xid=Integer.parseInt(request.getParameter("xid"));
				}	 

				
			List<ShangPinLei> S=pw.ShangPinLesa(spname, color, spxh, xid);
	if(S!=null){
				System.out.println(S);
				List<ShangPinLei> pas= S;
				request.setAttribute("safname", pas);
	}
	request.setAttribute("spname", pts);
	
		request.getRequestDispatcher("/Admin/SpGl.jsp").forward(request, response);		
		}
		}
		
		
		