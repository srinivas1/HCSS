<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HCS</title>
</head>
<body>

<%

if(session.getAttribute("userMailID")!=null){


%>

<h3>USER LOGGEDIN</h3><BR/>
<a href="#">personal information</a> <br/>
<a href="#"> images store locker</a><br/>
<a href="/Hcs/user/audio_locker_form.jsp">audio locker</a><br/>
<a href="#"> vedio locker</a><br/>


  <a href="/Hcs/user/userSignout.jsp">sign out</a>
  
 <%
}else {
%>
	please login first
<% }
 
 
 %>
 <jsp:include page="../Footer.html"/>
  
</body>
</html>