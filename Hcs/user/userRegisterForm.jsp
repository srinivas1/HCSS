<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page session="false" %>
<%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory" %> 
 
 <html>
<head>
<title>HCSS</title>
<link rel="stylesheet" type="text/css" href="/Hcs/user/user_Cs.css"/>
</head>
<body>
<div class="allbody">
<jsp:include page="user_Heading.html"/>
 
 
 
 
 <center>
 <h2>user registration form</h2>
 login with  <a href="fb_login.jsp"><img alt="asdf" src="/Hcs/images/facebook_2.jpg" width="50" height="30"></a>
 <html:errors/> 
 <html:base/>
             
<html:form action="userRegisteredForm.do">

<table>
<tr><td>
<tr><td>First Name<font color="red">*</font></td><td>:</td><td><html:text property="userFName"/></td></tr>
<tr><td>Last Name<font color="red">*</font></td><td>:</td><td><html:text property="userLName"/></td></tr>
<tr><td>Father Name<font color="red">*</font></td><td>:</td><td><html:text property="userFatherName"/></td></tr>
<tr><td>Date Of Birth<font color="red">*</font></td><td>:</td><td><html:text property="userDOB" value="yymmdd"/></td></tr>
<tr><td>Gender<font color="red">*</font></td><td>:</td><td>MALE-<html:radio property="userGender" value="male"/> FEMALE-<html:radio property="userGender" value="female"/></td></tr>
<tr><td>Cell No<font color="red">*</font></td><td>:</td><td><html:text property="userCellNo" /></td></tr>
<tr><td>Enter MailID<font color="red">*</font></td><td>:</td><td><html:text property="userMailID"/></td></tr>
<tr><td>Password<font color="red">*</font></td><td>:</td><td><html:password property="userPassword" /></td></tr>
<tr><td><font color="red"></font></td><td></td><td><html:hidden property="status" value="newuser"/></td></tr>
<tr><td>
<%
  ReCaptcha c = ReCaptchaFactory.newReCaptcha(
              "6LdlHOsSAAAAAM8ypy8W2KXvgMtY2dFsiQT3HVq-",
            "6LdlHOsSAAAAACe2WYaGCjU2sc95EZqCI9wLcLXY", false);
  out.print(c.createRecaptchaHtml(null, null));
%>
</td><td>:</td><td> enter the text<br/> <input type="text" name="recap"/>
</td></tr>
<tr><td align="right"><html:submit value="submit"/></td><td></td><td></td></tr>
</table>
 
</html:form>
</center>
<jsp:include page="../Footer.html"/>

</div>
</body>
</html>