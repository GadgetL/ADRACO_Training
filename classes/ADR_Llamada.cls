public class ADR_Llamada {
    public integer TiempoTotal(integer intHora_Inicio, integer intMinuto_Inicio, integer intHora_Termina, integer intMinuto_Termina){
        if(intHora_Inicio==12&&intHora_Termina>=1){
            return intHora_Termina*60-intMinuto_Inicio+intMinuto_Termina;
        }else{
        	return (intHora_Termina-intHora_Inicio)*60-intMinuto_Inicio+intMinuto_Termina;   
        }
    }
    public Decimal CalculaCostoLlamada(integer intTiempo_Minutos){
        if(intTiempo_Minutos<=90){
            return intTiempo_Minutos+1.5;
        }else{
            if(intTiempo_Minutos>90&&intTiempo_Minutos<=180){
                return intTiempo_Minutos;
            }else{
                return intTiempo_Minutos*.8;
            }
        }
    }
    public void DescuentoLlamada(Decimal decCosto_Llamada){
        if(decCosto_Llamada>=150){
            System.debug('Costo de la llamada: '+(decCosto_Llamada*.88).setscale(2));
        }else{
            System.debug('Costo de la llamada: '+decCosto_Llamada);
        }
    }
    public static void Suma(Decimal decA, Decimal decB){
        Decimal decSuma;
        decSuma=decA+decB;
        System.debug(decSuma);
    }
}