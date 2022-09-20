/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.User;

/**
 *
 * @author Admin
 */
public class DemoDAOClass {
    private Connection conn; // mo ket noi voi sql servel
    private PreparedStatement ps; // thuc thi cau lenh sql
    private ResultSet rs; // ket qua sau khi execute query
    public User login(String email, String password) {
        String query = "select [User].user_id,[User].first_name,[User].last_name,[User].phone,[User].email,[User].is_admin,[User].intro,[User].dob,[User].gender,[User].is_active\n"
                + "from [User], Account\n"
                + "where [User].email =?\n"
                + "and	 Account.hash_password = ?";
        
        return null;
    }
}
