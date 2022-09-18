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
import java.util.ArrayList;
import java.util.List;
import model.User;


/**
 *
 * @author huyen
 */
public class UsersDAO extends DBContext{
    
     Connection conn = null; //ket noi sql server
    PreparedStatement ps = null; //nem cau lenh query sang sql server
    ResultSet rs = null;// nhan ket qua tra ve
    
    public User getUsertByID(String id) {

        String query = "select*from [User] where user_id = ?";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
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
    
//       public List<User> getProductByCID(String categoryID) {
//        List<User> list = new ArrayList<>();
//        String query = "select*from Products where CategoryID = ?";
//        try {
//            conn = new DBContext().connection;
//            ps = conn.prepareStatement(query);
//            ps.setString(1, categoryID);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new User(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getBoolean(6),
//                        rs.getString(7),
//                        rs.getDate(8),
//                        rs.getString(9),
//                        rs.getBoolean(10),
//                        rs.getString(11),
//                        rs.getString(12)
//                ));
//
//            }
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//        return list;
//    }

  
        
    public static void main(String[] args) {
        UsersDAO dao = new UsersDAO();
        User u = dao.getUsertByID("1");
//      List<User> list = dao.getUsertByID("1");
//        for (Users account : list) {
//            System.out.println(account);
//            
//        }
}
}
