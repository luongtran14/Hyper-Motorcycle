/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Color;
import model.Product;

/**
 *
 * @author Admin
 */
public class ColorDAO extends DBContext{
    final String COLOR_TABLE = "dbo.Color"; 
    final String PRODUCT_COLOR_TABLE = "dbo.ProductColor"; 
    final String c_id = "color_id";
    final String p_id = "product_id";
    final String name = "name";
    
    public ColorDAO() throws SQLException, ClassNotFoundException {
        super();
    }
    
    public ArrayList<Color> getAllColors() {
        ArrayList<Color> colors = new ArrayList<>();
        try {
            String query = "SELECT * FROM " + COLOR_TABLE;
            PreparedStatement stm = connection.prepareStatement(query);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                Color color = new Color();
                color.setColorId(rs.getInt(c_id));
                color.setColorName(rs.getString(name));
                colors.add(color);
            }
            
            return colors;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public Color getColorByColorId(int id) {
        Color color = new Color();
        try {
            String query = "SELECT * FROM " + COLOR_TABLE + " WHERE " + c_id + " = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()) {
                color.setColorId(rs.getInt(c_id));
                color.setColorName(rs.getString(name));
            }
            
            return color;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public ArrayList<Color> getColorByProductId(int id) {
        ArrayList<Color> colors = new ArrayList<>();
        try {
            String query = "SELECT * FROM " + PRODUCT_COLOR_TABLE + " WHERE " + p_id + " = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                Color color = getColorByColorId(rs.getInt(c_id));
                colors.add(color);
            }
            
            return colors;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return new ArrayList<>();
    }
    
    public ArrayList<Product> getAllProductsByColorId(int id) throws ClassNotFoundException {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String query = "SELECT * FROM " + PRODUCT_COLOR_TABLE + " WHERE " + c_id + " = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                Product product = new ProductDAO().getSpecificProductById(rs.getInt(p_id));
                products.add(product);
            }
            
            return products;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return new ArrayList<>();
    }
    
    // delete section
    public void deleteColorTagOfAProduct(int pId, int cId) {
        try {
            String query = "DELETE FROM " + PRODUCT_COLOR_TABLE + " WHERE " + p_id + " = ? AND " + c_id + " = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, pId);
            stm.setInt(2, cId);
            ResultSet rs = stm.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
