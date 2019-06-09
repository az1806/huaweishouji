<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
GongSi gsv=(GongSi)request.getAttribute("gvsname");
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
	function GSXiu(){

var gsname=document.getElementById("gsn").value;
var jianjie=document.getElementById("gsj").value;
var gsphone=document.getElementById("gsp").value;
var gsemail=document.getElementById("gse").value;
var gsdz=document.getElementById("gsd").value;

if(gsname!=""&&jianjie!=""&&gsphone!=""&&gsemail!=""&&gsdz!=""&&gsid!=""){
 window.location.href="/HuaWeiS/Admin/Chanpin?method=GSXiu&gsid="+<%=gsv.getGsid()%>+"&gsname="+gsname+"&jianjie="+jianjie+"&gsphone="+gsphone+"&gsemail="+gsemail+"&gsdz="+gsdz;
}
}
	</script>
	
	</head>

	<body>
		
				<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">公司信息管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				
				
				<div class="am-u-sm-12 am-u-md-3">
					
				</div>
			</div>
			<div class="am-g">
				<div class="am-u-sm-12">
				
					<form class="am-form">
						<table  border="1" align="center">
                          <tr><td><input type="text"  value="<%=gsv.getGsname() %>" id="gsn" name="gsname"> </td></tr>
                         <tr> <td><input type="text"  value="<%=gsv.getJianjie() %>" id="gsj" name="jianjie"></td></tr>
                        <tr> <td><input type="text"  value="<%=gsv.getGsphone() %>" id="gsp" name="gsphone"></td></tr>
                        <tr> <td><input type="text"  value="<%=gsv.getGsemail() %>" id="gse" name="gsemail"></td></tr>
                           <tr> <td><input type="text"  value="<%=gsv.getGsdz() %>" id="gsd" name="gsdz"></td></tr>
									<tr><td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button" class="am-btn am-btn-default" onclick="GSXiu()">修改 </button>
											</div>
										</div>
									</td>
								</tr>
							
								
						</table>
						
					</form>
					</div>

			</div>
		</div>
	</body>

</html>