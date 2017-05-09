<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head> 
    <title>My JSP 'ifTag.jsp' starting page</title>
  </head>
  <body>
   	<h3>if/elseif/else示例</h3>
   	<!-- 使用set标签来定义一个变量score，值为95 -->
   	<s:set var="score" value="95"/>
   	考试分数：
   	<s:property value="#score"/><br>
   	考试等级：
   	<!-- 使用if/elseif/else标签判断等级 -->
   	<s:if test="#score >= 90">优秀</s:if>
   	<s:elseif test="#score >= 80">良好</s:elseif>
   	<s:elseif test="#score >= 70">中等</s:elseif>
   	<s:elseif test="#score >= 60">及格</s:elseif>
   	<s:else>不及格</s:else>
  </body>
</html>
