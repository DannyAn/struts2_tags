<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head> 
    <title>My JSP 'setTag.jsp' starting page</title>
  </head> 
  <body>
   	<h3>set标签示例</h3>
   	<!-- 使用bean标签创建user对象 -->
  	<s:bean name="bean.User" var="user" >
  		<!-- 通过param标签调用set方法给uname、uemail赋值 -->
  		<s:param name="uname" value="'陈恒'"/>
  		<!-- 别忘记了单引号'陈恒' -->
  		<s:param name="uemail" value="'123456@qq.com'"/>
  	</s:bean>
  	<!-- 将user对象放入Page范围 -->
  	<s:set var="u1" value="#user" scope="page"/>
  	<!-- 将user对象放入request范围 -->
  	<s:set var="u2" value="#user" scope="request"/>
  	<!-- 将user对象放入session范围 -->
  	<s:set var="u3" value="#user" scope="session"/>
  	<!-- 将user对象放入application范围 -->
  	<s:set var="u4" value="#user" scope="application"/>
  	<!-- 将user对象放入默认范围 -->
  	<s:set var="u5" value="#user"/>
  	取出Page范围的值：
  	${pageScope.u1.uname }<br>
  	取出request范围的值：
  	<!-- 也可以使用${requestScope.u2.uname }取-->
  	<s:property value="#request.u2.uname"/><br>
  	取出session范围的值：
  	<s:property value="#session.u3.uname"/><br>
  	取出application范围的值：
  	<s:property value="#application.u4.uname"/><br>
  	取出默认范围（Stack Context）的值：
  	<s:property value="#u5.uname"/><br>
  </body>
</html>
