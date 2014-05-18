<%@page import="java.util.List"%>
<%@page import="org.chinna.user.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page session="false" %>
   <!--    page isELIgnored="false" %>
    taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
            -->
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
List<UserVO> list = (List<UserVO>)request.getAttribute("userVO");
	
	if(!list.isEmpty()){
	%>
	<table border="1">
	<tr><th>User Mail ID</th><th>Date Of birth</th><th>cell NO</th><th>First Name</th><th>status</th></tr>
	<% 
	
	for(UserVO user:list){
		
	%>
	<tr>
	<td><%=user.getUserMailID()%></td><td><%=user.getUserDOB()%></td><td><%=user.getUserCellNo()%></td><td><%=user.getUserFName()%></td><td><form action="adminGivePermitionToUser.do"><input type="hidden" name="userMailID" value="<%=user.getUserMailID()%>"/><input type="submit" name="active" value="active"/><input type="submit" name="pending" value="pending"/><input type="submit" name="lock" value="lock"/></form></td>
	
	</tr>
<%
	}
%>
</table>

<!-- 
<c:forEach var="user" items="${userVO}">

${user.status}
${ user.usercellNO}
${ user.userFName}
${ user.userDOB}
${ user.userMailID}

</c:forEach>
 -->


<%
	}else{
		out.print("there is no users ");
	}
}else {
%>

please signed in with out sign it can't access
<%}%>
</body>
</html>