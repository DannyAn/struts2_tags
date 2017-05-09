<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head> 
    <title>My JSP 'iteratorTag.jsp' starting page</title>
  </head>
  <body>
  	<h3>iterator标签示例</h3>
  	迭代List：<br>
  	<table border="1">
  		<tr>
  			<th>序号</th>
  		<tr>
    <s:iterator value="{'HTML与CSS网页设计教学做一体化教程','JSP网站设计教学做一体化教程',
    '软件工程教学做一体化教程','基于Eclipse平台的JSP应用教程','Struts 2框架应用教程'}" 
    var="book" status="st" begin="1" end="4" step="2">
    	<!-- 迭代输出 -->
    	<tr>
    		<!-- 使用 status属性找索引，索引从0开始-->
    		<td><s:property value="#st.index + 1"/></td>
    		<td><s:property value="book"/></td>
    	</tr>
    </s:iterator>
    </table>
    <hr>
    迭代Map:<br>
    <table border="1">
  		<tr>
  			<th>书名</th>
  			<th>作者</th>
  		<tr>
    <s:iterator value="#{'HTML与CSS网页设计教学做一体化教程':'陈恒',
    'JSP网站设计教学做一体化教程':'陈恒',
    '软件工程教学做一体化教程':'陈恒',
    '基于Eclipse平台的JSP应用教程':'陈恒',
    'Struts 2框架应用教程':'陈恒'}" >
    	<tr>
    		<!-- 输出Map对象里的key -->
    		<td><s:property value="key"/></td>
    		<!-- 输出Map对象里的value -->
    		<td><s:property value="value"/></td>
    	</tr>
    </s:iterator>
     </table>
  </body>
</html>
