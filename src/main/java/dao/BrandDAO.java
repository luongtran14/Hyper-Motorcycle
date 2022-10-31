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
import javax.crypto.interfaces.PBEKey;
import model.Brand;
import model.Category;

/**
 *
 * @author nguye
 */
public class BrandDAO extends DBContext {

    public BrandDAO() throws SQLException, ClassNotFoundException {
        super();
    }

    public ArrayList<Brand> GetAllBrand() {
        ArrayList<Brand> allBrand = new ArrayList<>();
        try {
            String query = "SELECT [brand_id]\n"
                    + "      ,[brand_name]\n"
                    + "  FROM [dbo].[Brand]";
            PreparedStatement stm = connection.prepareStatement(query);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Brand brand = new Brand();
                brand.setBrand_id(rs.getInt(1));
                brand.setBrand_name(rs.getString(2));
                allBrand.add(brand);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return allBrand;
    }

    public void DeleteBrand(int brand_id) {
        try {
            String query = "DELETE FROM [dbo].[Brand]\n"
                    + "      WHERE brand_id = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, brand_id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BrandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void CreateBrand(String nameBrand) {
        try {

            String query = "INSERT INTO [dbo].[Brand]\n"
                    + "           ([brand_name])\n"
                    + "     VALUES\n"
                    + "          (?)";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, nameBrand);
            stm.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public boolean CheckBrandByName(String brandname) {
        try {
            String query = "SELECT "
                    + "      [brand_name]\n"
                    + "  FROM [dbo].[Brand]\n"
                    + "  where [brand_name]=?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, brandname);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                if (rs.getString(1).toUpperCase().equals(brandname.toUpperCase())) {
                    return false;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(BrandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
    }

    public Brand GetBrandByID(String brandid) {
        Brand brand = new Brand();
        try {
            String query = "SELECT [brand_id]\n"
                    + "      ,[brand_name]\n"
                    + "  FROM [dbo].[Brand]\n"
                    + "  where [brand_id] = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, brandid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {

                brand.setBrand_id(rs.getInt(1));
                brand.setBrand_name(rs.getString(2));
            }
        } catch (SQLException ex) {
            Logger.getLogger(BrandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return brand;
    }

    public void UpdateBrand(String brandid, String brandname) {
        try {
            String query = "UPDATE [dbo].[Brand]\n"
                    + "   SET [brand_name] = ?\n"
                    + "	where [brand_id] = ?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setString(1, brandname);
            stm.setString(2, brandid);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BrandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Brand getBrandById(int BrandID) {
        Brand brand = new Brand();
        try {
            String query = "SELECT  [brand_id]\n"
                    + "      ,[brand_name]\n"
                    + "  FROM [motobike].[dbo].[Brand]\n"
                    + "  where [brand_id]=?";
            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, BrandID);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                brand.setBrand_id(rs.getInt(1));
                brand.setBrand_name(rs.getString(2));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return brand;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        BrandDAO dao = new BrandDAO();
        System.out.println(dao.GetBrandByID("18").toString());
    }
}
