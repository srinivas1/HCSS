<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hcss</title>
<link rel="stylesheet" type="text/css" href="/Hcs/admin/admin_Cs.css"/>


</head>
<body>
<div class="allbody">
<jsp:include page="admin_Heading.jsp"/>
<%
HttpSession session = request.getSession();

if(request.getAttribute("signedout")==null)
if(session!=null)

if(session.getAttribute("adminLoginID")!=null){


%>
<html:errors/>
<html:form action="AdminChangePassword.do">
<html:hidden property="adminLoginID" value="as"/><br/>
Enter new Password:<html:password property="adminPassword"/><br/>
Retype Password:<html:password property="adminPassword"/><br/>

 <html:submit value="chage password"/>
</html:form>


<%
}else {

%>

please signed in with out sign it can't access
<%

}


%>
</div>
</body>
</html>