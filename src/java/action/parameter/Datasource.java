package action.parameter;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.sql.DataSource;
import oracle.jdbc.pool.OracleDataSource;

public class Datasource {

    static DataSource dataSource;
    static Connection connection;
    static Statement statement;

    public static Connection getConnection() {
        Parameters1 p=new Parameters1();
        p.paramLoad();
        
        Connection con = null;
        String type = AppData.DB_TYPE;
        System.out.println("123458888888" + type);

        System.out.println("User: " + AppData.DB_USER);
        System.out.println("Password: " + AppData.DB_PASS);
        System.out.println("Server: " + AppData.DB_SERVER);
        try {
            if (type.equals("oracle")) {
                DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
                OracleDataSource ods = null;
                ods = new OracleDataSource();
                ods.setUser(AppData.DB_USER);
                ods.setPassword(AppData.DB_PASS);

                ods.setURL("jdbc:oracle:thin:@" + AppData.DB_SERVER + ":" + AppData.DB_PORT + ":xe");

                con = ods.getConnection();
            } else if (type.equals("mysql")) {
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                MysqlDataSource mds = new MysqlDataSource();
                mds.setUser(AppData.DB_USER);
                mds.setPassword(AppData.DB_PASS);
                mds.setURL("jdbc:mysql://" + AppData.DB_SERVER + ":" + AppData.DB_PORT + "/" + AppData.SCHEMA + "");

                con = mds.getConnection();
            }
        } catch (Exception e) {
            System.out.println("Database connection..7777777" + e);
        }
        return con;
    }
}
