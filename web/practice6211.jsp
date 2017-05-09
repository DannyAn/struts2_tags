<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>My JSP 'strutsTag.jsp' starting page</title>
  </head>
  <body>
     <!-- 使用bean标签创建user对象 -->
  	<s:bean name="bean.User" var="user" >
  		<!-- 通过param标签调用set方法给uname、uemail赋值 -->
  		<s:param name="uname" value="'陈恒'"/>
  		<!-- 别忘记了单引号'陈恒' -->
  		<s:param name="uemail" value="'123456@qq.com'"/>
  	</s:bean>
  	使用var属性在bean标签体外取JavaBean的属性值：<br>
  	姓名为：<s:property value="#user.uname"/><br>
  	邮箱为：<s:property value="#user.uemail"/><br>
  	<hr>
  	当前日期，指定format：
     <s:date name="new java.util.Date()" format="dd-MM-yyyy"/><br>
      <%
      	//1990=1900+90,9相当于10月
      	// the year minus 1900, the month between 0-11
    	Date date = new Date(90, 9, 10 );
    	//将date实例设置成pageContext里的属性
    	pageContext.setAttribute("date", date);
     %>
     生成日期:
     <s:date name="#attr.date" nice="false" format="yyyy-MM-dd"/><br>
      距今已有:
     <s:date name="#attr.date" nice="true"/>
     <hr>
  	<s:set var="u1" value="'这是一个字符串'" scope="page"/>
  	<s:set var="u2" value="'这是一个字符串'" scope="request"/>
  	<s:set var="u3" value="'这是一个字符串'" scope="session"/>
  	<s:set var="u4" value="'这是一个字符串'" scope="application"/>
  	  取出Page范围的值：
  	${pageScope.u1 }<br>
  	取出request范围的值：
  	<!-- 也可以使用${requestScope.u2 }取-->
  	<s:property value="#request.u2"/><br>
  	取出session范围的值：
  	<s:property value="#session.u3"/><br>
  	取出application范围的值：
  	<s:property value="#application.u4"/><br>
  	<hr>
  	<s:debug/>
  </body>
</html>
