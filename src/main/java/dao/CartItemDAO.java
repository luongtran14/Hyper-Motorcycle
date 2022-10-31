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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;
import model.CartItem;
import model.ProductCartItem;
import model.UserAddress;

/**
 *
 * @author Admin
 */
public class CartItemDAO extends DBContext {

    Connection conn = null; //ket noi sql server
    PreparedStatement ps = null; //nem cau lenh query sang sql server
    ResultSet rs = null;// nhan ket qua tra ve

    public CartItemDAO() throws SQLException, ClassNotFoundException {
        super();
    }

    public void insert(List<ProductCartItem> cartItems, int cartId) {
        System.out.println("cartId" + cartId);
        String sql = "INSERT [Cart_item](cart_id,category_id,product_id,quantity,total_price) VALUES(?,?,?,?,?)";

        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(sql);
            for (ProductCartItem x : cartItems) {

                ps.setInt(1, cartId);
                ps.setInt(2, 2);
                ps.setInt(3, x.getProduct().getProductId());
                ps.setInt(4, x.getQuantity());
                ps.setFloat(5, x.getQuantity() * x.getProduct().getUnitPrice());
                ps.addBatch();
            }
            ps.executeBatch();
        } catch (SQLException e) {
            System.out.println(e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserAddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
