<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>My JSP 'beanTag.jsp' starting page</title>
  </head>
  <body>
  	<h3>bean标签示例</h3>
  	<!-- 使用bean标签创建user对象 -->
  	<s:bean name="bean.User" var="user" >
  		<!-- 通过param标签调用set方法给uname、uemail赋值 -->
  		<s:param name="uname" value="'陈恒'"/>
  		<!-- 别忘记了单引号'陈恒' -->
  		<s:param name="uemail" value="'123456@qq.com'"/>
  		<!-- 使用property标签输出JavaBean的属性值 -->
  		在bean标签体内取JavaBean的属性值：<br>
  		姓名为：<s:property value="uname"/><br>
  		邮箱为：<s:property value="uemail"/><br>
  	</s:bean>
  	<br>
  	使用var属性在bean标签体外取JavaBean的属性值：<br>
  	姓名为：<s:property value="#user.uname"/><br>
  	邮箱为：<s:property value="#user.uemail"/><br>
		<s:debug/>
  </body>
</html>
