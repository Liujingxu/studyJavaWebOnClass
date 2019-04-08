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

### 3. 学习jsp的第三个小demo

这个例子写了测试session属性的登陆小栗子，功能：
+ 在登陆界面判断是否输入正确的账号密码
+ 在 `welcome.jsp`页面上可以注销

### 4. 学习jsp的第四个demo

 这个例子第一次接触到javaBean,使用javaBean写一个验证表单的操作。
 + 在 `index.jsp` 页面进行登陆，转到 `check.jsp`进行转发操作。
 + 通过封装 `Register` 这个javaBean 实现验证与显示错误信息功能。
 + 如果成功重定向至 `success.jsp` 如果有验证错误转发至 `index.jsp`页面。
 
 > 在这个例子中在页面跳转时传javaBean出现问题，该例子是通过 `request` 的方式传一次javaBean，**一定要注意使用** `<jsp:useBean>` **时的作用域问题**，在正确的作用域下useBean会自动装配对象，而不是重新创建对象。
 ```
<jsp:useBean id="register" class="com.nuc.studyJavaWeb.entity.Register" scope="request"/>
```
 > 这个语句代表的意义是在request作用下的 `Register` 对象， 而不是创建一个Register的对象。因此在第一次进入页面时，它创建了一个新的javaBean，此时该Bean的属性值全为null。在第二次转发到这个页面时，这个javaBean代表的是在此作用域下的Bean。所以它的属性值为经过 `check.jsp`进行封装后的Bean。