<!DOCTYPE html>
<html>
<head>

<link type="text/css" rel="stylesheet" href="css/gate.css">
<title>GATE</title>
<meta name="author" content="Shiqi Zhong">


</head>
<body>
	<div id="header">
		<img id="logo" src="./images/logo.gif" align="left">

		<p id="name"></p>
		<a href="mailto:szhong4@vols.utk.edu" id="email">Mail to Shiqi
			Zhong</a>
		<p id="info">
			<% out.println("Your IP address is: " + request.getRemoteAddr()); %>
			<br> Today's date:
			<%=(new java.util.Date()).toLocaleString()%>
		</p>
		<br>

	</div>

	<div class="left">

		<h3>
			<a href="./index.jsp"><font color="red"><em>Introduction</em></font></a>
		</h3>
		<h3>
			<a href="./simulation.jsp"><strong>Run Simulation</strong></a>
		</h3>
		<h3>
			<a href="./result.jsp"><strong>View Result</strong></a>
		</h3>
		<h3>
			<a href="./source.jsp">Source Code</a>
		</h3>
	</div>

	<div class="right">


		<h4>Introduction</h4>
		<br>
		<p>This is a web interface named GATE Interactive Monitor which is
			based on GATE platform, EduGATE project and ROOT.</p>
		<p>
			The aim of this project is to provide basic simulation templates and
			easy access to the end user through web interface. There are multiple
			simulations to choose from including Cylindrical PET, Gamma Camera,
			etc. <br>The key features of using this interface includes:
		</p>
		<ol>
			<li>Light weight: <br>Given the central-server's interface,
				there's no need to install the whole system on local devices.
			</li>
			<li>Portable: <br> There is no platform limit. The end user
				could control and monitor the simulation everywhere at anytime if
				there is a Internet access.
			</li>
			<li>Easy and Fast to set up: <br>Given the simulation
				templates, it is much easier and quicker for the end to set up the
				simulation environment.
			</li>
			<li>Detailed: <br>Within each simulation template, the end
				user remains the freedom of setting up multiple parameters.
			</li>
		</ol>
		<img id="pic_logo" src="./images/pixture_logo.png" height="120"
			width="120" hspace=250 vspace=5> <img id="pic_logo"
			src="./images/ut.jpg" height="120" width="120">

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