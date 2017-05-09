<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>My JSP 'practice649.jsp' starting page</title>
  </head> 
  <body>
  	<h3>调查问卷</h3>
  	<!-- theme="simple"设置表单的主题为简单主题 -->
  	<s:form theme="simple" enctype="multipart/form-data" method="post">
  		<table>
			<tr>
				<td>姓名</td>
				<td><s:textfield  name="name"/></td>
			</tr>
			<tr>
				<td>性别</td>
				<td>
					<s:radio name="sex" 
					list="#{1:'男',2:'女'}" 
					listKey="key" 
    				listValue="value" value="2" />
    				<!-- value="2"的意思是默认选中 '女'-->
				</td>
			</tr>
			<tr>
				<td>所在地</td>
				<td>
					<s:select name="address" list="#{'libiya':'利比亚','xuliya':'叙利亚','yilang':'伊朗'}" 
	 					listKey="key" listValue="value" value="'xuliya'"/>
	 					<!-- value="'xuliya'的意思是默认选中 '女'-->
				</td>
			</tr>
			<tr>
				<td>选则您去过的城市</td>
				<td>
					<s:doubleselect name="country"  
					list="{'国内','国外'}"
	    			doubleList="top == '国内'?{'北京','上海','广州','深圳','大连'}:{'纽约','伦敦','东京'}"  
	    			doubleName="city"/>
	    	<!--使用{'国内','国外'}作为第一个下拉列表的选项  -->
	    	<!--第二个下拉列表，根据前一个选项来确定值，
	    	doubleList的值是一个三目运算符表达式，
	    	top代表第一个下拉列表选中的值，意思是当第一个下拉列表选择"国内"时，
	    	第二列表就使用{'北京','上海','广州','深圳','大连'}来创建，
	    	否则{'纽约','伦敦','东京'}来创建  -->
				</td>
			</tr>
			<tr>
				<td>喜欢的歌手</td>
				<td>
				<s:checkboxlist name="lover" value="{'凤姐','芙蓉哥哥'}"
    	list="{'王菲','凤姐','芙蓉哥哥','中国一哥'}"/>
				</td>
			</tr>
			<tr>
				<td>你的靓照</td>
				<td><s:file name="pictrue"/></td>
			</tr>
			<tr>
				<td>个人描述</td>
				<td><s:textarea name="miaoshu" cols="20" rows="10"/></td>
			</tr>
			<tr>
				<td><s:submit value="提交"/></td>
				<td><s:reset value="重置"/></td>
			</tr>
		</table>
  	</s:form> 
  </body>
</html>
