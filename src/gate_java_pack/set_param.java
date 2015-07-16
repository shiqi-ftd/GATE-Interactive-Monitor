/**
 * input with the format: type,parm,value (eg, Cylindrical,PhanRmax,20 mm)
 * generate the new macro conf file based on the value change
 * By Shiqi Zhong
 * 7/13/2015
 */

package gate_java_pack;

import java.io.*;

public class set_param {
	String type;
	String parm;
	String value;
	String path;
	
	public set_param(String params[], String pathtofile) {
		type = params[0];
		parm = params[1];
		value = params[2];
		path=pathtofile;
	}

	public void set_conf(set_param sp) throws IOException {

		 BufferedReader file = new BufferedReader(new FileReader(
		 sp.path + '\\' + "WebContent\\conf" + '\\' +
		 sp.type + '\\' + "configuration.mac"));
		
/*		BufferedReader file = new BufferedReader(new FileReader("C:" + '\\'
				+ "Users" + '\\' + "szhong4" + '\\' + "Desktop" + '\\'
				+ "GATE-Interactive-Monitor" + '\\' + "WebContent\\conf" + '\\'
				+ sp.type + '\\' + "configuration.mac"));
*/		String line;
		String input = "";
		while ((line = file.readLine()) != null) {
			if (line.contains(sp.parm) && !line.contains("{")) {
				input += "/control/alias" + " " + sp.parm + "  " + sp.value
						+ '\n';
			} else {
				input += line + '\n';
			}
		}
		file.close();
		System.out.println(input);

		// overwrite the conf file.

		 File cf = new File(sp.path + '\\' +
		 "WebContent\\conf" + '\\' + sp.type + '\\' + "configuration.mac");
		/// false to overwrite.
/*		File cf = new File("C:" + '\\' + "Users" + '\\' + "szhong4" + '\\'
				+ "Desktop" + '\\' + "GATE-Interactive-Monitor" + '\\'
				+ "WebContent\\conf" + '\\' + sp.type + '\\'
				+ "configuration.mac");
*/		FileWriter wf = new FileWriter(cf, false);
		wf.write(input);
		wf.close();
	}

	public static void main(String args[]) {
		try {
			// System.out.println(System.getProperty("user.dir"));
			String cmd;
			if (args.length > 1) {
				cmd = args[0].toString() + " " + args[1].toString();
			} else {
				cmd = args[0].toString();
			}

			String[] params = cmd.split(",");
			params[1] = params[1].replace("2", "");

/*			set_param sp = new set_param(params);
			sp.set_conf(sp);
*/			/*
			 * System.out.print(System.getProperty("user.dir") + '\\' +
			 * "WebContent\\conf" + '\\' + sp.type + '\\' +
			 * "configuration.mac");
			 */
		} catch (Exception e) {
		}

	}
}
