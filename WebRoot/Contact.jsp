<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<jsp:include page="header.jsp"></jsp:include>

    

    <main class="contact">
        <iframe src="map.html" width="636" height="378" frameborder="0" scrolling="no"></iframe>
      <%   List<GongSi> gs=(List<GongSi>) request.getAttribute("gsname");%>
        <ul>
            <li>
                <span><img src="images/contact1.png"/></span>
                <h2>联系我们</h2>
                <p>电话:<%=gs.get(0).getGsphone() %></p>
            </li>
            <li>
                <span><img src="images/contact2.png"/></span>
                <h2>公司地址</h2>
                <p>地址:<%=gs.get(0).getGsdz() %></p>
            </li>
            <li>
                <span><img src="images/contact3.png"/></span>
                <h2>电子邮箱</h2>
                <p>邮箱:<%=gs.get(0).getGsemail() %></p>
            </li>
        </ul>
    </main>
</div>
﻿<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>