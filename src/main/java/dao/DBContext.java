/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class DBContext {
    public Connection connection;
    
    public DBContext() throws SQLException {
       try {
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
           String connectionUrl = "jdbc:sqlserver://DESKTOP-A254IP8\\SQLEXPRESS:1433;database=motobike;";
           String username = "sa";
           String password = "123456";
           connection = DriverManager.getConnection(connectionUrl, username, password);
       } catch(ClassNotFoundException | SQLException ex) {
           ex.printStackTrace();
       }
   }
}
