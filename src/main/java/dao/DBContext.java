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
    
    public DBContext() throws SQLException, ClassNotFoundException {
       try {
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
           String connectionUrl = "jdbc:sqlserver://localhost:1433;database=motobike;encrypt=true;trustServerCertificate=true;";
           String username = "sa";
           String password = "1234567890";
           connection = DriverManager.getConnection(connectionUrl, username, password);
       } catch(SQLException ex) {
           ex.printStackTrace();
       }
   }
}
