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
import model.User;
import model.UserAddress;

/**
 *
 * @author Admin
 */
public class UserAddressAddController extends HttpServlet {

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
            out.println("<title>Servlet UserAddressAddController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserAddressAddController at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("/UserAddressAdd.jsp").forward(request, response);
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
        UserAddress ua = new UserAddress();
        ua.setProvince(province);
        ua.setDistrict(district);
        ua.setCity(city);
        ua.setIsMain(isMain == null ? 0 : 1);
        ua.setFullAddress(fullAddress);
        User logined = (User) request.getSession(false).getAttribute("acc");
        ua.setUserId(logined.getUserID());
        try {
            UserAddressDAO dao = new UserAddressDAO();
            if (ua.getIsMain() == 1) {
                UserAddress isMainUser = dao.getMainAddress(ua.getUserId());
                if (isMainUser != null) {
                    isMainUser.setIsMain(0);
                    dao.edit(isMainUser);
                }
            }
            dao.add(ua);
        } catch (SQLException ex) {
            Logger.getLogger(UserAddressEditController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserAddressEditController.class.getName()).log(Level.SEVERE, null, ex);
        }

        response.sendRedirect("../address");
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
