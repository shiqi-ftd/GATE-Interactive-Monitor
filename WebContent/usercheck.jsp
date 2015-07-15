<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>User Check</title>
</head>
<body>
	<%
		String name = "name";
		String password = "password";
		try {
			name = request.getParameter("username");
			password = request.getParameter("password");
			if ((name.equals("szhong4") && password.equals("1234"))
					|| (name.equals("jens") && password.equals("1234"))) {
	%>
	<jsp:forward page="intro.jsp">
	<jsp:param name="username" value="<%=name%>" />
	</jsp:forward>
	<%
		} else {
	%>
	<jsp:forward page="index.jsp" />
	<%
		}
		} catch (NullPointerException npe) {
		}
	%>
</body>

</html>
