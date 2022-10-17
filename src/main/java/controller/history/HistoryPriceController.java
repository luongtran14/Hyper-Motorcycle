package controller.history;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import dao.HistoryPriceDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.HistoryPrice;

/**
 *
 * @author nguye
 */
@WebServlet(name = "HistoryPriceController", urlPatterns = {"/historyprice"})
public class HistoryPriceController extends HttpServlet {

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
            out.println("<title>Servlet NoteEditHistoryController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NoteEditHistoryController at " + request.getContextPath () + "</h1>");
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
            HistoryPriceDAO dao = new HistoryPriceDAO();
           List<HistoryPrice> list = dao.GetAllHistoryPrice();
           
            request.setAttribute("historylist", list);
            request.getRequestDispatcher("HistoryPrice.jsp").forward(request, response);
           
        } catch (SQLException ex) {
            Logger.getLogger(HistoryPriceController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(HistoryPriceController.class.getName()).log(Level.SEVERE, null, ex);
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
            String keyword = request.getParameter("keyword");
            String fromdate_raw = request.getParameter("fromdate");
            String todate_raw = request.getParameter("todate");
            Date from, to;
            from = ((fromdate_raw == null) || (fromdate_raw.equals("")))
                    ? null : Date.valueOf(fromdate_raw);
            to = ((todate_raw == null) || (todate_raw.equals("")))
                    ? null : Date.valueOf(todate_raw);
            HistoryPriceDAO dao = new HistoryPriceDAO();
            ArrayList<HistoryPrice> history = dao.search(keyword, from, to);
            request.setAttribute("historylist", history);
            request.getRequestDispatcher("HistoryPrice.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(HistoryPriceController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(HistoryPriceController.class.getName()).log(Level.SEVERE, null, ex);
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
