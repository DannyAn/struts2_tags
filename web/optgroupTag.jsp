<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
	<title>My JSP 'optgroupTag.jsp' starting page</title>
  </head>
  <body>
    <h3>optgroup标签示例</h3>
    <s:form>
    	<s:select name="course" label="选择您喜欢的技术" multiple="true" 
    	size="10"  list="{'C','.Net','PHP'}">
    		<s:optgroup label="Java系列" 
    		list="#{1:'JSP',2:'Struts 2',3:'Hibernate',4:'Spring'}"
    		listKey="key" listValue="value"/>
    		<s:optgroup label="其他" 
    		list="#{1:'JSF',2:'CSS',3:'HTML'}"
    		listKey="key" listValue="value"/>
    	</s:select>
    </s:form>
  </body>
</html>
