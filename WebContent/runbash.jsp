<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Run Bash</title>
</head>
<body>
	<%
		String simutype;
		String unixCommand;
	    Runtime r = Runtime.getRuntime();

		try {
			simutype = request.getParameter("simutype");
			System.out.print(simutype);
			System.setSecurityManager(null);
			if ((simutype.equals("Cylindrical"))) {
				unixCommand = "sh /Users/ShiqiZhong/Desktop/GATE-Interactive-Monitor/WebContent/conf/Cylindrical/test.sh";
				Process p = r.exec(unixCommand);
				System.out.println("Finished.");
			}
			if ((simutype.equals("Gamma"))) {
				unixCommand = "sh /Users/ShiqiZhong/Desktop/GATE-Interactive-Monitor/WebContent/conf/Gamma/config_starter.sh";
	    		Process p = r.exec(unixCommand);
				System.out.println("Finished.");
			}
	%>
<%-- 	<jsp:forward page="result.jsp" >
	<jsp:param name="simutype" value="<%=simutype%>" />
	</jsp:forward>
 --%>	<%
		} catch (NullPointerException npe) {
		}
	%>
</body>

</html>
