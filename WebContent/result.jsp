<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
			<%
				out.println("Your IP address is: " + request.getRemoteAddr());
			%>
			<br> Today's date:
			<%=(new java.util.Date()).toLocaleString()%>
		</p>
		<br>

	</div>

	<div class="left">
		<h3>
			<a href="./intro.jsp"><b>Introduction</b></a>
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
		
		
		<a href="#" class="myButton">Choose Simulation: 	
		<select id="simu_type">
				<option value="0"></option>

				<option value="1">Cylindrical PET</option>

				<option value="2">Gamma Camera</option>

		</select>
		
		</a> <br> <br>
		<br> <a href="#" class="myButton" onclick="show_conf()">View
			macro file 
		</a> <br> <br>

		<textarea name="content" cols="36" rows="8" id="content"
			style="border: 1 solid #888888; LINE-HEIGHT: 20px; padding: 10px;"></textarea>
		<br> <br> <br> <a href="#" class="myButton" onclick="view_result()" >View Analysed Result: 
		</a> 			
			
			<br> 
			<br> 
			<br> 
			
			<a href="#"
			class="myButton" onclick="download_result()">Download simulation
			result: 
		</a>
		
			<a href="http://localhost:8080/GATE-Interactive-Monitor/conf/Cylindrical/Cylindrical.root"
			class="myButton" >Download simulation
			result: 
		</a>
		
		
<!-- 	<img id="resultpic" src="http://localhost:8080/GATE-Interactive-Monitor/conf/Cylindrical/Cylindrical.gif">
 -->
	</div>
	
	
	<div id="footer">
		<p>&#169 GATE Interactive Monitor, 2015</p>
	</div>


	<script type="text/javascript" src="scripts/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
	<script type="text/javascript" src="scripts/d3.v3.min.js"></script>
	<script>
		function show_conf() {
			var type = $("#simu_type option:selected").text();
			if (type === "Cylindrical PET") {
				type = "Cylindrical";
				loadXMLDoc("http://localhost:8080/GATE-Interactive-Monitor/conf/Cylindrical/configuration.mac")
			} else if (type === "Gamma Camera") {
				type = "Gamma";
				loadXMLDoc("http://localhost:8080/GATE-Interactive-Monitor/conf/Gamma/configuration.mac")
			}

		}
		function loadXMLDoc(url) {
			xmlhttp = null;
			if (window.XMLHttpRequest) {// code for Firefox, Opera, IE7, etc.
				xmlhttp = new XMLHttpRequest();
			} else if (window.ActiveXObject) {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			if (xmlhttp != null) {
				xmlhttp.onreadystatechange = state_Change;
				xmlhttp.open("GET", url, true);
				xmlhttp.send(null);
			} else {
				alert("Your browser does not support XMLHTTP.");
			}
		}

		function state_Change() {
			if (xmlhttp.readyState == 4) {// 4 = "loaded"
				if (xmlhttp.status == 200) {// 200 = "OK"
					document.getElementById('content').innerHTML =
				"<%=(new java.util.Date()).toLocaleString()%>"
							+ '\n' + xmlhttp.responseText;
				} else {
					alert("Problem retrieving data:" + xmlhttp.statusText);
				}
			}
		}

		function view_result() {
			var type = $("#simu_type option:selected").text();
			if (type === "Cylindrical PET") {
				type = "Cylindrical";
			    $("#resultpic").toggle();


				} else if (type === "Gamma Camera") {
			}

		}
		
		
		function download_result() {
			var type = $("#simu_type option:selected").text();
			if (type === "Cylindrical PET") {
				type = "Cylindrical";
				//alert(type);
				window.location.href = 'http://localhost:8080/GATE-Interactive-Monitor/conf/Cylindrical/Cylindrical.root';
				} else if (type === "Gamma Camera") {
				type = "Gamma";
				window.location.href = 'http://localhost:8080/GATE-Interactive-Monitor/conf/Gamma/Gamma.root';
			}

		}

	</script>

</body>
</html>