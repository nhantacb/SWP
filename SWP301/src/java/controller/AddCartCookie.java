/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.Cart;
import model.Guest;
import model.Item;
import model.Product;
import model.User;

/**
 *
 * @author Dell
 */
@WebServlet(name = "AddCartCookie", urlPatterns = {"/addcartcookie"})
public class AddCartCookie extends HttpServlet {

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
            out.println("<title>Servlet AddCartCookie</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddCartCookie at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        DAO d = new DAO();
        List<Product> list = d.getAllProd();
        Cookie[] arr = request.getCookies();
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("acc");
        String txt = "";
        String cart = "cart" + u.getuId();
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals(cart)) {
                    txt += o.getValue();
                    o.setMaxAge(0);
                    response.addCookie(o);
                }
            }
        }

        String txt2 = "";
        String num = request.getParameter("quantity");
        String id = request.getParameter("product");
        String price = request.getParameter("price");
        String xd = request.getParameter("det");
        if (txt.isEmpty()) {
            txt = id + ":" + num + ":" + price;
        } else {
            Cart c = new Cart(txt);
            session.setAttribute("cart", c);
            session.setAttribute("size1", c.getItems().size());

            txt = c.cartToTxt(c);
            txt += "/" + id + ":" + num + ":" + price;

        }
        Cookie c = new Cookie(cart, txt);
        c.setMaxAge(2 * 24 * 60 * 60);
        response.addCookie(c);
        response.sendRedirect("detail?pid=" + id);//thay cai duoi
        //request.getRequestDispatcher("shop").forward(request, response);
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
