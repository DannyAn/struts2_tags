<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>My JSP 'generatorTag.jsp' starting page</title>
  </head>
  <body>
    <h2>generator标签示例</h2>
    generator标签体内迭代子字符串集合：<br><br>
    <!-- 使用generator标签将一个字符串解析成子字符串集合，并迭代输出集合 -->
    <s:generator separator="," 
    val="'HTML与CSS网页设计教学做一体化教程,JSP网站设计教学做一体化教程,
    软件工程教学做一体化教程,基于Eclipse平台的JSP应用教程,Struts 2框架应用教程'">
    	<!-- 在generator标签体内，子字符串集合位于栈顶，所以这里的迭代就是临时生成的集合 -->
    	<s:iterator>
    		<s:property/><br>
    	</s:iterator>
    </s:generator>
    <hr>
    generator标签体外迭代子字符串集合：<br><br>
    <!-- 指定了count，这里最多迭代2次 -->
    <s:generator separator="," count="2" var="books"
    val="'HTML与CSS网页设计教学做一体化教程,JSP网站设计教学做一体化教程,
    软件工程教学做一体化教程,基于Eclipse平台的JSP应用教程,Struts 2框架应用教程'" >
    </s:generator>
    <!-- 在generator标签体外，这里的迭代是PageContext里的属性books -->
   	<s:iterator value="books" var="book">
    	<s:property value="book"/><br>
    </s:iterator>
  </body>
</html>
