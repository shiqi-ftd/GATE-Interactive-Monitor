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

				<option value="3">More templates be added..</option>

			</select>

		</p>
		<div id="Cylindrical" style="display: none">
			<p>
				ViewPointThetaPhi: <select id="ViewPointThetaPhi"
					onclick="send_parameter('#ViewPointThetaPhi')">
					<option value="0"></option>
					<option value="1">0 90</option>
					<option value="2">90 0</option>
					<option value="3">89 90</option>
					<option value="4">30 30</option>

				</select>
			</p>

			<p>
				VisuOnOff: <select id="VisuOnOff"
					onclick="send_parameter('#VisuOnOff')">
					<option value="0"></option>
					<option value="1">novisu</option>
					<option value="2">visu</option>
				</select>
			</p>

			<p>
				SourceActivity: <select id="SourceActivity"
					onclick="send_parameter('#SourceActivity')">
					<option value="0"></option>
					<option value="1">100. Bq</option>
					<option value="2">1000. Bq</option>
					<option value="3">10000. Bq</option>
					<option value="4">100000. Bq</option>

				</select>
			</p>

			<p>
				Nb_Detectors: <select id="Nb_Detectors"
					onclick="send_parameter('#Nb_Detectors')">
					<option value="0"></option>
					<option value="1">2</option>
					<option value="2">64</option>
				</select>
			</p>
			<p>
				CrystalMaterial: <select id="CrystalMaterial"
					onclick="send_parameter('#CrystalMaterial')">
					<option value="0"></option>
					<option value="1">LSO</option>
					<option value="2">BGO</option>
					<option value="3">NaI</option>
				</select>
			</p>
			<p>
				PhantomMaterial: <select id="PhantomMaterial"
					onclick="send_parameter('#PhantomMaterial')">
					<option value="0"></option>
					<option value="1">Water</option>
					<option value="2">Air</option>
					<option value="3">Vacuum</option>
					<option value="4">Lead</option>
					<option value="5">PVC</option>
					<option value="6">Plexiglass</option>

				</select>
			</p>

			<p>
				PhanRmax: <select id="PhanRmax"
					onclick="send_parameter('#PhanRmax')">
					<option value="0"></option>
					<option value="1">18mm</option>
					<option value="2">20mm</option>
					<option value="3">25mm</option>
				</select>
			</p>
			<p>
				PhanRmin: <select id="PhanRmin"
					onclick="send_parameter('#PhanRmin')">
					<option value="0"></option>
					<option value="1">13mm</option>
					<option value="2">15mm</option>
					<option value="3">17mm</option>
				</select>
			</p>
			<p>
				Phan_Source_Pos: <select id="Phan_Source_Pos"
					onclick="send_parameter('#Phan_Source_Pos')">
					<option value="0"></option>
					<option value="1">0.0 0.0 0.0 mm</option>
				</select>
			</p>
			<p>
				SourceVolMaterial: <select id="SourceVolMaterial"
					onclick="send_parameter('#SourceVolMaterial')">
					<option value="0"></option>
					<option value="1">Water</option>
					<option value="2">Air</option>
					<option value="3">Vacuum</option>
					<option value="4">PVC</option>
					<option value="5">Plexiglass</option>
				</select>
			</p>
			<p>
				SourceEnergy: <select id="SourceEnergy"
					onclick="send_parameter('#SourceEnergy')">
					<option value="0"></option>
					<option value="1">511 keV</option>
					<option value="2">100 keV</option>
				</select>
			</p>
			<!--			<p>
				RootFileName: <select>
					<option value="0"></option>
					<option value="1">0.0 0.0 0.0 mm</option>
				</select>
			</p>
-->
		</div>
		<div id="Gamma" style="display: none">
			<p>
				ViewPointThetaPhi: <select id="ViewPointThetaPhi2"
					onclick="send_parameter('#ViewPointThetaPhi2')">
					<option value="0"></option>
					<option value="1">0 90</option>
					<option value="2">90 0</option>
					<option value="3">-90 0</option>
					<option value="4">89 90</option>
				</select>
			</p>
			<p>
				VisuOnOff: <select id="VisuOnOff2"
					onclick="send_parameter('#VisuOnOff2')">
					<option value="0"></option>
					<option value="1">novisu</option>
					<option value="2">visu</option>
				</select>
			</p>
			<p>
				SourceActivity: <select id="SourceActivity2"
					onclick="send_parameter('#SourceActivity2')">
					<option value="0"></option>
					<option value="1">100 Bq</option>
					<option value="2">1000. Bq</option>
					<option value="1">10000. Bq</option>
					<option value="2">100000. Bq</option>
				</select>
			</p>
			<p>
				CameraType: <select id="CameraType2"
					onclick="send_parameter('#CameraType2')">
					<option value="0"></option>
					<option value="1">camera_Tc</option>
					<option value="2">camera_I_131</option>
				</select>
			</p>
			<p>
				x_placement: <select id="x_placement2"
					onclick="send_parameter('#x_placement2')">
					<option value="0"></option>
					<option value="1">20.0</option>
				</select>
			</p>

			<p>
				CollimatorMaterial: <select id="CollimatorMaterial2"
					onclick="send_parameter('#CollimatorMaterial2')">
					<option value="0"></option>
					<option value="1">Lead</option>
					<option value="2">Vacuum</option>
					<option value="3">Air</option>
					<option value="4">Cropper</option>
					<option value="5">Iron</option>
					<option value="6">Tungsten</option>
					<option value="7">Plexiglass</option>
				</select>
			</p>
			<p>
				CrystalMaterial: <select id="CrystalMaterial2"
					onclick="send_parameter('#CrystalMaterial2')">
					<option value="0"></option>
					<option value="1">NaI</option>
					<option value="2">BGO</option>
					<option value="3">GSO</option>
					<option value="4">PWO</option>
					<option value="5">LuAP</option>
					<option value="6">YAP</option>
					<option value="7">CZT</option>
				</select>
			</p>
			<p>
				PhantomMaterial: <select id="PhantomMaterial2"
					onclick="send_parameter('#PhantomMaterial2')">
					<option value="0"></option>
					<option value="1">Plexiglass</option>
					<option value="2">Air</option>
					<option value="3">Vacuum</option>
					<option value="4">Lead</option>
					<option value="5">PVC</option>
					<option value="6">Copper</option>
					<option value="7">Tungsten</option>
					<option value="8">Molybdenum</option>
				</select>
			</p>
			<p>
				PhanRmax: <select id="PhanRmax2"
					onclick="send_parameter('#PhanRmax2')">
					<option value="0"></option>
					<option value="1">50.0 mm</option>
					<option value="2">52.0 mm</option>
					<option value="3">54.0 mm</option>
				</select>
			</p>
			<p>
				PhanRmin: <select id="PhanRmin2"
					onclick="send_parameter('#PhanRmin2')">
					<option value="0"></option>
					<option value="1">49.5 mm</option>
					<option value="2">48.0 mm</option>
					<option value="3">45.0 mm</option>
				</select>
			</p>
			<p>
				SourceVolMaterial: <select id="SourceVolMaterial2"
					onclick="send_parameter('#SourceVolMaterial2')">
					<option value="0"></option>
					<option value="1">Plexiglass</option>
					<option value="2">Air</option>
					<option value="3">Water</option>
					<option value="4">Vacuum</option>
					<option value="5">PVC</option>
				</select>
			</p>
			<p>
				SourceType: <select id="SourceType2"
					onclick="send_parameter('#SourceType2')">
					<option value="0"></option>
					<option value="1">sources_gamma_3</option>
					<option value="2">sources_Y90_histo</option>
					<option value="3">sources_gamma</option>
					<option value="4">sources_ion</option>
					<option value="5">sources_positron</option>
					<option value="6">sources_electron_2</option>
				</select>
			</p>
			<p>
				SourceEnergy: <select id="SourceEnergy2"
					onclick="send_parameter('#SourceEnergy2')">
					<option value="0"></option>
					<option value="1">140 keV</option>
					<option value="2">364 keV</option>
					<option value="3">511 keV</option>
					<option value="4">1000 keV</option>
					<option value="5">2284 keV</option>
				</select>
			</p>
		</div>
		<div id="myDiv">
			<h2>Change</h2>
		</div>

		<a href="./result.jsp" class="myButton">Start Simulation </a> <a
			class="myButton" id="btn_get_simulation_status">Start Simulation</a>




	</div>

	<div id="footer">
		<p>&#169 GATE Interactive Monitor, 2015</p>
	</div>


	<script src="https://code.jquery.com/jquery-1.11.3.js"></script>

	<script type="text/javascript" src="scripts/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
	<script type="text/javascript" src="scripts/d3.v3.min.js"></script>

	<script type="text/javascript">
		function show_option() {
			// Tested on Chrome and Safari, bug has fixed
			var text = $("#simu_type option:selected").text();
			if (text === "Cylindrical PET") {
				$("#Cylindrical").show();
				$("#Gamma").hide();
			} else if (text === "") {
				$("#Cylindrical").hide();
				$("#Gamma").hide();
			} else if (text === "Gamma Camera") {
				$("#Cylindrical").hide();
				$("#Gamma").show();
			} else {
				$("#Cylindrical").hide();
				$("#Gamma").hide();

			}

		}

		function send_parameter(thisObj) {
			var type = $(thisObj).parent().parent().attr('id');
			var name = $(thisObj).attr('id');
			//var id = $(this).children(":selected").attr("id");
			var text = $("option:selected", thisObj).text();
			//alert($("#choose_paramter:parent"));
			//alert(type + "," + name +"," + text);
			var cmd = type + "," + name + "," + text;
			$.post("/GATE-Interactive-Monitor/datatransfer.jsp", {
				command : cmd
			}, function(data) {
				alert("Data Sent: " + data);
			});

			/* 			d3.select("#btn_get_simulation_status").on("click", function() {
			 console.log("requesting simulation information");
			 $.ajax({
			 type : "post",
			 url : "/GATE-Interactive-Monitor/simulation.jsp",
			 data : {
			 command : cmd,
			 simulation_time : l_simulation_time,
			 collimator_material : l_collimator_material,
			 simulation_ROR : l_simulation_ROR,
			 simulation_activity : l_simulation_activity
			 },
			 success : function(data) {
			 alert(data);
			 }
			 });
			 }); */
			//alert(cmdobj.command);
			/* 
			 $.ajax({
			 type : "post",
			 url : "/ajax/get_simulation_status",

			 success : function(data) {
			 alert(data);
			 }
			 });
			 */
			/* 			$.ajax({
			 type: "post",
			 data: cmdobj,
			 dataType: "json",
			 //url:"./",
			 success: function (data) {
			 //console.log(data);
			 alert(data.command);
			 },
			 error: function(data) {
			 alert("Error"+data);
			 //console.log(data);
			 }
			 });
			 */

		}
	</script>

</body>
</html>