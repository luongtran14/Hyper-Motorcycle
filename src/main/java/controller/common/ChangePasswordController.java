/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.common;

import dao.AccoutDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import model.User;

/**
 *
 * @author nguye
 */
@WebServlet(name="ChangePassword", urlPatterns={"/changepassword"})
public class ChangePasswordController extends HttpServlet {

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
        HttpSession session = request.getSession();
        if (session.getAttribute("acc") == null) {
            response.sendRedirect("index.html");
        } else {
            request.getRequestDispatcher("changepassword.jsp").forward(request, response);
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
            String oldpass = request.getParameter("oldPass");
            String newPass = request.getParameter("newPass");
            String rePass = request.getParameter("rePass");
            HttpSession session = request.getSession();
            User u = (User) session.getAttribute("acc");
            if (!oldpass.equals(u.getPassword())) {
                request.setAttribute("mess", "Oldpassword is not match!");
                request.getRequestDispatcher("changepassword.jsp").forward(request, response);
            } else if (!newPass.equals(rePass)) {
                request.setAttribute("mess", "New password is not match with re-password!");
                request.getRequestDispatcher("changepassword.jsp").forward(request, response);
            } else {
                AccoutDao dao = new AccoutDao();
                dao.changePassword(u.getUserID(), newPass);
                request.setAttribute("mess", "Password have been updated!");
                request.getRequestDispatcher("changepassword.jsp").forward(request, response);
            }
        } catch(Exception e) {
            Logger.getLogger("").log(Level.SEVERE, null, e);
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
