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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author huyen
 */
public class UsersDAO extends DBContext {

    Connection conn = null; //ket noi sql server
    PreparedStatement ps = null; //nem cau lenh query sang sql server
    ResultSet rs = null;// nhan ket qua tra ve

    public UsersDAO() throws SQLException, ClassNotFoundException {
        super();
    }

    public void register(String fname, String lname, String phone, String email, String gender, String password) throws ClassNotFoundException {
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
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public User checkAccountExist(String email) throws ClassNotFoundException {
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
        } catch (SQLException e) {
        }
        return null;
    }

    public List<User> getAllUser() {
        List<User> list = new ArrayList<>();
        String query = "select*from [User]";
        try {
            conn = new DBContext().connection;//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                //   System.out.println("1");
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

    public User login(String email, String password) {
        User result = null;
        try {
            String sql = "SELECT * FROM [User]  WHERE email = ? and password = ?";

            Connection con = DBConnection.getSQLServerConnection();

            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, password);
            rs = stm.executeQuery();
            if (rs.next()) {
                result = new User();
                result.setUserID(rs.getInt("user_id"));
                result.setFirstname(rs.getString("first_name"));
                result.setLastname(rs.getString("last_name"));
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
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

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

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        UsersDAO dao = new UsersDAO();
        //dao.register("rtyuioi", "yirw", "1234567890", "13u3u@", "male", "1232455");
        //dao.checkAccountExist("huyenphuong628@gmail.com");
        List<User> list = dao.getAllUser();
        for (User account : list) {
            System.out.println(account);
        }
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
            rs = stm.executeQuery();
            while (rs.next()) {
                User result = new User();
                result.setUserID(rs.getInt("user_id"));
                result.setFirstname(rs.getString("first_name"));
                result.setLastname(rs.getString("last_name"));
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
        System.out.println(data.size());
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
            rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("total");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public void update(User user) {

        String sql = " UPDATE [User] "
                + " SET is_active = ? "
                + " WHERE user_id = ?";
        Connection con;
        try {
            con = DBConnection.getSQLServerConnection();
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setBoolean(1, user.isIsActive());
            stm.setInt(2, user.getUserID());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
