<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
 	<title>My JSP 'dateTag.jsp' starting page</title>
  </head>
  <body>
    <%
        //距离格林治时间（1,1970, 00:00:00 GMT）的毫秒是1888888888的日期
        Date date = new Date(1888888888);
        //将date实例设置成pageContext里的属性
        pageContext.setAttribute("date", date);
    %>
    当前日期，不指定format：
    <s:date name="#attr.date"/>
    <br>
    当前日期，指定format：
    <s:date name="#attr.date" format="yyyy.MM.dd"/>
    <hr>
    生成日期:
    <s:date name="#attr.date" nice="false" format="yyyy.MM.dd"/>
    <!-- 如果nice="true"和format属性都指定了，
    则会输出指定日期和当前日期的时差，而format失效 -->
    <br>
    距今已有:
    <s:date name="#attr.date" nice="true"/>
  </body>
</html>
