<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'practice638_1.jsp' starting page</title>
  </head>
  <body>
    <h3>流程控制标签</h3>
    使用append标签拼接集合：<br>
    集合1：{'我','爱','学','习'}<br>
    集合2：{'Java Web开发','以及','Struts 2框架','。'}
  <br>
  append拼接后的集合appendList：
  <s:append var="appendList">
  	<s:param value="{'我','爱','学','习'}"/>
  	<s:param value="{'《Java Web开发》','以及','《Struts 2框架》','。'}"/>
  </s:append>
  <s:iterator value="#appendList">
  	<s:property/>
  </s:iterator>
  <hr>
    使用merge标签拼接集合：<br>
    集合1：{'我','爱','学','习'}<br>
    集合2：{'Java Web开发','以及','Struts 2框架','。'}<br>
  merge拼接后的集合mergeList：
  <s:merge var="mergeList">
  	<s:param value="{'我','爱','学','习'}"/>
  	<s:param value="{'《Java Web开发》','以及','《Struts 2框架》','。'}"/>
  </s:merge>
  <s:iterator value="#mergeList">
  	<s:property/>
  </s:iterator>
  </body>
</html>
