<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>My JSP 'optiontransferselectTag.jsp' starting page</title>
  </head>
  <body>
  	<s:form>
  		<s:optiontransferselect 
  		label="选择您喜欢的课程"
  		name="left"
  		doubleName="right"
  		leftTitle="计算机课程"
  		rightTitle="非计算机课程"
  		leftUpLabel="上移"
  		leftDownLabel="下移"
  		rightUpLabel="上移"
  		rightDownLabel="下移"
  		addToLeftLabel="<-向左移动"
  		addToRightLabel="向右移动->"
  		addAllToLeftLabel="<-全部左移"
  		addAllToRightLabel="全部右移->"
  		selectAllLabel="-全部选择-"
  		cssStyle="width:150x;height:200px;"
  		doubleCssStyle="width:150x;height:200px;"
  		list="#{1:'Java程序设计',2:'C++程序设计',3:'操作系统',4:'高等数学I',5:'海峡两岸' }"
  		listKey="key"
  		listValue="value"
  		multiple="true"
  		doubleList="#{6:'大学物理',7:'大学化学',8:'计算机英语',9:'JSP程序设计' }" 
  		doubleListKey="key"
  		doubleListValue="value"
  		doubleMultiple="true"/>
  	</s:form>
  </body>
</html>
