public class ADR_Llamada {

    
    public Integer Tiempo_total(Integer inicioHora, Integer inicioMinuto , Integer finHora,Integer finMinuto){
        
        Integer inicioMinutos = (inicioHora * 60) + inicioMinuto;
        Integer finMinutos = (finHora*60) + finMinuto;
        Integer totalminutos = finMinutos-inicioMinutos;   
        return totalminutos;
   
    }
    public Double CalculaCostoLlamada(Integer minutos){
        Double costoLlamada = 0;
        IF(minutos<=90){
           costoLlamada = minutos* 1.50;
        }ELSE IF (minutos>=91 && minutos<=180){
             costoLlamada = minutos* 1.00;
        }ELSE IF (minutos>=181){
             costoLlamada = minutos* 0.80;
        }
        
        return costoLlamada;
        
    }
    
    public void DescuentoLlamada(Double costoLlamada){
        Double descuentoLlamada = 12;
        IF(150<costoLlamada){
            descuentoLlamada = (costoLlamada/100)*descuentoLlamada;
            Double nuevocosto = costoLlamada - descuentoLlamada;
            System.debug('Descuento llamada: ' + descuentoLlamada);
            System.debug('Nuevo costo: ' + nuevocosto);
          
        }
    
    }
    
    public static void suma(Decimal a,Decimal b){
        Decimal suma = a+b;
        System.debug('Suma' + suma);
    }
    
}