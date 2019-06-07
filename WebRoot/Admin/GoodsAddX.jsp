<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 ShangPin ptvs=(ShangPin) request.getAttribute("sname");
	
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		 <link rel="stylesheet" href="/HuaWeiS/Admin/css/amazeui.min.css" />
		  <link rel="stylesheet" href="/HuaWeiS/Admin/css/admin.css" />
		  <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
function Xiu(){

var splbid=document.getElementById("splbid").value;
var splbname=document.getElementById("splbname").value;
if(splbid!=""&&splbname!="" ){
 window.location.href="/HuaWeiS/Admin/Chanpin?method=Xiu&splbid="+<%=ptvs.getXid() %>+"&splbname="+splbname;
}
}



</script>
	
	</head>

	<body>
		
		<div class="admin-content-body">
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf">
          <strong class="am-text-primary am-text-lg">产品类管理</strong> 
        </div>
      </div>

      <hr>

   
     
      <form>
      <table border="1">
   <tr><td><input type="text" value="<%=ptvs.getXid() %>"  id="splbid" name="splbname"></td><tr>
          <tr><td><input type="text" value="<%=ptvs.getName() %>"  id="splbname" name="splbname"></td><tr>
         <tr><td> 
         <button type="button" class="am-btn am-btn-default" onclick="Xiu()"><span class="am-icon-plus">修改</span></button>
					</td></tr>
        
       
       
</table>
</form>
      

    
    </div>
	</body>
</html>
