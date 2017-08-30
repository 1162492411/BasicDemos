# JSP知识汇总
------

JSP页面元素构成:
&emsp;&emsp;指令、表达式、脚本、声明、注释、静态内容

## JSP元素

### 指令
&emsp;&emsp;page指令-->位于JSP页面顶端，同一个页面可以有多个page指令
&emsp;&emsp;include指令-->将一个外部文件嵌入到当前JSP文件中，同时解析这个页面中的JSP语句
&emsp;&emsp;taglib指令-->使用标签库定义新的自定义标签

#### page指令语法：
> <%@ page 属性1="属性值1" 属性2="属性值2" .... %>

|属性|描述|默认值|
|---|-----|-----|
|language| JSP页面使用的脚本语言|Java|
|import|引用脚本语言中使用到的类文件|无|
|contentType|指定页面的编码方式|text/html;ISO-8859-1|

#### include指令语法：
> <%@ include file="URL" %>

### 表达式
&emsp;&emsp;在JSP中执行的表达式

格式：
> <%= 表达式 %>

ps:表达式后没有分号

### 脚本
&emsp;&emsp;脚本是在JSP中执行的Java代码

格式：
> <% Java代码%>

### 声明
&emsp;&emsp;在JSP中定义变量或方法

格式：
> <%! 变量或方法 %>

### 注释
&emsp;&emsp;在JSP页面的注释。

&emsp;&emsp;HTMl的注释：
> <!-- html注释-->//客户端可见

&emsp;&emsp;JSP注释:
> <%-- JSP注释 --%>//客户端不可见

&emsp;&emsp;Java注释
> /** **/ // //客户端不可见

## JSP动作
### jsp:include

格式：
> <jsp:include page="URL" flush="true|false" />

|属性|描述|
|----|----|
|page|要包含的页面|
|flush|是否从缓冲区读取|

### jsp:forward
格式：
> <jsp:forward page="URL" />

|属性|描述|
|----|----|
|page|要跳转的页面|

### jsp:param
格式：
> <jsp:param name="参数名" value="参数值">

## JSP内置对象
&emsp;&emsp;JSP有九大内置对象：
* out--> 输出流，将信息输出到网页
* request--> 封装了当前请求信息，可以存取数据
* response--> 封装了当前响应信息
* session--> 表示当前会话，可以存取数据
* application--> 表示整个应用程序，可以存取数据
* page--> 表示当前页面，可以存取数据
* pageContext、config、exception

### out
&emsp;&emsp;out对象是JspWriter类的实例，是向客户端输出内容常用的对象

常用方法：
* *void println()* 向客户端打印字符串
* *void clear()* 清除缓冲区内容(在flush之后调用会抛出异常)
* *void clearBuffer()* 清除缓冲区内容(在flush之后调用不会抛出异常)
* *void flush()* 将缓冲区内容输出到客户端
* int getBufferSize() 返回缓冲区大小(以字节数为单位)
* int getRemaining() 返回缓冲区可用大小
* boolean isAutoFlush() 缓冲区满时是自动清空还是抛出异常
* void close() 关闭输出流

### request
&emsp;&emsp;request对象封装了客户端的请求信息，它是HttpServletRequest类的实例，request
对象具有请求域，即完成客户端的请求之前，该对象一直有效。

常用方法：
* *String getParameter(String name)* 返回指定参数的值
* *String[] getParameterValues(String name)* 返回包含参数的所有值的数组
* *void setAttribute(String,Object)* 存储此请求中的信息
* *Object getAttribute(String name)* 获取指定属性的属性值
* String getContentType() 返回请求体的MIME类型
* String getProtocol() 返回请求的协议类型及版本号
* String getServerName() 返回请求接受的服务器主机名

 ### response
&emsp;&emsp;response封装了响应客户端请求的信息，它是HttpServletResponse类的实例，response
对象具有页面作用域，即访问一个页面时，该页面内的response'对象只对该次访问有效。

常用方法：
* String getCharacterEncoding() 返回响应所使用的字符编码
* void setContentType(String type) 设置响应的MIME类型
* PrintWriter getWriter() 返回一个可以向客户端输出字符的对象
* sendRedirect(String location) 重定向客户端的请求
### session
&emsp;&emsp;session对象在第一个JSP页面被装载时自动创建，它是HttpSession类的实例，
它表示客户端与服务器的一次会话，web中的session指用户浏览一个网站花费的时间。服务器中保存着
不同用户的session。

常用方法：
* long getCreationTime() 返回session被创建的时间
* String getId() 返回该session的id
* void setAttribute(String name,Object value) 绑定属性到session
* Object getAttribute(String name) 返回指定的属性
* Stirng[] getValueNames() 返回此session的所有可用属性
* int getMaxInactiveInterval() 返回session的有效期

### application
&emsp;&emsp;application对象实现了用户间数据的共享，可存放全局变量，它是ServletContext
对象的实例，开始于服务器的启动，终止于服务器的关闭。

常用方法：
* void setAttribute(String name,Object value) 绑定属性
* Object getAttribute(String name) 返回指定的属性
* Enumeration getAttributeNames() 返回所有可用属性的枚举
* String getServerInfo() 返回JSP引擎名及版本号
### page
&emsp;&emsp;page对象就是指向当前JSP页面本身，类似this，它是Object类的实例，实际开发中很少用到

### pageContext
&emsp;&emsp;pageContext可以访问当前JSP页面的所有内置对象，另外，它还提供存取数据的方法，
作用范围为当前JSP页面，它是pageContext类的实例

### config
&emsp;&emsp;config用来存储Servlet的一些初始信息

常用方法：
* ServletContext getServletContext() 返回含有服务器相关信息的ServletContext对象
* String getInitParameter(String name) 返回初始化参数的值
* Enumeration getInitParameterNames() 返回servlet初始化所需要的所有参数

### exception
&emsp;&emsp;exception对象显示JSP页面中的异常信息，它是java.lang.Throwable类的实例，
使用时需将JSP页面的page指令中isErrorPage
属性值设置成true

常用方法：
* Stirng getMessage() 返回描述异常的信息
* String toString() 返回关于异常的简短描述信息
* void printStackTrace() 显示异常及其栈轨迹
* Throwable FillInStackFace() 重写异常的执行栈轨迹

## Javabean
&emsp;&emsp;JavaBean是符合某种特定规范的Java类，使用它的好处是解决代码冗余，提高代码可维护性。

JavBean需要符合以下规范：
* 公有类
* 属性私有
* 无参的公有构造方法
* getter和setter方法


