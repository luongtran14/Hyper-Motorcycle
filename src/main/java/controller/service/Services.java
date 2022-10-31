/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.service;

import dao.ServiceDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Service;
import model.User;

/**
 *
 * @author Admin
 */
@WebServlet(name = "Services", urlPatterns = {"/Services"})
public class Services extends HttpServlet {

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
            out.println("<title>Servlet Services</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Services at " + request.getContextPath() + "</h1>");
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
            User user = null;
            int page;
            boolean role = false;
            HttpSession session = request.getSession();
            try {
                page = Integer.parseInt(request.getParameter("page"));
            } catch (Exception e) {
                page = 1;
            }
            try {
                user = (User) session.getAttribute("acc");
                role = user.getIsAdmin();
            } catch (Exception e) {
                role = false;
            }
            ServiceDAO sdao = new ServiceDAO();
            int elements = 5;
            ArrayList<Service> list = sdao.getServicesByPage(page, elements);
            int numOfPage = sdao.getAllServices().size() % elements == 0 ? sdao.getAllServices().size() / elements : sdao.getAllServices().size() / elements + 1;

            request.setAttribute("list", list);
            request.setAttribute("page", page);
            request.setAttribute("numOfPage", numOfPage);
            request.setAttribute("role", role);
            request.setAttribute("currentPage", request.getServletPath().split("/")[1]);
            request.getRequestDispatcher("services.jsp").forward(request, response);

        } catch (Exception e) {
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
        processRequest(request, response);
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
