/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.User;

/**
 *
 * @author nguye
 */
public class AccoutDao  extends DBContext{

    private PreparedStatement ps; // thuc thi cau lenh sql
    private ResultSet rs; // ket qua sau khi execute query

    public User login(String email, String password) {
        String query = "select * from [User]\n"
                + "where [User].email = ?\n"
                + "and	[User].password =?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while(rs.next()){
                User user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getBoolean(6), rs.getString(7), rs.getDate(8), rs.getString(9), rs.getBoolean(10)
                        , rs.getString(11), rs.getString(12));
                return user;
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void changePassword(int uid, String newPass){
        String sql ="update [User] set [password] = ? where [user_id] =?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, newPass);
            ps.setInt(2, uid);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}
