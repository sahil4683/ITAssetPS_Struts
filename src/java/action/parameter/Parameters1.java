package action.parameter;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.net.InetAddress;
import javax.swing.JFrame;

public class Parameters1 {

    public void paramLoad() {
        readFromConfigFile();
    }

    public int readFromConfigFile() {
        AppData.DB_SERVER = "";
        AppData.DB_PORT = "";
        AppData.DB_USER = "";
        AppData.DB_PASS = "";
        AppData.CONF_FILE = "ConfigMe.txt";
        FileReader file = null;
        String line = null;
        String Ip = null;
        String password = null;
        String username = null;
        String port = null;
        BufferedReader buffer = null;
        String schema = null;
        String db_type = null;
        
        try {

            InetAddress hostip = InetAddress.getLocalHost();
            AppData.PC_IPADDRESS = hostip.getHostAddress();
            String path = "C:\\ConfigMe.txt";

            file = new FileReader(path);
            buffer = new BufferedReader(file);
            while ((line = buffer.readLine()) != null) {
                System.out.println("Line: "+line);

                if (line.contains("IPADDRESS")) {
                    Ip = line.substring(line.lastIndexOf("=") + 1);
                    AppData.DB_SERVER = Ip.trim();
                }

                if (line.contains("DB_PORT")) {
                    port = line.substring(line.lastIndexOf("=") + 1);
                    AppData.DB_PORT = port.trim();
                }

                if (line.contains("USERNAME")) {
                    username = line.substring(line.lastIndexOf("=") + 1);
                    AppData.DB_USER = username.trim();
                }

                if (line.contains("PASSWORD")) {
                    password = line.substring(line.lastIndexOf("=") + 1);
                    AppData.DB_PASS = password.trim();
                }

                if (line.contains("SCHEMA")) {
                    schema = line.substring(line.indexOf("=") + 1);
                    AppData.SCHEMA = schema.trim();
                }

                if (line.contains("DATABASE TYPE")) {
                    db_type = line.substring(line.lastIndexOf("=") + 1);
                    AppData.DB_TYPE = db_type.trim();
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (AppData.DB_SERVER != null && AppData.DB_PORT != null && AppData.DB_USER != null && AppData.DB_PASS != null) {
            return 1;
        } else {
            return 0;
        }
    }
}
