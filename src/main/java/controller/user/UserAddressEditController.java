/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.user;

import dao.UserAddressDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.UserAddress;

/**
 *
 * @author Admin
 */
public class UserAddressEditController extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserAddressEditController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserAddressEditController at " + request.getContextPath() + "</h1>");
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
        String idRaw = request.getParameter("id");
        try {
            int id = Integer.parseInt(idRaw);
            UserAddress ua =  new UserAddressDAO().getById(id);
            request.setAttribute("data", ua);
            request.getRequestDispatcher("/UserAddressEdit.jsp").forward(request, response);
           
        } catch (Exception e) {
            response.sendRedirect("../address");
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
       String province = request.getParameter("province");
       String city = request.getParameter("city");
       String district = request.getParameter("district");
       String fullAddress = request.getParameter("fullAddress");
       String isMain = request.getParameter("isMain");
       String idRaw = request.getParameter("id");
       UserAddress ua = new UserAddress();
       ua.setProvince(province);
       ua.setDistrict(district);
       ua.setCity(city);
       ua.setId(Integer.parseInt(idRaw));
       ua.setIsMain(isMain == null ? 0 : 1);
       ua.setFullAddress(fullAddress);
       
        try {
            new UserAddressDAO().edit(ua);
        } catch (SQLException ex) {
            Logger.getLogger(UserAddressEditController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserAddressEditController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        request.setAttribute("data", ua);
        request.getRequestDispatcher("/UserAddressEdit.jsp").forward(request, response);
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
