/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fabricaServlet.pieza;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import src.mimuebleria.Conexion;
import java.sql.*;

/**
 *
 * @author Luis
 */
@WebServlet(name = "piezaServlet", urlPatterns = {"/piezaServlet"})
public class piezaServlet extends HttpServlet {

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
            out.println("<title>Servlet pieza</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet pieza at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet pieza</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet pieza at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //puebas en terminal
        System.out.print(request.getParameter("id_tp"));
        System.out.print(request.getParameter("nombre"));
        System.out.print(request.getParameter("precio"));
        System.out.print(request.getParameter("stock"));

        try {

            PreparedStatement statement = Conexion.conexion().prepareStatement("INSERT INTO pieza(id_tp, nombre, costo, stock) VALUES (?,?,?,?)");
            statement.setInt(1, Integer.parseInt(request.getParameter("id_tp")));
            statement.setString(2, request.getParameter("nombre"));
            statement.setFloat(3, Float.parseFloat(request.getParameter("precio")));
            statement.setInt(4, Integer.parseInt(request.getParameter("stock")));
            boolean resp = statement.execute();
            System.out.print(resp);
            response.sendRedirect("mensaje/guardado.jsp");
        } catch (Exception e) {
            System.out.print(e.getMessage());
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
