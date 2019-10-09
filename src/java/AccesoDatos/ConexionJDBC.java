package AccesoDatos;

import Modelo.Cliente;
import java.sql.*;
import java.util.ArrayList;

public class ConexionJDBC {

    private Connection con;

    private void abrirConexion() {
        try {
            String url = "jdbc:sqlserver://172.16.140.13;databasename=Licencias";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
            con = DriverManager.getConnection(url, "alumno1w1", "alumno1w1");
        } catch (Exception e) {
            System.out.println("Error en conexión ");
        }
    }

    private void cerrarConexion() {
        try {
            if(con != null && !con.isClosed())
                con.close();
        } catch (Exception e) {
            System.out.println("Error al cerrar conexión");
        }
    }
    
    public ArrayList<Cliente> obtenerClientes()
    {
        ArrayList<Cliente> lista = new ArrayList<Cliente>();
        try
        {
            abrirConexion();
            String sql = "select * from Cliente";
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next())
            {
                int id = rs.getInt("idCliente");
                String nombre = rs.getString("nombre");
                lista.add(new Cliente(id, nombre));
            }
            rs.close();
        }
        catch(Exception exc)
        {
            exc.printStackTrace();
        }
        finally
        {
            cerrarConexion();
        }
        
        return lista;
    }
    
    public boolean insertarCliente(Cliente c)
    {
        boolean inserto = false;
        try
        {
            abrirConexion();
            String sql = "insert into cliente (nombre) values (?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, c.getNombre());
            st.execute(sql);
            inserto = true;
        }
        catch(Exception exc)
        {
            exc.printStackTrace();
        }
        finally
        {
            cerrarConexion();
        }
        
        return inserto;
    }
}
