<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>My JSP 'sortTag.jsp' starting page</title>
  </head>
  <body>
    <h3>sort标签示例</h3>
    <!-- 定义一个Comparator实例 -->
    <s:bean name="bean.MyComparator" var="myComparator"/>
    <!-- 使用自定义的排序规则，对目标集合进行排序 -->
    <s:sort comparator="#myComparator" source="{'HTML与CSS网页设计教学做一体化教程','JSP网站设计教学做一体化教程','软件工程教学做一体化教程',
    '基于Eclipse平台的JSP应用教程','Struts 2框架应用教程'}">
    	<!-- 迭代输出排序后的集合 -->
	    <s:iterator>
	    	<s:property/><br>
	    </s:iterator>
    </s:sort>
  </body>
</html>
