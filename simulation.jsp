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
			<a href="./simulation.jsp"><font color="red"><em>Run
						Simulation</em></font></a>
		</h3>
		<h3>
			<a href="./result.jsp"><strong>View Result</strong></a>
		</h3>
		<h3>
			<a href="./source.jsp">Source Code</a>
		</h3>
	</div>

	<div class="right">

		<h4></h4>
		<h4>Simulation</h4>
		<p>
			Choose Simulation Type (Geometry): <select id="simu_type"
				onclick="show_option()">
				<option value="0"></option>

				<option value="1">Cylindrical PET</option>

				<option value="2">Gamma Camera</option>

				<option value="3">To be added..</option>

			</select>

		</p>
		<div id="Cylindrical" style="display: none">
			<p>
				ViewPointThetaPhi: <select>
					<option value="1"></option>
					<option value="2"></option>
				</select>
			</p>

			<p>
				VisuOnOff: <select>
					<option value="1">On</option>
					<option value="2">Off</option>
				</select>
			</p>

			<p>
				SourceActivity: <select>
					<option value="1"></option>
					<option value="2"></option>
				</select>
			</p>

			<p>
				Nb_Detectors: <select>
					<option value="1"></option>
					<option value="2"></option>
				</select>
			</p>
			<p>
				CrystalMaterial: <select>
					<option value="1"></option>
					<option value="2"></option>
				</select>
			</p>
			<p>
				PhantomMaterial: <select>
					<option value="1"></option>
					<option value="2"></option>
				</select>
			</p>
			<p>
				PhanRmax: <select>
					<option value="1"></option>
					<option value="2"></option>
				</select>
			</p>
			<p>
				PhanRmin: <select>
					<option value="1"></option>
					<option value="2"></option>
				</select>
			</p>
			<p>
				Phan_Source_Pos: <select>
					<option value="1"></option>
					<option value="2"></option>
				</select>
			</p>
			<p>
				SourceVolMaterial: <select>
					<option value="1"></option>
					<option value="2"></option>
				</select>
			</p>
			<p>
				SourceEnergy: <select>
					<option value="1"></option>
					<option value="2"></option>
				</select>
			</p>
			<p>
				RootFileName: <select>
					<option value="1"></option>
					<option value="2"></option>
				</select>
			</p>
		</div>
		<a href="#" class="myButton">Start Simulation </a>


	</div>

	<div id="footer">
		<p>&#169 GATE Interactive Monitor, 2015</p>
	</div>


	<script src="https://code.jquery.com/jquery-1.11.3.js"></script>

	<script type="text/javascript" src="scripts/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
	<script type="text/javascript" src="scripts/d3.v3.min.js"></script>

	<script>
		function show_option() {
			// Tested on Chrome and Safari, has minor bug on Chrome.
			var text = $("#simu_type option:selected").text();
			if (text === "Cylindrical PET") {
				$("#Cylindrical").show();
			}
			if (text === "") {
				$("#Cylindrical").hide();
			}

		}
	</script>


</body>
</html>