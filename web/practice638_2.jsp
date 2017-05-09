<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <base href="<%=basePath%>">
  </head> 
  <body>
   <h3>使用subset标签截取集合子集</h3>
   <s:subset source="#{'Java':'5学分', 'C':'4学分','C++':'6学分','JSP':'5学分','Struts 2':'5学分'}" 
   	start="1" count="3">
  		<s:iterator status="st">
  			<s:if test="#st.odd">
  				<s:property value="key"/>
  				<s:property value="value"/>
  			</s:if>
  		</s:iterator>
   </s:subset>
  </body>
</html>
