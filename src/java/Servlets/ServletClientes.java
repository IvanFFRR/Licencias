
package Servlets;

import AccesoDatos.ConexionJDBC;
import Modelo.Cliente;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ServletClientes", urlPatterns = {"/Clientes"})
public class ServletClientes extends HttpServlet {
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
        ConexionJDBC con = new ConexionJDBC();
        ArrayList<Cliente> clientes = con.obtenerClientes();
        request.setAttribute("listaClientes", clientes);
        String modo = request.getParameter("modo");
        RequestDispatcher rd = getServletContext().getRequestDispatcher(modo != null && modo.equals("lista") ? "/listadoClientes.jsp" : "/formClientes.jsp");
        rd.forward(request, response);
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
        String nombre = request.getParameter("txtNombre");
        Cliente c = new Cliente();
        c.setNombre(nombre);
        ConexionJDBC con = new ConexionJDBC();
        con.insertarCliente(c);
        
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
