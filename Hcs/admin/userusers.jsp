<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
HttpSession session = request.getSession();

if(request.getAttribute("signedout")==null)
if(session!=null)
if(session.getAttribute("adminLoginID")!=null){


%>


used users
<a href="/Hcs/admin/adminSignout.jsp">signout</a>

<%
}else {

%>
please signed in with out sign it can't access
<%

}


%>
</body>
</html>