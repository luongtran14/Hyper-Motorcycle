/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class UserDao {
    public boolean login(String email, String password){
        
        try {
            String sql =  "SELECT * FROM [User] JOIN [Account] on [Account].account_id = [User].account_id WHERE email = ? and [Account].hash_password = ?";
            
            Connection con = DBConnection.getSQLServerConnection();
            
            PreparedStatement stm = con.prepareStatement(sql);
            System.out.println(email + " " + password );
            stm.setString(1, email);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
           if(rs.next()){
             return true;
           }
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
     return false;   
    }
    
}
