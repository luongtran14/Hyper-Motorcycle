/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Category;
import model.Product;

/**
 *
 * @author Admin
 */
public class CategoryDAO extends DBContext {

    final String CATEGORY_TABLE = "dbo.Category";
    final String id = "category_id";
    final String name = "category_name";

    public CategoryDAO() throws SQLException, ClassNotFoundException {
        super();
    }

    public ArrayList<Category> getAllCategories() {
        ArrayList<Category> allCategories = new ArrayList<>();
        try {
            String query = "SELECT * FROM " + CATEGORY_TABLE;
            PreparedStatement stm = connection.prepareStatement(query);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Category category = new Category();
                category.setCategoryId(rs.getInt(id));
                category.setCategoryName(rs.getString(name));
                allCategories.add(category);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return allCategories;
    }

    public Category getCategoryById(int categoryId) {
        Category category = new Category();
        try {
            String query = "SELECT * FROM " + CATEGORY_TABLE + " WHERE " + id + " = " + categoryId;
            PreparedStatement stm = connection.prepareStatement(query);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                category.setCategoryId(rs.getInt(id));
                category.setCategoryName(rs.getString(name));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return category;
    }

    public void deleteCategory(int categoryId) {

        try {
            String query = "delete from Category \n"
                    + "where category_id = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, categoryId);
            stm.executeUpdate();

        } catch (SQLException e) {
        }
    }

    public int getProductByCategory(int categoryId) {
        try {

            int count = 0;
            String query = "select product_name from Product\n"
                    + "where category_id = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, categoryId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                count++;
                return count;
            }

        } catch (SQLException e) {
        }
        return 0;
    }

    public void addNewCategory(String namecategory) {
        try {

            String query = "INSERT INTO [dbo].[Category]\n"
                    + "           ([category_name])\n"
                    + "     VALUES\n"
                    + "           (?)";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, namecategory);
            stm.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public boolean checkNameCategory(String namecategory) {

        try {
            String query = "SELECT \n"
                    + "      [category_name]\n"
                    + "  FROM [dbo].[Category]\n"
                    + "  where[category_name] = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, namecategory);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                if (rs.getString(1).toUpperCase().trim().equals(namecategory.toUpperCase().trim())) {
                    return false;
                }
            }
        } catch (SQLException e) {
        }
        return true;

    }

    public void updateCategory(int categoryid, String categoryname) {
        try {
            String query = "UPDATE [dbo].[Category]\n"
                    + "   SET [category_name] = ?\n"
                    + " WHERE category_id=?";
             PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, categoryname);
            stm.setInt(2, categoryid);
            stm.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        CategoryDAO dao = new CategoryDAO();
       System.out.println(dao.checkNameCategory("gear"));
   }
}
