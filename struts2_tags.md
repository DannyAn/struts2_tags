#Struts2标签

@(struts2)[sturts2, 标签]

struts2标签库可分为三类：
1. 用户界面标签(UI标签)
2. 非用户界面标签(非UI标签)
3. AJAX标签
要在jsp中使用struts标签要加入
```xml
<%@taglib prefix="s" uri="/struts-tags"%>
```
##数据标签
###action标签
``name为``必填属性，制定了调用的Action
``namespace``为可选属性
``executeResult``为是否将处理结果包含进来，默认为``false``。
``ignoreContextParams``为是否阻止请求参数是否传入Action，默认为``false``
```xml
 s:action name="actionTag" executeResult="true" namespace="/" ignoreContextParams="true"/>
```
```xml
将结果包含到本页面中：
  	<s:action name="actionTag" executeResult="true" namespace="/"/>
  	<hr>
  	将结果包含到本页面中，同时阻止本页面的请求参数传入Action：
  	<s:action name="actionTag" executeResult="true"  
  	namespace="/" ignoreContextParams="true"/>
  	<hr>
  	不将结果包含到本页面中：
  	<s:action name="actionTag" executeResult="false" namespace="/"/>
```
###bean标签
``name``是必填属性，该属性指定要实例化的JavaBean的实例类。
``var``:该属性是一个可选属性。如果指定了该属性，则允许直接通过该var属性来访问JavaBean实例。
```xml
<s:bean name="bean.User" var="user" >
<!-- 通过param标签调用set方法给uname、uemail赋值 -->
  	<s:param name="uname" value="'陈恒'"/>
  	<!-- 别忘记了单引号'陈恒' -->
  	<s:param name="uemail" value="'123456@qq.com'"/>
  	<!-- 使用property标签输出JavaBean的属性值 -->
  	在bean标签体内取JavaBean的属性值：<br>
  	姓名为：<s:property value="uname"/><br>
  	邮箱为：<s:property value="uemail"/><br>
</s:bean><br>
使用var属性在bean标签体外取JavaBean的属性值：<br>
姓名为：<s:property value="#user.uname"/><br>
邮箱为：<s:property value="#user.uemail"/><br>
```
###date标签
``fomat``是可选属性，如果指定了该属性，将根据该属性指定的格式来格式化日期
``name``是必填属性，该属性指定要格式化的日期值
``nice``是可选属性，该属性只能为``[true|false]``，指定是否输出指定日期和当前时刻之间的时差，默认false
``var``是可选属性，该属性指定引用该元素的var值

```xml

    <%
        //距离格林治时间（1,1970, 00:00:00 GMT）的毫秒是1888888888的日期
        Date date = new Date(1888888888);
        //将date实例设置成pageContext里的属性
        pageContext.setAttribute("date", date);
    %>
    当前日期，不指定format：
    <s:date name="#attr.date"/>
    <br>
    当前日期，指定format：
    <s:date name="#attr.date" format="yyyy.MM.dd"/>
    <hr>
    生成日期:
    <s:date name="#attr.date" nice="false" format="yyyy.MM.dd"/>
    <!-- 如果nice="true"和format属性都指定了，
    则会输出指定日期和当前日期的时差，而format失效 -->
    <br>
    距今已有:
    <s:date name="#attr.date" nice="true"/>
```
###debug标签
用于辅助测试
```xml
<s:debug/>
```
###include标签
将页面包含到此页面
```xml
<s:include value="include-page.jsp">
	<s:param name="uname" value="'chenheng'"/>
</s:include>
```
###param标签
```xml
<s:param name="uname">apple</s:param>
<!--值为apple对象-->
<s:param name="uname" value="apple"/>
<!--值为apple字符串-->
<s:param name="uname" value="'apple'"/>
```
###push标签
```xml
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
```
###set标签
``scope``为可选属性，值可为application、session、request、page、action。默认在Stack Context中
``value``为可选属性，指定赋给变量的值，默认为ValueStack栈顶的值赋给变量
``var``为可选属性，新生成变量的名字
```xml
   	<!-- 使用bean标签创建user对象 -->
  	<s:bean name="bean.User" var="user" >
  		<!-- 通过param标签调用set方法给uname、uemail赋值 -->
  		<s:param name="uname" value="'陈恒'"/>
  		<!-- 别忘记了单引号'陈恒' -->
  		<s:param name="uemail" value="'123456@qq.com'"/>
  	</s:bean>
  	<!-- 将user对象放入Page范围 -->
  	<s:set var="u1" value="#user" scope="page"/>
  	<!-- 将user对象放入request范围 -->
  	<s:set var="u2" value="#user" scope="request"/>
  	<!-- 将user对象放入session范围 -->
  	<s:set var="u3" value="#user" scope="session"/>
  	<!-- 将user对象放入application范围 -->
  	<s:set var="u4" value="#user" scope="application"/>
  	<!-- 将user对象放入默认范围 -->
  	<s:set var="u5" value="#user"/>
  	取出Page范围的值：
  	${pageScope.u1.uname }<br>
  	取出request范围的值：
  	<!-- 也可以使用${requestScope.u2.uname }取-->
  	<s:property value="#request.u2.uname"/><br>
  	取出session范围的值：
  	<s:property value="#session.u3.uname"/><br>
  	取出application范围的值：
  	<s:property value="#application.u4.uname"/><br>
  	取出默认范围（Stack Context）的值：
  	<s:property value="#u5.uname"/><br>
```
###url标签
用于生成一个URL地址
``value``为可选属性，指定生成URL的地址值，如果不指定就用action属性指定的Action作为URL地址
``action``为可选属性，指定生成URL的地址为哪个Action，如果不指定就用value作为URL地址值
``namespace``为可选属性，命名空间
``method``为可选属性，指定使用Action的方法
```xml

```
###property标签
用于输出value属性指定值，没有指定value属性，则默认输出ValueStack栈顶的值

- - -
##流程控制标签
###if/elseif/else标签
```xml
   	<!-- 使用set标签来定义一个变量score，值为95 -->
   	<s:set var="score" value="95"/>
   	考试分数：
   	<s:property value="#score"/><br>
   	考试等级：
   	<!-- 使用if/elseif/else标签判断等级 -->
   	<s:if test="#score >= 90">优秀</s:if>
   	<s:elseif test="#score >= 80">良好</s:elseif>
   	<s:elseif test="#score >= 70">中等</s:elseif>
   	<s:elseif test="#score >= 60">及格</s:elseif>
   	<s:else>不及格</s:else>
```
###iterator标签
``value``可选属性，指定被迭代的集合，默认ValueStack栈顶的集合
``var``可选属性，临时存储value集合里元素的值
``status``可选属性，指定迭代时的IteratorStatus实例，加入``status``的值为``st``，通过#st.count返回迭代数量#st.index返回迭代索引#st.enen当前索引是否为偶数#st.odd当前索引是否为奇数#st.first返回当前索引是否为第一个元素#st.last是否为最后一个元素
``step``可选属性，指定迭代步长
``begin``可选属性，指定迭代开始下标
``end``可选属性，指定迭代结束下标
```xml
	<s:iterator value="{'HTML与CSS网页设计教学做一体化教程','JSP网站设计教学做一体化教程',
    '软件工程教学做一体化教程','基于Eclipse平台的JSP应用教程','Struts 2框架应用教程'}" 
    var="book" status="st" begin="1" end="4" step="2">
    	<!-- 迭代输出 -->
    	<tr>
    		<!-- 使用 status属性找索引，索引从0开始-->
    		<td><s:property value="#st.index + 1"/></td>
    		<td><s:property value="book"/></td>
    	</tr>
    </s:iterator>
    
    <hr>
    迭代Map:<br>
    <s:iterator value="#{'HTML与CSS网页设计教学做一体化教程':'陈恒',
    'JSP网站设计教学做一体化教程':'陈恒',
    '软件工程教学做一体化教程':'陈恒',
    '基于Eclipse平台的JSP应用教程':'陈恒',
    'Struts 2框架应用教程':'陈恒'}" >
    	<tr>
    		<!-- 输出Map对象里的key -->
    		<td><s:property value="key"/></td>
    		<!-- 输出Map对象里的value -->
    		<td><s:property value="value"/></td>
    	</tr>
    </s:iterator>
```
###append标签
用于将几个集合对象拼接起来，组成一个新集合，需要指定`var``属性，``param``子标签用于指定拼接的结合
```xml
    <!-- 使用append标签将多个集合拼接成一个新集合 -->
    <s:append var="newList">
    	<s:param value="{'HTML与CSS网页设计教学做一体化教程','JSP网站设计教学做一体化教程'}"/>
    	<s:param value="{'软件工程教学做一体化教程','基于Eclipse平台的JSP应用教程','Struts 2框架应用教程'}"/>
    </s:append>

     <!-- 使用append标签将多个集合拼接成一个新集合 -->
    <s:append var="newMap">
    	<s:param value="#{'HTML与CSS网页设计教学做一体化教程':'陈恒',
    'JSP网站设计教学做一体化教程':'陈恒'}"/>
    	<s:param value="#{'软件工程教学做一体化教程':'陈恒',
    '基于Eclipse平台的JSP应用教程':'陈恒',
    'Struts 2框架应用教程':'陈恒'}"/>
    </s:append>
```
###generator标签
``var``可选属性，将子串集合放在PageContext属性中
``val``必选属性，指定解析字符串
``separator``必选属性，指定分隔符
``count``可选属性，生成集合的元素总数

```xml
generator标签体内迭代子字符串集合：<br><br>
    <!-- 使用generator标签将一个字符串解析成子字符串集合，并迭代输出集合 -->
    <s:generator separator="," 
    val="'HTML与CSS网页设计教学做一体化教程,JSP网站设计教学做一体化教程,
    软件工程教学做一体化教程,基于Eclipse平台的JSP应用教程,Struts 2框架应用教程'">
    	<!-- 在generator标签体内，子字符串集合位于栈顶，所以这里的迭代就是临时生成的集合 -->
    	<s:iterator>
    		<s:property/><br>
    	</s:iterator>
    </s:generator>
    <hr>
    generator标签体外迭代子字符串集合：<br><br>
    <!-- 指定了count，这里最多迭代2次 -->
    <s:generator separator="," count="2" var="books"
    val="'HTML与CSS网页设计教学做一体化教程,JSP网站设计教学做一体化教程,
    软件工程教学做一体化教程,基于Eclipse平台的JSP应用教程,Struts 2框架应用教程'" >
    </s:generator>
    <!-- 在generator标签体外，这里的迭代是PageContext里的属性books -->
   	<s:iterator value="books" var="book">
    	<s:property value="book"/><br>
    </s:iterator>
```
###merge标签
与append相似，访问顺序是交替访问。

###subset标签
用于取得集合的子集
``count``可选属性，指定子集元素的个数，默认是全部元素
``source``可选属性，指定源集合，默认ValueStack栈顶的集合
``start``可选属性，指定从第几个元素开始截取，默认第一个
``decider``可选属性，指定由开发者决定是否选中该元素
```java
public class MyDecider implements Decider{
	@Override
	public boolean decide(Object element) throws Exception {
		String s = (String)element;
		//如果集合元素中包含"应用教程"字串，即可入选子集
		return s.contains("应用教程");
	}
}
```
```xml
  	<!-- 定义一个Decider实例 -->
  	<s:bean name="bean.MyDecider" var="mydecider"/>
  	<!-- 使用自定义的Decider实例来截取目标集合，生成子集 -->
    <s:subset  decider="#mydecider"
    source="{'HTML与CSS网页设计教学做一体化教程','JSP网站设计教学做一体化教程','软件工程教学做一体化教程',
    '基于Eclipse平台的JSP应用教程','Struts 2框架应用教程'}">
    	<!-- 迭代subset标签实现的子集 -->
   		<s:iterator>
    		<s:property/><br>
    	</s:iterator>
    </s:subset>
```
###sort标签
``comparator``必选属性，指定进行排序的Comparator实例
``source``可选属性，指定被排序的集合，默认ValueStack栈顶的集合

```java
public class MyComparator implements Comparator<String>{
	//决定排序规则
	@Override
	public int compare(String element1, String element2) {
		//元素按照其长度从小到大进行排序
		return element1.length() - element2.length();
	}
}

```

```xml
    <!-- 定义一个Comparator实例 -->
    <s:bean name="bean.MyComparator" var="myComparator"/>
    <!-- 使用自定义的排序规则，对目标集合进行排序 -->
    <s:sort comparator="#myComparator" source="{'HTML与CSS网页设计教学做一体化教程','JSP网站设计教学做一体化教程','软件工程教学做一体化教程',
    '基于Eclipse平台的JSP应用教程','Struts 2框架应用教程'}">
    	<!-- 迭代输出排序后的集合 -->
	    <s:iterator>
	    	<s:property/><br>
	    </s:iterator>
    </s:sort>
```
- - - 

##表单标签
```java

public class MyUser {
	public User[] getUsers(){
		User u1 = new User();
		u1.setUname("陈恒");
		u1.setUemail("123456@qq.com");
		User u2 = new User();
		u2.setUname("张一鸣");
		u2.setUemail("888888@qq.com");
		User[] users = new User[2];
		users[0] = u1;
		users[1] = u2;
		return users;
	}
}
```
###checkboxlist标签 
```xml
<s:form>
    	<!-- 使用简单集合生成多个复选框 -->
    	<s:checkboxlist name="mysongers" label="请选择您喜欢的歌手" labelposition="top" 
    	list="{'张三','李四','王五','张四','李五'}"/>
    	<!-- 使用Map对象生成多个复选框 -->
    	<s:checkboxlist name="mysports"  label="请选择您喜欢的运动" labelposition="top" 
    	list="#{1:'瑜珈用品',2:'户外用品',3:'球类',4:'自行车'} " listKey="key" 
    	listValue="value" value="{1,2,4}"/>
    	<!-- 创建MyUser实例 -->
    	<s:bean name="bean.MyUser" var="mu"/>
    	<!-- 使用集合里的实例来生成多个复选框 -->
    	<s:checkboxlist name="myusers"  label="请选择您喜欢的用户" labelposition="top" 
    	list="#mu.users" listKey="uemail" listValue="uname" />
    	<!-- #mu.users相当于对象mu调用getUsers()方法 -->
    	<!-- listKey="uemail"是指将集合中实例的 uemail作为复选框的value-->
    	<!-- listKey="uname"是指将集合中实例的 uname作为复选框的Label，即显示在页面上-->
    </s:form>
```
###combobox标签
```xml
    <s:form>
    	<h3>combobox标签示例</h3>
    	<!-- 使用 combobox标签，其中list指定下拉列表项-->
    	<s:combobox label="请选择您喜欢的大学" size="20" maxlength="20" name="colloge"
    	list="{'清华大学','北京大学','南京大学','科技大学'}"/>
    </s:form>
```
###doubleselect标签
```xml
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
```
###optiontransferselect标签
``allowToLeftLabel``
``allowToRightLabel``
``allowAllToLeftLabel``
``allowAllToRightLabel``
``allowctAllLabel``
默认为true

```xml
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
```
###select标签
```xml
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
```
###optgroup标签
```xml
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
```
###radio标签
```xml
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
```
###file标签
```xml
<s:file name="pictrue"/>
```
##非表单标签标签
```java
public String execute(){
	if(!"chenheng".equals(uname)){
		//添加业务逻辑错误消息
		this.addActionMessage("用户名错误！");
		return "fail";
	}else if(!"123456".equals(upass)){
		//添加业务逻辑错误消息
		this.addActionError("密码错误！");
		return "fail";
	}
	return SUCCESS;
```
```xml
    <s:form action="login.action" method="post" theme="simple">
    	<table>
    	<tr><td>uname:</td>
			<td><s:textfield name="uname"/></td></tr>
    	<tr><td>upass:</td>
    		<td><s:password name="upass"/></td></tr>	
    	<tr><td colspan="2" align="center"><s:submit value="提交"/></td></tr>
   		</table>
    	<s:actionmessage/>
    	<s:actionerror/>
    </s:form>
```
***