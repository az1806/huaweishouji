<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	 UserHouTai use =(	 UserHouTai )request.getAttribute("yname");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/admin.css" />
		<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	
	<script type="text/javascript">
	function USXiu(){

var ygname=document.getElementById("ygn").value;
var ygsex=document.getElementById("ygs").value;
var ygphone=document.getElementById("ygp").value;
var ygphoto=document.getElementById("ygo").value;
if(ygname!=""&&ygsex!=""&&ygphone!=""&&ygphoto!=""){
 window.location.href="/HuaWeiS/Admin/UserS?method=USXiu&ygid="+<%=use.getYgid()%>+"&ygname="+ygname+"&ygsex="+ygsex+"&ygphone="+ygphone+"&ygphoto="+ygphoto;
}
}
	</script>
	</head>

	<body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">员工管理</strong><small></small></div>
			</div>

			<hr>

			
				<div class="am-u-sm-12 am-u-md-3">

				</div>
				
			</div>
			<div class="am-g">
				<div class="am-u-sm-12">
					<form class="am-form">
						<table class="am-table am-table-striped am-table-hover table-main">
							
							<tbody>
								<tr>
									
									<td><input type="text" value="<%=use.getYgname() %>" id="ygn" name="ygname"></td>
									<td>
										<input type="text" id="ygs" name="ygsex" value="<%=use.getYgsex() %>">
									</td>
									<td> <input type="text" id="ygp" name="ygphone " value="<%=use.getYgphone()%>"></td>
									<td ><input type="text" id="ygo" name="ygphoto" value="<%=use.getYgphoto() %>" ></td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button" class="am-btn am-btn-default" onclick="USXiu()">修改 </button>

											</div>
										</div>
									</td>
								</tr>
								
							</tbody>
						</table>
						
					</form>
				</div>
			</div>
		</div>
	</body>
</html>