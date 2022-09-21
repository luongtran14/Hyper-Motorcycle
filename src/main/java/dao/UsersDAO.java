/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.User;

/**
 *
 * @author huyen
 */
public class UsersDAO extends DBContext{
    
    public UsersDAO() throws SQLException, ClassNotFoundException {
        super();
    }
    
     Connection conn = null; //ket noi sql server
    PreparedStatement ps = null; //nem cau lenh query sang sql server
    ResultSet rs = null;// nhan ket qua tra ve

    public void register(String fname, String lname, String phone, String email,String gender, String password) {
        String query = "insert into [User] "
                + "values (?, ?, ?, ?, 0, '', '', ?, 1, ?, '')";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setString(3, phone);
            ps.setString(4, email);
            ps.setString(5, gender);
            ps.setString(6, password);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }

    }
    
    public User checkAccountExist(String email) {
      String query = "select * from [User] where [email] = ?";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getBoolean(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getString(9),
                        rs.getBoolean(10),
                        rs.getString(11),
                        rs.getString(12)
                );
                 
            }
        } catch (Exception e) {
        }

        return null;
    }
        
        public List<User> checkAccount() {
          List<User> list = new ArrayList<>();
        String query = "select*from [User]";
        try {
            conn = new DBContext().connection;//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getBoolean(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getString(9),
                        rs.getBoolean(10),
                        rs.getString(11),
                        rs.getString(12)
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
        
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        UsersDAO dao = new UsersDAO();
        //dao.register("rtyuioi", "yirw", "1234567890", "13u3u@", "male", "1232455");
       //dao.checkAccountExist("huyenphuong628@gmail.com");
      List<User> list = dao.checkAccount();
        for (User account : list) {
            System.out.println(account);
            
        }
}
}
