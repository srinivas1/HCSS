<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page session="true" %>
<html>
<head>
<title>HCSS</title>
<link rel="stylesheet" type="text/css" href="/Hcs/user/user_Cs.css"/>
</head>
<body>
<div class="allbody">
	<jsp:include page="/Heading.jsp"/>





<html:errors/>
<%session.setAttribute("login", "loginForm"); %>

<a href="/Hcs/user/userRegisterForm.jsp">click here for register new user</a>
<jsp:include page="Footer.html"/>
</div>
</body>
</html>