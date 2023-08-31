
import java.io.Serializable;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.Time;

public class Eventos implements Serializable {

    String Evento, Tipo, Presupuesto, Fecha, Horario, ID_EVENTO;

    public Eventos(String Evento, String Horario, String Tipo, String Presupuesto, String Fecha, String ID_EVENTO) {
        this.Evento = Evento;
        this.Horario = Horario;
        this.Tipo = Tipo;
        this.Presupuesto = Presupuesto;
        this.Fecha = Fecha;
        this.ID_EVENTO = ID_EVENTO;
    }

    public int insertar(Conexion cnx) {
        try {
            String sql = "INSERT INTO evento VALUES(?,?,?,?,?,?)";
            PreparedStatement ps = cnx.con.prepareStatement(sql);
            ps.setString(1, Evento);
            ps.setString(2, Horario);
            ps.setString(3, Tipo);
            ps.setString(4, Presupuesto);
            ps.setString(5, Fecha);
            ps.setString(6, ID_EVENTO);

            int resp = ps.executeUpdate();
            return resp;

        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
            return 0;
        }
    }
    
    public int editar(Conexion cnx) {
        try {
            String sql = "UPDATE evento SET Evento = ?, Horario = ?, Tipo = ?, Presupuesto = ?, Fecha = ? WHERE ID_EVENTO = ?";
            PreparedStatement ps = cnx.con.prepareStatement(sql);
            ps.setString(1, Evento);
            ps.setString(2, Horario);
            ps.setString(3, Tipo);
            ps.setString(4, Presupuesto);
            ps.setString(5, Fecha);
            ps.setString(6, ID_EVENTO);

            int resp = ps.executeUpdate();
            return resp;

        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
            return 0;
        }
    }
}
