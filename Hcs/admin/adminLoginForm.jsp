<%@page import="org.chinna.admin.AdminRegister"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ page session="false" %>
<html>
<title>Hcs</title>
<head>
<link rel="stylesheet" type="text/css" href="/Hcs/admin/admin_Cs.css"/>
</head>
<body>
<div class="allbody">

<jsp:include page="admin_Heading.html"></jsp:include>
<h1>this login admin</h1>

	<html:errors/>
	
	
	<%
	
	if(request.getAttribute("adminLoginID")!=null){
		%>
		
		<font color=red>
		
		
		
		invalid id</font><%
	}
	%>
	
	
	<html:form action="adminRegisteredForm" method="post" >
		enter LoginID :<html:text property="adminLoginID"/><br/>
		Enter Password:<html:password property="adminPassword"/><br/>
		<html:submit value="signin"/>	
	</html:form>
	

</div>


</body>
</html>