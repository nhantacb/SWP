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
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import model.Order;
import model.OrderDetail;
import model.ProductLog;
import model.User;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "DashContoller", urlPatterns = {"/dash"})
public class DashContoller extends HttpServlet {

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
            out.println("<title>Servlet DashContoller</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DashContoller at " + request.getContextPath() + "</h1>");
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
        DAO d = new DAO();

        HttpSession session = request.getSession();
            User a =(User) session.getAttribute("acc");
         if (session.getAttribute("acc") == null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);}
         else{
         String to  = request.getParameter("to");
            String from = request.getParameter("from");
        if(from != null){

            request.setAttribute("from", from);
        }
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat();
        simpleDateFormat.applyPattern("yyyy-MM-dd");
        String now = simpleDateFormat.format(date);
        request.setAttribute("now", now);
        if (from != null && to == null) {
            request.setAttribute("from", from);
            request.setAttribute("to", now);
        }
        if (from != null && to != null) {
            request.setAttribute("from", from);
            request.setAttribute("to", to);
        }
        LocalDate currentDate = LocalDate.now();
        int yearnow = currentDate.getYear();
        request.setAttribute("yearnow", yearnow);
        String year = request.getParameter("year");
        request.setAttribute("year", year);

        List<OrderDetail> listmost = d.listProductMost();
        request.setAttribute("listmost", listmost);

        List<Order> list = d.getAllOrder(from,now,to,"3");
        List<Order> list3 = d.getAllOrder(from,now,to,"3");
        List<ProductLog> list2 = d.getProductLogByDate(from, now,to);
       

        request.setAttribute("orderList", list);
        request.setAttribute("PlList", list2);
        request.setAttribute("order", list3);
        request.setAttribute("size", list2.size());
        request.setAttribute("stock", d.totalgetPriceStock(from, now, to));
        request.getRequestDispatcher("Dash.jsp").forward(request, response);
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
