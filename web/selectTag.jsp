<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>My JSP 'selectTag.jsp' starting page</title>
  </head>
  <body>
    <h3>select标签示例</h3>
    <s:form>
    <!-- 使用List生成下拉列表，value属性指定默认选择项-->
    <s:select name="course" label="选择您喜欢的课程" 
    list="{'Java','C','.Net','JSP','Struts 2'}" value="'JSP'"/>
    <!-- 使用Map生成下拉列表，value属性指定默认选择项-->
    <s:select name="sport" label="选择您喜欢的运动"
     list="#{1:'瑜珈',2:'户外',3:'球类',4:'自行车'}" 
	 listKey="key" listValue="value" value="2"/>
    <!-- 集合里放置多个JavaBean实例生成下拉列表 -->
    <!-- 创建MyUser（6.5.2节中的类）实例 -->
    <s:bean name="bean.MyUser" var="mu"/>
    <s:select name="yourUser" list="#mu.users" label="选择您喜欢的用户" 
    listKey="uemail" listValue="uname"/>
    <!-- #mu.users相当于对象mu调用getUsers()方法 -->
    <!-- listKey="uemail"是指将集合中实例的 uemail作为选项的value-->
    <!-- listKey="uname"是指将集合中实例的 uname作为选项框的Label，即显示在页面上-->
    </s:form>
  </body>
</html>
