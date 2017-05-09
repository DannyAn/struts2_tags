<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
	<title>My JSP 'radioTag.jsp' starting page</title>
  </head>
  <body>
    <h3>radio标签示例</h3>
    <s:form>
    	<!-- 使用简单集合生成多个单选框 -->
    	<s:radio name="mysongers" label="请选择您喜欢的歌手" 
    	list="{'张三','李四','王五','张四','李五'}"/>
    	<!-- 使用Map对象生成多个单选框 -->
    	<s:radio name="mysports"  label="请选择您喜欢的运动"  
    	list="#{1:'瑜珈用品',2:'户外用品',3:'球类',4:'自行车'} " listKey="key" 
    	listValue="value" />
    	<!-- 创建MyUser（6.4.2节中的类）实例 -->
    	<s:bean name="bean.MyUser" var="mu"/>
    	<!-- 使用集合里的实例来生成多个单选框 -->
    	<s:radio name="myusers"  label="请选择您喜欢的用户" 
    	list="#mu.users" listKey="uemail" listValue="uname" />
    	<!-- #mu.users相当于对象mu调用getUsers()方法 -->
    	<!-- listKey="uemail"是指将集合中实例的 uemail作为单选框的value-->
    	<!-- listKey="uname"是指将集合中实例的 uname作为单选框的Label，即显示在页面上-->
    </s:form>
  </body>
</html>
