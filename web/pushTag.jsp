<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>My JSP 'pushTag.jsp' starting page</title>
  </head> 
  <body>
     <h3>push标签示例</h3>
  	<!-- 使用bean标签创建user对象 -->
  	<s:bean name="bean.User" var="user" >
  		<!-- 通过param标签调用set方法给uname、uemail赋值 -->
  		<s:param name="uname" value="'陈恒'"/>
  		<!-- 别忘记了单引号'陈恒' -->
  		<s:param name="uemail" value="'123456@qq.com'"/>
  	</s:bean>
  	<!-- 用push标签将Stack Context中的user实例放入ValueStack栈顶 -->
  	<s:push value="#user">
  		<!-- 输出栈顶元素的属性 -->
  		<s:property value="uname"/>
  		<s:property value="uemail"/>
  	</s:push>
  </body>
</html>
