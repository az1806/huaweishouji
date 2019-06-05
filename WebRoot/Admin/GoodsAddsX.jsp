<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 int n=Integer.parseInt(request.getParameter("n"));
 
	 
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		 <link rel="stylesheet" href="/HuaWeis/Admin/css/amazeui.min.css" />
		  <link rel="stylesheet" href="Admin/css/admin.css" />
		 
		 <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
function Adds(){
var sid=document.getElementById("sid").value;
var spname=document.getElementById("n").value;
var color=document.getElementById("z").value;
var spxh=document.getElementById("x").value;
var spcc=document.getElementById("c").value;
var xid=document.getElementById("xid").value;
if(sid!=""&&spname !=""&&color!=""&&spxh!=""&&spcc!=""&&xid!="" ){
 window.location.href="/HuaWeiS/Admin/Chanpin?method=ShanChu&sid="+sid+"&spname="+spname+"&color="+color+"&spxh="+spxh+"&spcc="+spcc+"&xid="+xid;
}
}
</script>
		  	
</head>
	<body>
		
		<div class="admin-content-body">
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf">
          <strong class="am-text-primary am-text-lg">产品管理</strong> 
        </div>
      </div>

      <hr>

      <form  class="am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-margin gallery-list">
  
         <%  List<ShangPinLei> pa=(List<ShangPinLei>)request.getAttribute("saname");
         %>
            <img class="am-img-thumbnail am-img-bdrs" src="images/lps.jpg" alt="">
            <div class="gallery-title"><h1>华为为你共享</h1></div>
          
            <div class="con" onclick="getFocus(this)">
            商品id：<input type="text" name="sid"  placeholder="请输商品名" autocomplete="off" class="layui-input" value="<%=pa.get(n-1).getSid() %>" id="sid"> </div>
			     <div class="con" onclick="getFocus(this)">	商品名：	<input type="text" name="spname"  placeholder="请输商品名" autocomplete="off" class="layui-input" id="n"></div>
					<div class="con" onclick="getFocus(this)">	
								商品颜色：	<input type="text" name="color"  placeholder="请输商品颜色" autocomplete="off" class="layui-input" id="z"></div>
							<div class="con" onclick="getFocus(this)">
										商品型号：	<input type="text" name="spxh"  placeholder="请输商型号" autocomplete="off" class="layui-input" id="x"></div>
								<div class="con" onclick="getFocus(this)">
											商品储存：	<input type="text" name="spcc"  placeholder="请输商品储存" autocomplete="off" class="layui-input" id="c"></div>
								<div class="con" onclick="getFocus(this)">
												商品类别：	<input type="text" name="xid"  placeholder="请输商品类别" autocomplete="off" class="layui-input" id="xid"></div>
						
        
            <div class="gallery-title">    <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 修改</button></div>
         
   
       
         
      </form>

    
    </div>
	</body>
</html>
