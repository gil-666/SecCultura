  
import java.io.Serializable;
import java.sql.PreparedStatement;

public class Eventos implements Serializable {

    String Evento, Horario, Tipo, Presupuesto, Fecha;

    public Eventos(String Evento, String Horario, String Tipo, String Presupuesto, String Fecha) {
        this.Evento = Evento;
        this.Horario = Horario;
        this.Tipo = Tipo;
        this.Presupuesto = Presupuesto;
        this.Fecha = Fecha;
    }

   

    public int insertar(Conexion cnx) {
        try {
            String sql = "INSERT INTO evento VALUES(?,?,?,?,?)";
            PreparedStatement ps = cnx.con.prepareStatement(sql);
            ps.setString(1, Evento);
            ps.setString(2, Horario);
            ps.setString(3, Tipo);
            ps.setString(4, Presupuesto);
            ps.setString(5, Fecha);

            
            int resp = ps.executeUpdate();
            return resp;
            
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
            return 0;
        }
    }
}
