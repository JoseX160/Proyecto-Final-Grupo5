package grupo;


public class Factura{

static int nro;
public int Cant_componentes;
public Fecha fecha;
public boolean Descuento;
public double Precio_Total;

    public Factura(int ID, String Cod_cliente ,int Cant_componentes ,Fecha fecha ,double Precio_Total){
        this.Cant_componentes = Cant_componentes;
        this.Precio_Total = Precio_Total;
    }
    public Factura(int ID, String Cod_cliente ,int Cant_componentes ,Fecha fecha ,boolean Descuento){
        this.Cant_componentes = Cant_componentes;
    }
    public boolean Descuento(int Cant_Compras){
        if ( Cant_Compras > 1){
            Precio_Total = Precio_Total - (Precio_Total * 0.5);
        }else{
            return false;
        }
    return Descuento;
    }
    public double CalcularPrecio(int precio){
        if(Cant_componentes > 1){
            precio ++;
            precio = (int) Precio_Total;
        }else{
            return precio;
        }
    return Precio_Total;    
    }
}
