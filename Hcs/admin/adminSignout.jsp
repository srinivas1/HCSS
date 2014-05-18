<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hcss</title>
<link rel="stylesheet" type="text/css" href="/Hcs/admin/admin_Cs.css"/>
<script type = "text/javascript" >
function changeHashOnLoad() {
     window.location.href += "#";
     setTimeout("changeHashAgain()", "50"); 
}

function changeHashAgain() {
  window.location.href += "1";
}

var storedHash = window.location.hash;
window.setInterval(function () {
    if (window.location.hash != storedHash) {
         window.location.hash = storedHash;
    }
}, 50);


</script>

</head>
<body onload="changeHashOnLoad();">
<div class="allbody" >
<jsp:include page="admin_Heading.html"/>
<%

HttpSession session = request.getSession();

if(session!=null){
	if(session.getAttribute("adminLoginID")!=null){
		session.setAttribute("adminLoginID", "");
		session.invalidate();
		request.setAttribute("signedout", "signedout");
		
%>
admin signedout
<%
	}else {
		
	
%>

please signed in with out sign it can't access
<%

	}
}
%>
</body>
</html>