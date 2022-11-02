/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.product;

import dao.BrandDAO;
import dao.CategoryDAO;
import dao.ColorDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Brand;
import model.Category;
import model.Color;
import model.Product;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ProductAdminCreateController", urlPatterns = {"/admin/products/create"})
public class ProductAdminCreateController extends HttpServlet {

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
            out.println("<title>Servlet ProductAdminCreateController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductAdminCreateController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
            ColorDAO colorDao = new ColorDAO();
            CategoryDAO cDao = new CategoryDAO();
            BrandDAO bDAO = new BrandDAO();

            ArrayList<Category> allCategories = cDao.getAllCategories();
            ArrayList<Color> allColors = colorDao.getAllColors();
            ArrayList<Brand> allBrand = bDAO.GetAllBrand();

            request.setAttribute("allCategories", allCategories);
            request.setAttribute("allColors", allColors);
            request.setAttribute("allBrand", allBrand);
            request.getRequestDispatcher("/ProductAdminCreate.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProductAdminCreateController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductAdminCreateController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NullPointerException ex) {
            Logger.getLogger(ProductAdminCreateController.class.getName()).log(Level.SEVERE, null, ex);
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
             String name = !request.getParameter("name").isEmpty() ? request.getParameter("name") : "";
        String brandId = !request.getParameter("brand").isEmpty() ? request.getParameter("brand") : "";
        String description = !request.getParameter("description").isEmpty() ? request.getParameter("description") : "";
        String image = !request.getParameter("image").isEmpty() ? request.getParameter("image") : "";
        String categoryId = !request.getParameter("category").isEmpty() ? request.getParameter("category") : "";
        String unitPrice = !request.getParameter("unitPrice").isEmpty() ? request.getParameter("unitPrice") : "0";
        String unitInStock = !request.getParameter("unitInStock").isEmpty() ? request.getParameter("unitInStock") : "0";
        String dateIn = !request.getParameter("dateIn").isEmpty() ? request.getParameter("dateIn") : "0";
        String[] color = request.getParameterValues("color");

        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Date date = formatter.parse(dateIn);

        ColorDAO colorDao = new ColorDAO();
        CategoryDAO cDao = new CategoryDAO();
        ProductDAO pDao = new ProductDAO();
        BrandDAO bDao = new BrandDAO();
        Category category = cDao.getCategoryById(Integer.parseInt(categoryId));
        Brand brand = bDao.GetBrandByID(brandId);
        ArrayList<Color> colors = new ArrayList<>();
        for (int i = 0; i < color.length; i++) {
            colors.add(colorDao.getColorByColorId(Integer.parseInt(color[i])));
        }
        Product product = new Product(
                1000, name, brand, image, description, category, colors,
                Float.parseFloat(unitPrice), Integer.parseInt(unitInStock), date, false
        );
        try {
            pDao.createProduct(product);
            for (Color c : colors) {
                colorDao.addColorToAProduct(product.getProductId(), c.getColorId());
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        response.sendRedirect("../../admin/products?categoryId=0");
        } catch (SQLException ex) {
            Logger.getLogger(ProductAdminCreateController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductAdminCreateController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NullPointerException ex) {
            Logger.getLogger(ProductAdminCreateController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(ProductAdminCreateController.class.getName()).log(Level.SEVERE, null, ex);
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
