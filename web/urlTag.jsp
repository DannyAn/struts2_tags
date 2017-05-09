<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head> 
    <title>My JSP 'urlTag.jsp' starting page</title>
  </head> 
  <body>
    只指定value属性：
    <s:url value="actionTag.action"/><br>
    指定action属性，且使用param传入参数的形式：
    <s:url action="actionTag">
        <s:param name="uname" value="'chenheng'"/>
    </s:url>
    <br>
    <s:set var="myurl" value="'www.baidu.com'"/>
    只指定value属性，属性为字符串：
    <s:url value="%{#myurl}"/>
  </body>
</html>
