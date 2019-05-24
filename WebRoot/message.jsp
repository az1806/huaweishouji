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
	<footer>
	<div>
		<div class="footer-info">
			<div class="footer-content">
				<img src="images/qccode.png" alt="">
				<div>
					<p>招商热线:0714-8868331</p>
					<div class="footer-box">
						<i class="icon-tel"></i> <span>公司电话:</span> <span>0714-8868331</span>
					</div>
					<div class="footer-box">
						<i class="icon-email"></i> <span>公司邮箱:</span> <span>123@dayeyunalading.com</span>
					</div>
					<div class="footer-box">
						<i class="icon-address"></i> <span>公司地址:</span> <span>湖北省XXX市XXX大道小区B栋201</span>
					</div>
				</div>
			</div>
		</div>
		<style>
.footer-bottom a {
	color: #F1404B
}
</style>
		<div class="footer-bottom">
			<div style="text-align:center;color:#fff;line-height:100px;">
				<span><a href="http://www.haothemes.com/" target="_blank"
					title="好主题">好主题</a>提供 - More Templates <a
					href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
					- Collect from <a href="http://www.cssmoban.com/" title="网页模板"
					target="_blank">网页模板</a> </span>
			</div>
		</div>
	</div>
	</footer>
</body>
</html>