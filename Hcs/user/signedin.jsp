<%@ page session="true" %>


<% 
System.out.println(session.getAttribute("userMailID"));
if(session.getAttribute("userMailID")!=null){
%>
usersuccessfully signin
<a href="user/userSignout.jsp">signout</a>
<%
} else {
%>
loggin again
<% 
}
%>