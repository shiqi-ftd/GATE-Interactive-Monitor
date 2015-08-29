<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="gate_java_pack.*"%>
<%@page import="java.io.*"%>
<%
	//String cmd = request.getParameter("command");
	//Absoulte Path Needed.
	//C:\Users\szhong4\GATE\GATE-Interactive-Monitor
	//C:\Users\szhong4\Desktop\GATE-Interactive-Monitor
	String cmd = request.getParameter("command");
/* 	String path = "C:" + '\\' + "Users" + '\\' + "szhong4" + '\\'
			+ "Desktop" + '\\' + "GATE-Interactive-Monitor" + '\\';
 */	
 	String path = "/Users/ShiqiZhong/Desktop/GATE-Interactive-Monitor";
 	if (cmd != null) {
		String[] param = cmd.split(",");
		param[1] = param[1].replace("2", "");
		set_param sp = new set_param(param, path);
		sp.set_conf(sp);
	}
%>

<%-- <%
	out.print(request.getParameter("command"));
%>
 --%>