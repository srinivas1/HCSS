<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page session="false" %>
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

admin signed in<BR/>
<a href="checkNewUser.do">check new users</a><BR/>
<a href="checkPendingUser.do">pending users</a><BR/>
<a href="checkLockedUser.do">Locked users</a><BR/>
<a href="checkUsedUser.do">usered users</a><BR/>


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