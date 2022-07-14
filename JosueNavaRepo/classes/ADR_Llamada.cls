public class ADR_Llamada {
    Integer intMinutos;
	Decimal decCostoLlamada;
    
    //metodo para el tiempo total
    public Integer Tiempo_total(){
        for(VoiceCall objTiempoTotal:[SELECT CallerId, CallStartDateTime, CallEndDateTime, CallDurationInSeconds FROM VoiceCall]){ 
            Integer intHor = objTiempoTotal.CallDurationInSeconds/3600;
            intMinutos = (objTiempoTotal.CallDurationInSeconds-(3600*intHor))/60;
        }
        return intMinutos;
    }
    
    //metodo para calcular costo de llamada
    public Decimal CalcularCostoLlamada(Integer intMinutos){
        if(intMinutos<90){
            decCostoLlamada = 1.50;
        }else if(intMinutos==91 || intMinutos<=180){
             decCostoLlamada = 1.00;
        }else if(intMinutos>180){
            decCostoLlamada = 0.80;
        }
        return decCostoLlamada;
    }
    //metodo para generar descuento
    public void DescuentoLlamada(Decimal decCostoLlamada){
        final Decimal decDescuento=0.12;
        if(decCostoLlamada >150){
            decCostoLlamada -= decCostoLlamada*decDescuento;
        }
        System.debug('El costo con descuento es: '+decCostoLlamada);
    }
    
    public static void suma(Decimal decA, Decimal decB){
        Decimal decSuma;
        decSuma = decA + decB;
        System.debug('La suma es: '+decSuma);
    }
}