<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">

<jsp:include page="header.jsp"></jsp:include>


<section class="index-section">
    <div>
        <span></span>
        <span></span>
    </div>
    <div class="index-content">
        <section class="index-content-section-first"><div><img src="images/Gongsi.jpg" alt=""></div> </section>
        <section class="index-content-section-second">
            <div>
                <div class="index-auto">
                <%   List<GongSi> gs=(List<GongSi>) request.getAttribute("gsname");%>
            <article>公司介绍</article>
            <h6><%=gs.get(0).getGsname() %></h6>
            <main><%=gs.get(0).getJianjie()%></main>
            <a class="index-button" href="/HuaWeiS/User">查看详情</a>
                </div>
            </div>
        </section>
    </div>
</section>

<section class="index-product">
    <main>
        <ul>
           
        </ul>
    </main>
    <main></main>
    <main></main>
</section>
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
<section class="index-margin-bottom">
    <div class="index-morecase">
        <span></span>
        <a href="#">MORE &#62; &#62;</a>
    </div>
       
    <div class="index-content">
 
        <div class="product-list">
          <%   List<ShangPinLei> pa=(List<ShangPinLei>) request.getAttribute("saname");%>
            <div class="am-u-sm-6 am-u-md-6 am-u-lg-4">
                <a href="/HuaWeis/CanShuo?n=<%=pa.get(0).getXid()%>">
                    <img src="<%=pa.get(0).getSrc() %>" />
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-6 am-u-lg-4">
                <a href="/HuaWeiS/CanShuo?n=<%=pa.get(1).getXid()%>">
                    <img src="<%=pa.get(1).getSrc()%>" />
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-6 am-u-lg-4">
                <a href="/HuaWeiS/CanShuo?n=<%=pa.get(4).getXid()%>">
                    <img src="<%=pa.get(4).getSrc() %>" />
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-6 am-u-lg-4">
                <a href="/HuaWeiS/CanShuo?n=<%=pa.get(5).getXid()%>">
                    <img src="<%=pa.get(5).getSrc() %>" />
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-6 am-u-lg-4">
                <a href="/HuaWeiS/CanShuo?n=<%=pa.get(8).getXid()%>">
                    <img  src="<%=pa.get(8).getSrc() %>"  />
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-6 am-u-lg-4">
                <a href="/HuaWeiS/CanShuo?n=<%=pa.get(9).getXid()%>">
                    <img src="<%=pa.get(9).getSrc() %>" >
                </a>
            </div>
        </div>
    </div>
</section>


<section class="index-margin-bottom">
    <div class="index-morecase">
        <span></span>
        <a href="#">MORE &#62; &#62;</a>
    </div>
    <div class="index-content">


        <div class="new-index">
        <%    List<article_list_more> qq=   ( List<article_list_more>) request.getAttribute("at");%>
                
            <ul>
                <li><img  src="images/Fuwu.jpg" alt=""> </li>
                <li>  <a href="HuaWeiS/content"><h3><%=qq.get(0).getZxname() %></h3>
                    <article><%=qq.get(0).getZxneirong() %></article></a></li>
            </ul>
            
                  
            <ul>
            <% for (int i=1;i<qq.size()-1;i++) {
                     %>
                     <li><a href="HuaWeiS/content"><h3><%=qq.get(i).getZxname() %></h3>
                    <article><%=qq.get(i).getZxneirong() %>
                    </article>
                </a></li>
                     <%} %>
                
                
            </ul>

        </div>
    </div>
</section>

﻿<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>