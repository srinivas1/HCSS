<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

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
<html:form action="#">
userAcountNO:<html:text property="userAcountNO"></html:text>
userName:<html:text property="userName"></html:text>
bankName:<html:text property="bankName"></html:text>
bankBranchName:<html:text property="bankBranchName"></html:text>
atmCVV:<html:text property="atmCVV"></html:text>
atmPin:<html:text property="atmPin"></html:text>
nbName:<html:text property="nbName"></html:text>
nbpswd:<html:text property="nbpswd"></html:text>
nbpin:<html:text property="nbpin"></html:text>
uid:<html:text property="uid"></html:text>
</html:form>
<a href="/Hcs/user/userSignout.jsp">sign out</a>
 <%
}else {
%>
	please login first
<% }
%>
  
</body>
</html>