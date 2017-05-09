<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>My JSP 'comboboxTag.jsp' starting page</title>
  </head>
  <body>
    <s:form>
    	<h3>combobox标签示例</h3>
    	<!-- 使用 combobox标签，其中list指定下拉列表项-->
    	<s:combobox label="请选择您喜欢的大学" size="20" maxlength="20" name="colloge"
    	list="{'清华大学','北京大学','南京大学','科技大学'}"/>
    </s:form>
  </body>
</html>
