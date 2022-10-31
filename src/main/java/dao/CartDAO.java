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
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;
import model.UserAddress;

/**
 *
 * @author Admin
 */
public class CartDAO extends DBContext {

    Connection conn = null; //ket noi sql server
    PreparedStatement ps = null; //nem cau lenh query sang sql server
    ResultSet rs = null;// nhan ket qua tra ve

    public CartDAO() throws SQLException, ClassNotFoundException {
        super();
    }

    public Cart insert(Cart cart) {
        String sql = "INSERT [Cart](user_id,ship_address,phone,total_price,discount,promo_code) VALUES(?,?,?,?,?,?)";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, cart.getUserId());
            ps.setString(2, cart.getShipAddress());
            ps.setString(3, cart.getPhoneNumber());
            ps.setFloat(4, cart.getTotalPrice());
            ps.setInt(5, 0);
            ps.setInt(6, 0);
            int affectedRows = ps.executeUpdate();

            if (affectedRows == 0) {
                throw new SQLException("Creating user failed, no rows affected.");
            }

            try (ResultSet generatedKeys = ps.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    cart.setId(generatedKeys.getInt(1));
                    return cart;
                } else {
                    throw new SQLException("Creating user failed, no ID obtained.");
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserAddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
