<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>My JSP 'includeTag.jsp' starting page</title>
  </head>
  <body>
    本页面的内容
    <hr>
    <s:include value="include-page.jsp">
    	<s:param name="uname" value="'chenheng'"/>
    </s:include>
  </body>
</html>
