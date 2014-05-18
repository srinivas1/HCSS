<%

String statusMsg;
String appid = "1486223894939163";
String appsecret = "c3a0c4f6e1a63c4b540cb1536680f0c1";
String redirectURL = "http://localhost:8080/project_fb/facebookjsp.jsp";
String authorizeURLStr = "https://graph.facebook.com/oauth/authorize?client_id="+ appid + "&redirect_uri=" + redirectURL+"&scope = publish_stream";
//accessToken=readUrl(accessTokenURLStr).split("&")[0].replaceFirst("access_token=", "");
%>
<%=authorizeURLStr%>