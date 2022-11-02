/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Color;
import model.Product;

/**
 *
 * @author Admin
 */
public class ColorDAO extends DBContext {

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

            while (rs.next()) {
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

            while (rs.next()) {
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

    public void deleteColorTagsOfAProduct(int pId) {
        try {
            String query = "DELETE FROM " + PRODUCT_COLOR_TABLE + " WHERE " + p_id + " =? ";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, pId);
            ResultSet rs = stm.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    // create section
    public void addColorToAProduct(int pId, int cId) {
        try {
            String query
                    = " INSERT INTO " + PRODUCT_COLOR_TABLE
                    + " (" + p_id + "," + c_id + ") "
                    + " VALUES(?,?)";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, pId);
            stm.setInt(2, cId);
            System.out.println(query + " " + pId + " " + cId);
            ResultSet rs = stm.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    // update section
    public void updateColorOfAProduct(int pId, ArrayList<Color> colors) {
        try {
            deleteColorTagsOfAProduct(pId);
            for (Color c : colors) {
                addColorToAProduct(pId, c.getColorId());
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void deleteColorById(String cId) {
        try {
            String query = "DELETE FROM [dbo].[Color]\n"
                    + "      WHERE color_id = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, cId);
            ResultSet rs = stm.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ColorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteProductColorById(String cId) {
        try {
            String query = "DELETE FROM [dbo].[ProductColor]\n"
                    + "      WHERE color_id = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, cId);
            ResultSet rs = stm.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ColorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean checkColorIdUpdate(String cId) {
        try {
            String query = "SELECT [color_id]\n"
                    + "      ,[name]\n"
                    + "  FROM [dbo].[Color]\n"
                    + "  where color_id = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, cId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                if (rs.getString(1).equals(cId)) {
                    return true;
                }

            }
        } catch (SQLException ex) {
            Logger.getLogger(ColorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public void updateColor(String cId, String colorName) {
        try {
            String query = "UPDATE [dbo].[Color]\n"
                    + "   SET [name] = ?\n"
                    + " WHERE color_id=?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, colorName);
            stm.setString(2, cId);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ColorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public boolean checkColorName(String colorName) {
        try {
            String query = "SELECT [color_id]\n"
                    + "      ,[name]\n"
                    + "  FROM [dbo].[Color]\n"
                    + "  where name = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, colorName);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                if (rs.getString(2).toUpperCase().trim().equals(colorName.toUpperCase().trim())) {
                    return false;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(ColorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
    }

    public void createColor(String colorName) {
        try {
            String query = "INSERT INTO [dbo].[Color]\n"
                    + "           ([name])\n"
                    + "     VALUES\n"
                    + "           (?)";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, colorName);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ColorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    // manager color

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        ColorDAO cDao = new ColorDAO();
        cDao.addColorToAProduct(3, 1);
        System.out.println(cDao.getColorByProductId(3).size());
        for (Color c : cDao.getColorByProductId(3)) {
            System.out.println(c.getColorName());
        }
        System.out.println(cDao.checkColorName("black"));
    }
}
