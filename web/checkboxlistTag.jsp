<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
	<title>My JSP 'checkboxlistTag.jsp' starting page</title>
  </head>
  <body>
    <h3>checkboxlist标签示例</h3>
    <s:form>
    	<!-- 使用简单集合生成多个复选框 -->
    	<s:checkboxlist name="mysongers" label="请选择您喜欢的歌手" labelposition="top" 
    	list="{'张三','李四','王五','张四','李五'}"/>
    	<!-- 使用Map对象生成多个复选框 -->
    	<s:checkboxlist name="mysports"  label="请选择您喜欢的运动" labelposition="top" 
    	list="#{1:'瑜珈用品',2:'户外用品',3:'球类',4:'自行车'} " listKey="key" 
    	listValue="value" value="{1,2,4}"/>
    	<!-- 创建MyUser实例 -->
    	<s:bean name="bean.MyUser" var="mu"/>
    	<!-- 使用集合里的实例来生成多个复选框 -->
    	<s:checkboxlist name="myusers"  label="请选择您喜欢的用户" labelposition="top" 
    	list="#mu.users" listKey="uemail" listValue="uname" />
    	<!-- #mu.users相当于对象mu调用getUsers()方法 -->
    	<!-- listKey="uemail"是指将集合中实例的 uemail作为复选框的value-->
    	<!-- listKey="uname"是指将集合中实例的 uname作为复选框的Label，即显示在页面上-->
    </s:form>
  </body>
</html>
