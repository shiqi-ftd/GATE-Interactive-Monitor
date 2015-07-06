<!DOCTYPE html>
<html>
<head>

<link type="text/css" rel="stylesheet" href="css/gate.css">
<title>GATE</title>
<meta name="author" content="Shiqi Zhong">


</head>
<body>
	<div id="header">
		<img id="logo" src="./images/logo.gif" hspace=15 vspace=15>
	
		<p id="name"></p>
		<a href="mailto:szhong4@vols.utk.edu">
			<p id="email">Mail to Shiqi Zhong</p>
		</a>
		<p id="info">
			<% out.println("Your IP address is: " + request.getRemoteAddr()); %>
			<br> Today's date:
			<%=(new java.util.Date()).toLocaleString()%>
		</p>
		<br>
	
	</div>

	<div class="left">
		<h3>
			<a href="./index.jsp"><b>Introduction</b></a>
		</h3>
		<h3>
			<a href="./simulation.jsp"><strong>Run Simulation</strong></a>
		</h3>
		<h3>
			<a href="./result.jsp"><font color="red"><em>View
						Result</em></font></a>
		</h3>
		<h3>
			<a href="./source.jsp">Source Code</a>
		</h3>
	</div>

	<div class="right">
		<h4>Simulation Result</h4>
		<a href="#" class="myButton">Server Status:  </a>
	</div>

	<div id="footer">
		<p>&#169 GATE Interactive Monitor, 2015</p>
	</div>


	<script type="text/javascript" src="scripts/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
	<script type="text/javascript" src="scripts/d3.v3.min.js"></script>
	<script type="text/javascript" src="shiqi.js"></script>

</body>
</html>