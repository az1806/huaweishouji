<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="zh-cn">
<jsp:include page="header.jsp"></jsp:include>

<section class="pro-list">
    <aside class="pro-leftsidebar">
        <ul>
            <li>
                <a>产品搜索</a>
                <ul id="pro-search">
                    <li><a><input type="text"  class="pro-search"><a class="pro-search-btn">搜索</a></a></li>
                </ul>
            </li>
            <li>
                <a>产品分类</a>
                 <ul id="pro-category">
                    <%
                   List<ShangPin> pts=(List<ShangPin>) request.getAttribute("spname");%>
                  <%for (int i=0;i<pts.size();i++) {  %> <li class="on"><a
					href="/huaweishouji/CanShuo?n=<%=pts.get(i).getXid()%>"> <%=pts.get(i).getName() %>
						<%} %> 
						</a>
				</li>
                  
                </ul>
            </li>
        </ul>
    </aside>

    <aside class="pro-rightsidebar">
        <header>
            <p></p>
            <span>产品展示</span>
            <div class="product-nav"><a href="index.html">首页 </a>&#62;<a href="#">产品展示</a>&#62;<a>XX椅子</a></div>
        </header>
        
        <main>
        <%   List<ShangPinLei> ps=(List<ShangPinLei>) request.getAttribute("svname");%>
        
            <div class="pro-right-left">
                
				
                        <div class="pro-details-img"><img src="<%= ps.get(0).getSrca()%>" />
                </div>
					
                <div class="pro-detalis-carousel">
                    <div class="am-slider am-slider-default am-slider-carousel" data-am-flexslider="{itemWidth: 112, itemMargin: 4,move:5,  controlNav: false ,  slideshow: true}">
                        <ul class="am-slides pro-details">
                        <%for (int s=0;s<ps.size();s++) {  %>
                <li><img src="<%= ps.get(s).getSrca()%>"/>
                
                </li>
						<%} %> 
                            
                        </ul>
                    </div>
                </div>
				
            </div>
             <div class="pro-right-right">
            <ul class="pro-right-info-constant">
                    <li>产品名称:</li>
                    <li>产品颜色:</li>
                    <li>产品售价:</li>
                    <li>市场价:</li>
                </ul>
               
                <ul class="pro-right-info-variable">
               
                
               
                    <li><%= ps.get(0).getSname()%></li>
                    <li><%= ps.get(0).getColor()%></li>
                    <li><%= ps.get(0).getJiage()%></li>
                    <li><%= ps.get(0).getJiage()%></li>
                </ul>
              
                </div>
         
            <div class="am-tabs pro-tabs" data-am-tabs>
                <ul class="am-tabs-nav am-nav am-nav-tabs">
                    <li class="am-active"><a href="#tab1">详细说明1</a></li>
                    <li><a href="#tab2">详细说明2</a></li>
                    <li><a href="#tab3">详细说明3</a></li>
                    <li><a href="#tab4">详细说明4</a></li>
                </ul>

                <div class="am-tabs-bd">
                    <div class="am-tab-panel am-active" id="tab1">
                        <ul>
                            <li>
                                <span class="pro-tabs-constant">品牌:</span>
                                <span class="pro-tabs-variable">XXX</span>
                            </li>
                            <li>
                                <span class="pro-tabs-constant">是否组装:</span>
                                <span class="pro-tabs-variable">NO</span>
                            </li>
                            <li>
                                <span class="pro-tabs-constant">是否可定制:</span>
                                <span class="pro-tabs-variable">yes</span>
                            </li>
                            <li>
                                <span class="pro-tabs-constant">型号:</span>
                                <span class="pro-tabs-variable">000000</span>
                            </li>
                            <li>
                                <span class="pro-tabs-constant">颜色分类:</span>
                                <span class="pro-tabs-variable">卡其</span>
                            </li>
                            <li>
                                <span class="pro-tabs-constant">设计元素:</span>
                                <span class="pro-tabs-variable">大师设计</span>
                            </li> <li>
                            <span class="pro-tabs-constant">风格:</span>
                            <span class="pro-tabs-variable">日式</span>
                        </li>
                            <li>
                                <span class="pro-tabs-constant">款式定位:</span>
                                <span class="pro-tabs-variable">现代</span>
                            </li>
                        </ul>
                    </div>
                    <div class="am-tab-panel" id="tab2">2</div>
                    <div class="am-tab-panel" id="tab3">3</div>
                    <div class="am-tab-panel" id="tab4">4</div>
                </div>
            </div>
           
        </main>
    </aside>


</section>

﻿<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>