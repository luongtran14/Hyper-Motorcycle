/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import controller.service.Services;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Service;

/**
 *
 * @author Admin
 */
public class ServiceDAO extends DBContext {

    public ServiceDAO() throws SQLException, ClassNotFoundException {
        super();
    }

    public ArrayList<Service> getAllServices() {
        ArrayList<Service> list = new ArrayList<>();
        try {
            String query = "Select * from services";
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service(
                        rs.getInt("services_id"),
                        rs.getInt("user_id"),
                        rs.getString("service_name"),
                        rs.getString("description"),
                        rs.getFloat("price"),
                        rs.getString("time")
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Service> getServicesByPage(int page, int elements) {
        ArrayList<Service> list = new ArrayList<>();
        try {
            int start = page * elements - elements;
            String query = "SELECT * FROM Services\n"
                    + "order by services_id asc\n"
                    + "OFFSET ? ROWS \n"
                    + "FETCH NEXT ? ROWS ONLY;";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, start);
            ps.setInt(2, elements);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service(
                        rs.getInt("services_id"),
                        rs.getInt("user_id"),
                        rs.getString("service_name"),
                        rs.getString("description"),
                        rs.getFloat("price"),
                        rs.getString("time")
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void updateService(int serviceID, int userID, String serviceName, String desc, float price, String time) {

        try {
            String query = "update Services set user_id = ? , service_name = ? , description = ? , price = ? , time = ? where services_id = ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, userID);
            ps.setString(2, serviceName);
            ps.setString(3, desc);
            ps.setFloat(4, price);
            ps.setString(5, time);
            ps.setInt(6, serviceID);
            ps.execute();
        } catch (Exception e) {
        }
    }

    public void addService(int userID, String serviceName, String desc, float price, String time) {

        try {
            String query = "INSERT INTO Services values( ? , ? , ? , ? , ? )";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, userID);
            ps.setString(2, serviceName);
            ps.setString(3, desc);
            ps.setFloat(4, price);
            ps.setString(5, time);
            ps.execute();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        ServiceDAO sdao = new ServiceDAO();
        System.out.println(sdao.getService(2));
    }

    public ArrayList<Service> getServicesByPageAndSortBy(int page, int elements, String sort) {
        ArrayList<Service> list = new ArrayList<>();
        try {
            int start = page * elements - elements;
            String query = "Select * from services " + new ServiceDAO().sortByAttribute(sort)
                    + " OFFSET ? ROWS \n"
                    + "FETCH NEXT ? ROWS ONLY;";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, start);
            ps.setInt(2, elements);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service(
                        rs.getInt("services_id"),
                        rs.getInt("user_id"),
                        rs.getString("service_name"),
                        rs.getString("description"),
                        rs.getFloat("price"),
                        rs.getString("time")
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public String sortByAttribute(String attribute) {
        switch (attribute) {
            case "name":
                return "order by service_name";
            case "id":
                return "order by service_id";
            //can sort gi thi dien them vao
            case "":
                return " order by service_id ";
        }
        return "";
    }

    public ArrayList<Service> getSearchServices(String search) {
        ArrayList<Service> list = new ArrayList<>();
        try {
            String query = "Select * from services where service_name like '%" + search + "%'";
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service(
                        rs.getInt("services_id"),
                        rs.getInt("user_id"),
                        rs.getString("service_name"),
                        rs.getString("description"),
                        rs.getFloat("price"),
                        rs.getString("time")
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void deleteService(int serviceId) {
        try {
            String query = "delete Services where services_id = ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, serviceId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Service getService(int serviceID) {
        try {
            String query = "Select * from services where services_id = ? ";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1 , serviceID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
               return new Service(
                        rs.getInt("services_id"),
                        rs.getInt("user_id"),
                        rs.getString("service_name"),
                        rs.getString("description"),
                        rs.getFloat("price"),
                        rs.getString("time")
                );
            }
        } catch (Exception e) {
        }
        return null;
    }
}
