#学习javaweb课程

这个项目是用来存放在学校的javaWeb课程中老师上课讲的小demo以及一些课程上要写的demo。

### 1. 学习jsp的第一个小demo
这个例子使用全jsp页面，写了一个小登陆，里面加了js校验，如果成功则跳转到`success.jsp`,如果不成功则跳转到`login_fail.jsp`

### 2. 学习jsp的第二个小demo

这个例子写了两各方面，写了一个简易的计算器，以及完善个人信息的页面

##### 复习知识点

> 得到参数的方法 `request.getParameter(String s)`
> 得到以及设置属性的方法 `request.getAttribute(String s)` `request.getAttribute(String s, Object o)`
> 解决中文乱码问题 
> + 通过 `new String(param.getbyte("ISO-8859-1"), "utf-8")`
> + 通过 `request.setCharacterEncoding("utf-8")`
>> 如果Tomcat版本高的话，get方法不存在中文乱码问题