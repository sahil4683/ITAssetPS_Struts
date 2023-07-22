/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action.DBConnection;

import static java.lang.Class.forName;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import static javax.swing.JOptionPane.showMessageDialog;

/**
 *
 * @author Demon
 */
public class DBConnect12 {

    

    public static Connection getConnection() {
        Connection con = null;
        try {
            forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/itassets", "root", "root");
        } catch (Exception e) {
            out.println("Database Connection Error...!");
            showMessageDialog(null,"Database Connection Error...!");
        }
        return con;
    }
}
