<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
  	<title>My JSP 'doubleselectTag.jsp' starting page</title>
  </head>
  <body>
    <h3>doubleselect标签示例</h3>
    <s:form theme="simple">
     <table><tr>
     	<td>选择您去过的城市：</td>
    	<td><s:doubleselect name="country"  list="{'国内','国外'}"
	    	doubleList="top == '国内'?{'北京','上海','广州','深圳','大连'}:{'纽约','伦敦','东京'}"  
	    	doubleName="city"/>
	    	<!--使用{'国内','国外'}作为第一个下拉列表的选项  -->
	    	<!--第二个下拉列表，根据前一个选项来确定值，
	    	doubleList的值是一个三目运算符表达式，
	    	top代表第一个下拉列表选中的值，意思是当第一个下拉列表选择"国内"时，
	    	第二列表就使用{'北京','上海','广州','深圳','大连'}来创建，
	    	否则{'纽约','伦敦','东京'}来创建  -->
	    <td>
	   <td>选择您的学校：</td>
	   <s:set var="myschools" value="#{'小学':{'东师附小','北师附小','科大附小'},
	   '中学':{'北京四中','上海一中','深圳八中','大连二十四中'},
	   '大学':{'北京大学','清华大学','中国科大'}}"/>
	   <td><s:doubleselect name="bank"  list="#myschools.keySet()"
	    	doubleList="#myschools[top]"  
	    	doubleName="school"/>
	    <td>
	   </tr></table>
    </s:form>
    
  </body>
</html>
