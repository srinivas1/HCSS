<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>
<html>
<head>
<title>HCSS</title>
<link rel="stylesheet" type="text/css" href="/Hcs/user/user_Cs.css"/>
</head>
<body style="margin:50px;">
<div class="allbody">
	<jsp:include page="user_Heading.html"/>
	<h1>user Login</h1>
	${invalid}
	<html:errors/>
	<%--session.setAttribute("login", "loginForm"); --%>	
	<html:form action="userLogin" method="post" >
	<table>	
		<tr><td>Enter user Mail ID</td><td>:</td><td><html:text property="userMailID"/></td></tr>
		<tr><td>Enter Password</td><td>:</td><td><html:password property="userPassword"/></td></tr>
		<tr><td><html:submit value="sign in"/></td></tr>
	</table>	
	</html:form>
	
	<a href="/Hcs/user/userRegisterForm.jsp">click here for register new user</a>
	<jsp:include page="../Footer.html"/>
</div>
</body>
</html>	