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
import model.UserAddress;

/**
 *
 * @author Admin
 */
public class UserAddressDAO extends DBContext {

    Connection conn = null; //ket noi sql server
    PreparedStatement ps = null; //nem cau lenh query sang sql server
    ResultSet rs = null;// nhan ket qua tra ve

    public UserAddressDAO() throws SQLException, ClassNotFoundException {
        super();
    }

    public List<UserAddress> getAll(int userId) throws ClassNotFoundException {
        String query = "select * from [Address] where [user_id] = ? \n"
                + "order by is_main desc";
        List<UserAddress> data = new ArrayList<>();
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            while (rs.next()) {
                UserAddress ua = new UserAddress();
                ua.setId(rs.getInt("address_id"));
                ua.setUserId(rs.getInt("user_id"));
                ua.setFullAddress(rs.getString("address"));
                ua.setCity(rs.getString("city"));
                ua.setDistrict(rs.getString("district"));
                ua.setProvince(rs.getString("province"));
                ua.setIsMain(rs.getInt("is_main"));
                data.add(ua);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return data;
    }

    public void delete(int id) {
        String sql = "DELETE FROM [Address] WHERE address_id = ? and is_main != 1";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserAddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public UserAddress getById(int id) {
        String sql = "SELECT * FROM [Address] WHERE address_id = ?";
        UserAddress ua = null;
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                ua = new UserAddress();
                ua.setId(rs.getInt("address_id"));
                ua.setUserId(rs.getInt("user_id"));
                ua.setFullAddress(rs.getString("address"));
                ua.setCity(rs.getString("city"));
                ua.setDistrict(rs.getString("district"));
                ua.setProvince(rs.getString("province"));
                ua.setIsMain(rs.getInt("is_main"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserAddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ua;
    }

    public UserAddress getMainAddress(int userId) {
        String sql = "SELECT * FROM [Address] "
                + " WHERE user_id = ? and is_main = 1" ;
        UserAddress ua = null;
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                ua = new UserAddress();
                ua.setId(rs.getInt("address_id"));
                ua.setUserId(rs.getInt("user_id"));
                ua.setFullAddress(rs.getString("address"));
                ua.setCity(rs.getString("city"));
                ua.setDistrict(rs.getString("district"));
                ua.setProvince(rs.getString("province"));
                ua.setIsMain(rs.getInt("is_main"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserAddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ua;
    }

    public void edit(UserAddress ua) {
        String sql = "UPDATE [Address] "
                + " SET address = ?, city = ?, district = ?, province = ?, is_main = ?"
                + " WHERE address_id = ?";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(sql);
            ps.setString(1, ua.getFullAddress());
            ps.setString(2, ua.getCity());
            ps.setString(3, ua.getDistrict());
            ps.setString(4, ua.getProvince());
            ps.setInt(5, ua.getIsMain());
            ps.setInt(6, ua.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserAddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void add(UserAddress ua) {
        String sql = "INSERT INTO [Address](address,city,district,province,is_main,user_id) "
                + " VALUES(?,?,?,?,?,?)";

        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(sql);
            ps.setString(1, ua.getFullAddress());
            ps.setString(2, ua.getCity());
            ps.setString(3, ua.getDistrict());
            ps.setString(4, ua.getProvince());
            ps.setInt(5, ua.getIsMain());
            ps.setInt(6, ua.getUserId());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserAddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
