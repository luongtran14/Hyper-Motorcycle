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
import java.util.List;
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

        ColorDAO colorDao = new ColorDAO();
        ProductDAO pDao = new ProductDAO();
        CategoryDAO cDao = new CategoryDAO();
        BrandDAO bDao = new BrandDAO();

        Product product = pDao.getSpecificProductById(Integer.parseInt(id));
        ArrayList<Category> allCategories = cDao.getAllCategories();
        ArrayList<Color> allColors = colorDao.getAllColors();
        ArrayList<Color> colors = colorDao.getColorByProductId(product.getProductId());
        ArrayList<Brand> allBrand = bDao.GetAllBrand();
        List<Integer> currentColorIds = new ArrayList<Integer>();
        for (Color c : colors) {
            currentColorIds.add(c.getColorId());
        }

        request.setAttribute("product", product);
        request.setAttribute("currentColors", currentColorIds);
        request.setAttribute("allColors", allColors);
        request.setAttribute("allCategories", allCategories);
        request.setAttribute("allBrand", allBrand);
        request.getRequestDispatcher("/ProductAdminEdit.jsp").forward(request, response);
    }

    protected void processRequestPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException, NullPointerException, ParseException {

        String id = !request.getParameter("id").isEmpty() ? request.getParameter("id") : "";

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
                Integer.parseInt(id), name, brand, image, description, category, colors,
                Float.parseFloat(unitPrice), Integer.parseInt(unitInStock), date, false
        );
        try {
            pDao.editProduct(product, Integer.parseInt(id));
            colorDao.updateColorOfAProduct(product.getProductId(), colors);
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
