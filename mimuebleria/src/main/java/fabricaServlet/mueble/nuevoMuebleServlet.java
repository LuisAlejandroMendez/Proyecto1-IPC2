/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fabricaServlet.mueble;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;
import src.mimuebleria.Conexion;
import java.util.Date;

/**
 *
 * @author Luis
 */
public class nuevoMuebleServlet extends HttpServlet {

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
            out.println("<title>Servlet nuevoMuebleServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet nuevoMuebleServlet at " + request.getContextPath() + "</h1>");
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
            PreparedStatement statement = Conexion.conexion().prepareStatement("SELECT ID_P, NOMBRE FROM PIEZA");
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
        processRequest(request, response);
        Date fecha = new Date();
        int año = fecha.getYear() + 1900;
        String fechaHoy = año + "-" + fecha.getMonth() + "-" + fecha.getDay();
        try {
            PreparedStatement statement = Conexion.conexion().prepareStatement("INSERT "
                    + "INTO ENSAMBLE_MUEBLE(ID_U, NOMBRE, FECHA,PRECIO) VALUES (?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
            statement.setInt(1, 1);
            statement.setString(2, request.getParameter("nombre"));
            statement.setString(3, fechaHoy);
            statement.setInt(4, 0);
            boolean resp = statement.execute();
            ResultSet generatedKeys = statement.getGeneratedKeys();
            int idGenerado = 0;
            if (generatedKeys.next()) {
                idGenerado = generatedKeys.getInt(1);
            }
            String p = request.getParameter("piezas");
            int numero = 0;
            System.out.print("tamano " + p.length());
            for (int i = 0; i < p.length(); i++) {
                if (p.charAt(i) != ',') {
                    numero++;
                }
            }
            char[] piezas = new char[numero];
            System.out.println("tamano arreglo " + piezas.length);
            int contador = 0;
            for (int i = 0; i < p.length(); i++) {
                if (p.charAt(i) != ',') {
                    System.out.print("rec " + p.charAt(i));
                    piezas[contador] = p.charAt(i);
                    contador++;
                }
            }

            for (int i = 0; i < piezas.length; i++) {
                System.out.println(i + " : " + idGenerado + " : " + piezas[i]);
                PreparedStatement statement2 = Conexion.conexion().prepareStatement("INSERT "
                        + "INTO PIEZA_ENSAMBLE(ID_EM, ID_P) VALUES (?,?)");
                statement2.setInt(1, idGenerado);
                int temporal = Character.getNumericValue(piezas[i]);
                statement2.setInt(2, temporal);
                boolean ret = statement2.execute();
                System.out.println("Insertado: " + ret);
            }

//        System.out.print(idGenerado);
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
