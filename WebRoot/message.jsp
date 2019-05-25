<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>


<jsp:include page="header.jsp"></jsp:include>
<script>  
function checkForm(){   
	 	var lyname=documet.getElementById("lyname").value;
 		var lyhao=documet.getElementById("lyhao").value;
	 	var lyeamil=documet.getElementById("lyeamil").value;
 		var lyneirong=documet.getElementById("lyneirong").value;
	 if(lyname=" "){
 		aleat("不能为空");
 		return  false;
 	} if(lyhao=" "){
 		aleat("不能为空");
 		return  false;
 	}
 	 if(lyeamil=" "){
 		aleat("不能为空");
 		return  false;
 	}
 	 if(lyneirong=" "){
 		aleat("不能为空");
 		return  false;
 	}
 	
 return  true;
 }
 </script>


	<div>
		<header class="header-article-list">
		<h1>在线留言</h1>

		</header>
		<div>
			<form class="message-form" method="post"
				action="/huaweishouji/message" onsubmit="return checkForm(this)">

				<label>姓名 
				<input type="text" name="lyname" >
					<span>*</span> 
					</label> 
					<label>
					电话 <input type="text" name="lyhao" > <span>*</span> 
					</label>
					 <label
					>邮箱
					 <input type="text" name="lyeamil" > <span>*</span>
					 </label> 
					 <label>
					 内容
					<textarea name=lyneirong ></textarea> <span>*</span>
				</label>


				<button type="submit" class="am-btn am-btn-danger">提交</button>
			</form>
		</div>
	</div>
	﻿
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>