<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html> 
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'login.jsp' starting page</title>
  </head>
  <body>
    <s:form action="login.action" method="post" theme="simple">
    	<table>
    	<tr><td>uname:</td>
			<td><s:textfield name="uname"/></td></tr>
    	<tr><td>upass:</td>
    		<td><s:password name="upass"/></td></tr>
    	<tr><td colspan="2" align="center"><s:submit value="提交"/></td></tr>
   		</table>
    	<s:actionmessage/>
    	<s:actionerror/>
    </s:form>
  </body>
</html>
