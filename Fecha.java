package grupo;
import java.time.LocalDate;
import java.time.LocalTime;

public class Fecha {
public LocalDate Inicio_Pedido;
public LocalDate Fin_Pedido;
public int CantDias;
public int nroFactura;
   
    public Fecha(int ID, LocalDate Inicio_Pedido, LocalDate Fin_Pedido){
        this.Fin_Pedido = Fin_Pedido;
        this.Inicio_Pedido = LocalDate.now();
        Factura.nro++;
        this.nroFactura = Factura.nro;
    }
    public Fecha(int ID, int dias){
        this.CantDias = dias;
        this.Inicio_Pedido = LocalDate.now();
        Factura.nro++;
        this.nroFactura = Factura.nro;
    }
    //public int calcularcantdias//
    //public void calcularfechafin//
}
