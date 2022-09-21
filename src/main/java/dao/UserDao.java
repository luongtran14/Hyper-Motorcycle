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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author Admin
 */
public class UserDao {

    public User login(String email, String password) {
        User result = null;
        try {
            String sql = "SELECT * FROM [User]  WHERE email = ? and password = ?";

            Connection con = DBConnection.getSQLServerConnection();

            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                result = new User();
                result.setUserId(rs.getInt("user_id"));
                result.setFirstName(rs.getString("first_name"));
                result.setLastName(rs.getString("last_name"));
                result.setPhone(rs.getString("phone"));
                result.setEmail(rs.getString("email"));

                result.setIsAdmin(rs.getBoolean("is_admin"));
                result.setIntro(rs.getString("intro"));

                result.setDob(rs.getDate("dob"));

                result.setGender(rs.getString("gender"));

                result.setIsActive(rs.getBoolean("is_active"));
                result.setPassword(rs.getString("password"));
                result.setAvatar(rs.getString("avatar"));
                return result;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<User> getUserList(int pageIndex, int pageSize, String searchKeyword, String status, String gender) {

        List<User> data = new ArrayList<>();;
        String sql = "select * from ( \n"
                + "select  ROW_NUMBER() OVER (ORDER BY user_id) AS row_num, * from [User]\n"
                + "where CONCAT(first_name,' ',last_name ) LIKE ? #CONDITION#) T\n"
                + "where T.row_num > ? and  T.row_num <= ?";

        if (searchKeyword == null) {
            searchKeyword = "";
        }
        String dynamicCondition = "";
        if (gender != null && (gender.equals("MALE") || gender.equals("FEMALE") || gender.equals("OTHER"))) {
            dynamicCondition += " AND gender = ?";
        }
        if (status != null && (status.equals("0") || status.equals("1"))) {
            dynamicCondition += " AND is_active = ?";
        }

        sql = sql.replaceAll("#CONDITION#", dynamicCondition);
        int start = (pageIndex - 1) * pageSize;
        int end = start + pageSize;

        try {
            int index = 1;
            Connection con = DBConnection.getSQLServerConnection();
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(index++, "%" + searchKeyword + "%");
            if (gender != null && !gender.equals("ALL")) {
                stm.setString(index++, gender);
            }

            if (status != null && (status.equals("0") || status.equals("1"))) {
                stm.setBoolean(index++, status.equals("1"));
            }
            stm.setInt(index++, start);
            stm.setInt(index++, end);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User result = new User();
                result.setUserId(rs.getInt("user_id"));
                result.setFirstName(rs.getString("first_name"));
                result.setLastName(rs.getString("last_name"));
                result.setPhone(rs.getString("phone"));
                result.setEmail(rs.getString("email"));

                result.setIsAdmin(rs.getBoolean("is_admin"));
                result.setIntro(rs.getString("intro"));

                result.setDob(rs.getDate("dob"));

                result.setGender(rs.getString("gender"));

                result.setIsActive(rs.getBoolean("is_active"));
                result.setPassword(rs.getString("password"));
                result.setAvatar(rs.getString("avatar"));
                data.add(result);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return data;
    }

    public int countUser(String searchKeyword, String gender, String status) {

        String sql = "select count(*) as total from [User]\n"
                + "where CONCAT(first_name,' ',last_name ) LIKE ? #CONDITION#";

        try {
            if (searchKeyword == null) {
                searchKeyword = "";
            }
            String dynamicCondition = "";
            if (gender != null && (gender.equals("MALE") || gender.equals("FEMALE") || gender.equals("OTHER"))) {
                dynamicCondition += " AND gender = ?";
            }
            if (status != null && (status.equals("0") || status.equals("1"))) {
                dynamicCondition += " AND is_active = ?";
            }

            sql = sql.replaceAll("#CONDITION#", dynamicCondition);
             int index = 1;
            Connection con = DBConnection.getSQLServerConnection();
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(index++, "%" + searchKeyword + "%");
            if (gender != null && !gender.equals("ALL")) {
                stm.setString(index++, gender);
            }

            if (status != null && (status.equals("0") || status.equals("1"))) {
                stm.setBoolean(index++, status.equals("1"));
            }
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("total");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
