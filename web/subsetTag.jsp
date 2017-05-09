<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>My JSP 'subsetTag.jsp' starting page</title>
  </head> 
  <body>
  	<h3>subset标签示例</h3>
  	<!-- 定义一个Decider实例 -->
  	<s:bean name="bean.MyDecider" var="mydecider"/>
  	<!-- 使用自定义的Decider实例来截取目标集合，生成子集 -->
    <s:subset  decider="#mydecider"
    source="{'HTML与CSS网页设计教学做一体化教程','JSP网站设计教学做一体化教程','软件工程教学做一体化教程',
    '基于Eclipse平台的JSP应用教程','Struts 2框架应用教程'}">
    	<!-- 迭代subset标签实现的子集 -->
   		<s:iterator>
    		<s:property/><br>
    	</s:iterator>
    </s:subset>
  </body>
</html>
