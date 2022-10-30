/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.blog;

import dao.BlogDAO;
import dao.RateDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Blog;
import model.Comment;
import model.User;

/**
 *
 * @author huyen
 */
@WebServlet(name = "AddRate", urlPatterns = {"/addrate"})
public class AddRate extends HttpServlet {

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
            String id = request.getParameter("bid");
            //String date = request.getParameter("crd");
            BlogDAO dao = new BlogDAO();
            Blog b = dao.getBlogByID(id);
            List<Comment> list = dao.getCommentByBID(id);
//            CommentDAO d = new CommentDAO();
//            for (Comment a : list) {
//                String c = Integer.toString(a.getCommentID());
//            List<ReplyComment> lr = d.getReplyCommentByCID(c);
//            request.setAttribute("Reply", lr);
//        }

            HttpServletRequest req = (HttpServletRequest) request;
            User u = (User) req.getSession().getAttribute("acc");
            //Blog da = (Blog) req.getSession().getAttribute("da");
            // Date date = da.getCreatedDate();
            Date date = b.getCreatedDate();
            String dat = date.toString();
            // int bb = dao.getBlogBefore(dat).getBlogID();
            Blog ba = dao.getBlogAfter(dat);
            Blog bb = dao.getBlogBefore(dat);
            if ((ba == null)) {
                ba = dao.getBlogByID(id);

                //  response.sendRedirect("login");
            }

            if (bb == null) {
                bb = dao.getBlogByID(id);
            }
//            String x = String.valueOf(b.getCategoryID());
//            List<Products> list = dao.getProductByCID(x);
            // Products last = dao.getLast();

            request.setAttribute("user", u);
            request.setAttribute("Detail", b);
            request.setAttribute("Comment", list);

            request.setAttribute("Before", bb);
            request.setAttribute("After", ba);
//            request.setAttribute("Products", list);
//              request.setAttribute("last", last);
            //request.getRequestDispatcher("blogDetail.jsp").forward(request, response);
            out.println(ba);
            //      out.print(dat);
        } catch (SQLException ex) {
            Logger.getLogger(BlogDetailController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BlogDetailController.class.getName()).log(Level.SEVERE, null, ex);
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
        //  processRequest(request, response);
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
        HttpServletRequest req = (HttpServletRequest) request;
        try (PrintWriter out = response.getWriter()) {
            User u = (User) req.getSession().getAttribute("acc");
            String id = request.getParameter("bid");
            String uid = Integer.toString(u.getUserID());
            String rate = request.getParameter("rateStar");

            RateDAO r = new RateDAO();
            if (!rate.equals("")) {
                if (r.checkRateExist(id, uid)) {
                    if (r.checkUpdateRateExist(id, uid)) {
                        request.setAttribute("mess", "You cann't rate three time");
                        request.getRequestDispatcher("blogdetail").forward(request, response);
                    } else {
                        r.updateRate(id, uid, rate);

                    }
                } else {
                    r.addRate(id, uid, rate);
                }
            }

            request.getRequestDispatcher("blog").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AddRate.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddRate.class.getName()).log(Level.SEVERE, null, ex);
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
