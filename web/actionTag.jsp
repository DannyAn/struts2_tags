<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  <body>
  	<h3>s:action示例</h3>
  	将结果包含到本页面中：
  	<s:action name="actionTag" executeResult="true" namespace="/"/>
  	<hr>
  	将结果包含到本页面中，同时阻止本页面的请求参数传入Action：
  	<s:action name="actionTag" executeResult="true"  
  	namespace="/" ignoreContextParams="true"/>
  	<hr>
  	不将结果包含到本页面中：
  	<s:action name="actionTag" executeResult="false" namespace="/"/>
  </body>
</html>
