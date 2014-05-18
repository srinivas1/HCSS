<%@page import="java.util.Properties"%>
<%@ page session="true" %>
<html>
<head>
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
      <body onload="changeHashOnLoad(); ">
       <%
        session.invalidate();
       %>
      </body>
</html>
      