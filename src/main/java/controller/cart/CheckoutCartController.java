/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.cart;

import dao.CartDAO;
import dao.CartItemDAO;
import dao.UserAddressDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.User;
import model.UserAddress;

/**
 *
 * @author Admin
 */
public class CheckoutCartController extends HttpServlet {

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
        HttpSession ss = request.getSession();
        User user = (User) ss.getAttribute("acc");
        try {
            List<UserAddress> address = new UserAddressDAO().getAll(user.getUserID());
            if(address == null || address.isEmpty()){
            
            }
            request.setAttribute("userAddress", address);
            System.out.println(address.get(0).getFullAddress());
            request.getRequestDispatcher("/checkout.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(CheckoutCartController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CheckoutCartController.class.getName()).log(Level.SEVERE, null, ex);
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
            String address = request.getParameter("address");
            String phoneNumber = request.getParameter("phoneNumber");
            Cart cart = (Cart) request.getSession().getAttribute(Cart.CART_SESSION_VAR);
            cart.setShipAddress(address);
            cart.setPhoneNumber(phoneNumber);
            Cart newCart = new CartDAO().insert(cart);
            new CartItemDAO().insert(newCart.getProducts(), newCart.getId());
            request.getSession().removeAttribute(Cart.CART_SESSION_VAR);
        } catch (SQLException ex) {
            Logger.getLogger(CheckoutCartController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CheckoutCartController.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect(request.getContextPath() + "/home");

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
