<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
	<title>My JSP 'appendTag.jsp' starting page</title>
  </head>
  <body>
    <h3>append标签示例</h3>
    拼接并迭代List：<br>
    <!-- 使用append标签将多个集合拼接成一个新集合 -->
    <s:append var="newList">
    	<s:param value="{'HTML与CSS网页设计教学做一体化教程','JSP网站设计教学做一体化教程'}"/>
    	<s:param value="{'软件工程教学做一体化教程','基于Eclipse平台的JSP应用教程','Struts 2框架应用教程'}"/>
    </s:append>
    <!-- 迭代新集合newList -->
    <s:iterator var="book" value="newList" status="st">
    	<s:property value="#st.index + 1"/>&nbsp;
    	<s:property value="book"/><br>
    </s:iterator>
    <hr>
    拼接并迭代Map：<br>
     <!-- 使用append标签将多个集合拼接成一个新集合 -->
    <s:append var="newMap">
    	<s:param value="#{'HTML与CSS网页设计教学做一体化教程':'陈恒',
    'JSP网站设计教学做一体化教程':'陈恒'}"/>
    	<s:param value="#{'软件工程教学做一体化教程':'陈恒',
    '基于Eclipse平台的JSP应用教程':'陈恒',
    'Struts 2框架应用教程':'陈恒'}"/>
    </s:append>
    <!-- 迭代新集合newMap -->
    <s:iterator var="book" value="newMap" status="st">
    	<!-- 输出Map对象里的key -->
    	<s:property value="key"/>&nbsp;
    	<!-- 输出Map对象里的value -->
    	<s:property value="value"/><br>
    </s:iterator>
  </body>
</html>
