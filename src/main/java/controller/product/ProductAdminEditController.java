/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.product;

import dao.CategoryDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Color;
import model.Product;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ProductAdminEditController", urlPatterns = {"/admin/products/edit"})
public class ProductAdminEditController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductAdminEditController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductAdminEditController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    protected void processRequestGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException, NullPointerException {

        String id = !request.getParameter("id").isEmpty() ? request.getParameter("id") : "3";
        
        ProductDAO pDao = new ProductDAO();
        CategoryDAO cDao = new CategoryDAO();
        
        Product product = pDao.getSpecificProductById(Integer.parseInt(id));
        ArrayList<Category> allCategories = cDao.getAllCategories();
        
        request.setAttribute("product", product);
        request.setAttribute("allCategories", allCategories);
        request.getRequestDispatcher("/ProductAdminEdit.jsp").forward(request, response);
    }
    
    protected void processRequestPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException, SQLException, ClassNotFoundException, NullPointerException, ParseException {
        
        String id = !request.getParameter("id").isEmpty() ? request.getParameter("id") : "";
        
        String name = !request.getParameter("name").isEmpty() ? request.getParameter("name") : "";
        String brand = !request.getParameter("brand").isEmpty() ? request.getParameter("brand") : "";
        String description = !request.getParameter("description").isEmpty() ? request.getParameter("description") : "";
        String image = !request.getParameter("image").isEmpty() ? request.getParameter("image") : "";
        String categoryId = !request.getParameter("category").isEmpty() ? request.getParameter("category") : "";
        String unitPrice = !request.getParameter("unitPrice").isEmpty() ? request.getParameter("unitPrice") : "0";
        String unitInStock = !request.getParameter("unitInStock").isEmpty() ? request.getParameter("unitInStock") : "0";
        String dateIn = !request.getParameter("dateIn").isEmpty() ? request.getParameter("dateIn") : "0";
        
        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Date date = formatter.parse(dateIn);

        CategoryDAO cDao = new CategoryDAO();
        ProductDAO pDao = new ProductDAO();
        Category category = cDao.getCategoryById(Integer.parseInt(categoryId));
        ArrayList<Color> colors = new ArrayList<>();
        Product product = new Product(
                1000, name, brand, image, description, category, colors, 
                Float.parseFloat(unitPrice), Integer.parseInt(unitInStock), date, false
        );
        try {
            pDao.editProduct(product, Integer.parseInt(id));
        } catch (Exception e) {
            System.out.println(e);
        }
        
        response.sendRedirect("../../admin/products?categoryId=0");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequestGet(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProductAdminEditController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductAdminEditController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NullPointerException ex) {
            Logger.getLogger(ProductAdminEditController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequestPost(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProductAdminEditController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductAdminEditController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NullPointerException ex) {
            Logger.getLogger(ProductAdminEditController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(ProductAdminEditController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
