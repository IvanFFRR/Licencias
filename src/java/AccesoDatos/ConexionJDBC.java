package AccesoDatos;

import Modelo.Cliente;
import Modelo.Venta;
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
    
    public ArrayList<Venta> obtenerVentas() {
        ArrayList<Venta> lista = new ArrayList<>();
        String sql = "SELECT *, c.nombre FROM Venta v, Clinte c WHERE c.id = v.idCliente";
        abrirConexion();
        
        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()) {
                int id = rs.getInt(1);
                String desde = rs.getString(2);
                String hasta = rs.getString(3);
                int idCliente = rs.getInt(4);
                int cantidad = rs.getInt(5);
                int mes = rs.getInt(6);
                int anio = rs.getInt(7);
                String nombre = rs.getString(8);
                
                lista.add(new Venta(id, desde, hasta, new Cliente(idCliente, nombre), cantidad, mes, anio));
                
            }
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            cerrarConexion();
        }
        return lista;
    }
    
    public boolean insertarVenta(Venta v) {
        boolean inserto = false;
        String sql = "INSERT INTO VENTA VALUES (?, ?, ?, ?, ?, ?, ?)"; /*desde, hasta, idCliente, cantidad, mes, anio*/
        abrirConexion(); 
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, v.getDesde());
            ps.setString(2, v.getHasta());
            ps.setInt(3, v.getCliente().getId());
            ps.setInt(4, v.getCantidad());
            ps.setInt(5, v.getMes());
            ps.setInt(6, v.getAnio());
            ps.execute();
            
            inserto = true;           
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            cerrarConexion();
        }
        return inserto;
    }
}
