/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.util.Random;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Customer;

/**
 *
 * @author nguye
 */
public class CustomerDAO extends DBContext {
    
    public CustomerDAO() throws SQLException, ClassNotFoundException {
        super();
    }

    public int findIdByEmail(String email) {
        Customer customer = new Customer();
        try {
            String sql = "  select [user_id] from [User] where [email] like ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, "%"+email+"%");
            ResultSet rs = stm.executeQuery();
              while (rs.next()) {
                  return rs.getInt(1);
              }
        } catch (Exception e) {
            System.out.println(e);
        }
        return -1;
    }

    public void changePassword(int uid, String newpass) {
        try {
            String sql = "  update [User] set [password] = ? where [user_id] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, newpass);
            stm.setInt(2, uid);
            stm.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        new CustomerDAO().changePassword(1,"hahahah");
        System.out.println(new CustomerDAO().findIdByEmail("nguyenviettx2001@gmail.com") );
    }
}
