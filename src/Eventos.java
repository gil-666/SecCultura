  
import java.io.Serializable;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.Time;

public class Eventos implements Serializable {

    String Evento,  Tipo, Presupuesto, Fecha, Horario;
    
    

    public Eventos(String Evento, String Tipo, String Presupuesto, String Fecha, String Horario) {
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
       
            ps.setString(2, Tipo);
            ps.setString(3, Presupuesto);
            ps.setString(4, Fecha);
            ps.setString(5, Horario);

            
            int resp = ps.executeUpdate();
            return resp;
            
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
            return 0;
        }
    }
}
