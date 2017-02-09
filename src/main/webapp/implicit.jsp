<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>implicit.jsp</title>
</head>
<body>
<%
	// URL --> http://loccalhost/implicit.jsp?xxx=seoul
	
%>
<h1>http://localhost:8080/implicit.jsp?xxx=seoul</h1>
<ol>
	<li>Protocol = <%= request.getProtocol() %></li>
	<li>ServerName = <%= request.getServerName() %></li>
	<li>Port = <%= request.getServerPort() %></li>
	<li>ContxextPath = <%= request.getContextPath() %></li>
	<li>RequestURI = <%= request.getRequestURI() %></li>
	<li>QueryString = <%= request.getQueryString() %></li>
	<li>RemoteName = <%= request.getRemoteHost() %></li>
	<li>RemoteAddr = <%= request.getRemoteAddr() %></li>
</ol>
<%
	Enumeration<String> headers = request.getHeaderNames();

	while(headers.hasMoreElements()) {
		String header = headers.nextElement();
		out.println(header + ":" + request.getHeader(header) + "<br>");
	}
%>
</body>
</html>