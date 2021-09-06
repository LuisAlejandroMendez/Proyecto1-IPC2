/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fabricaServlet.pieza;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.pieza;
import src.mimuebleria.Conexion;
import org.json.*;

/**
 *
 * @author Luis
 */
public class actualizarPiezaServlet extends HttpServlet {

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
            out.println("<title>Servlet actualizarPiezaServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet actualizarPiezaServlet at " + request.getContextPath() + "</h1>");
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
            PreparedStatement statement = Conexion.conexion().prepareStatement("SELECT ID_P,NOMBRE, COSTO, STOCK FROM PIEZA");
            boolean resp = statement.execute();
            ResultSet resultado = (ResultSet) statement.getResultSet();
            PrintWriter out = response.getWriter();//obtenemos un flujo de salida del objeto respuesta
            out.write(conversion(resultado).toString());
        } catch (Exception e) {
            System.out.print(e.getMessage());
        }
    }

//    convierte un resultSet en un Array de Objetos
    public JSONArray conversion(ResultSet rs) {
        JSONArray json = new JSONArray();
        try {
            ResultSetMetaData rsmd = rs.getMetaData();
            while (rs.next()) {
                int numColumns = rsmd.getColumnCount();
                JSONObject obj = new JSONObject();
                for (int i = 1; i <= numColumns; i++) {
                    String column_name = rsmd.getColumnName(i);
                    obj.put(column_name, rs.getObject(column_name));
                }
                json.put(obj);
            }
            return json;
        } catch (Exception e) {
            System.out.print(e.getMessage());
            return null;
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
        System.out.print(request.getParameter("nombre"));
        System.out.print(request.getParameter("precio"));
        System.out.print(request.getParameter("stock"));
        try {
            PreparedStatement statement = Conexion.conexion().prepareStatement("UPDATE PIEZA  SET NOMBRE=?, COSTO=?, STOCK=? WHERE ID_P=?");
            statement.setString(1, request.getParameter("nombre"));
            statement.setFloat(2, Float.parseFloat(request.getParameter("precio")));
            statement.setInt(3, Integer.parseInt(request.getParameter("stock")));
            statement.setInt(4, Integer.parseInt(request.getParameter("id_p")));
            int resp = statement.executeUpdate();
            System.out.print("mysql: " + resp);
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
