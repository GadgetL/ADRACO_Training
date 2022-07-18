public class ADR_Llamada {
    public integer Tiempo_total(integer horaInicio, integer minutoInicio, integer horaFinal, integer minutoFinal){
        horaInicio= horaInicio*60;
        minutoInicio= minutoInicio+horaInicio;
        horaFinal= horaFinal*60;
        minutoFinal= minutoFinal+horaFinal;
        return minutoFinal-minutoInicio;
    }
    public Decimal CalculaCostoLlamada(Decimal tiempoMinutos){
        if(tiempoMinutos<90){
            tiempoMinutos=tiempoMinutos*1.50;
        }else if(tiempoMinutos>90 && tiempoMinutos<=180){
            tiempoMinutos=tiempoMinutos*1.00;
        }else if(tiempoMinutos>180){
            tiempoMinutos=tiempoMinutos*.80;
        }
        return tiempoMinutos;
    }
    public void DescuentoLlamada(Decimal costoLlamada){
        decimal descuento;
        if(costoLlamada>150){
            descuento=costoLlamada*.12;
            costoLlamada=costoLlamada-descuento;
            System.debug(costoLlamada);
        }else{
            System.debug(costoLlamada);
        }
    }
    public static void Suma(Decimal a,Decimal b){
        Decimal suma;
		suma= a+b;
        System.debug(suma);
    }
}