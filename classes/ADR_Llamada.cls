public class ADR_Llamada {
	/*Metodo Tiempo_total(): Se encargara de recibir el Tiempo inicial de la llamada (Hora y minutos) y 
	también el tiempo en que termina la misma (Hora y minutos),y  se encargara de regresar el tiempo totalen minutos.*/
    
    public Integer Tiempo_total (Integer inthoraInicial, Integer intMinutoInicial, Integer intHoraFinal, Integer intMinutoFinal){
        Integer intMinutoRestante, intHoraMinutos, intMinutosTotal;
        intMinutoRestante = intMinutoFinal - intMinutoInicial;
        intHoraMinutos=  (intHoraFinal- inthoraInicial) * 60;
        intMinutosTotal= intHoraMinutos + intMinutoRestante;
		
        return intMinutosTotal;
    }
    
    /*Metodo CalculaCostoLlamada(): Se encargara de recibir el tiempo en minutos, si el tiempo es menor a una hora
	  y media pagara a $1.50 el minuto, si el tiempo está entre una hora con 31 minutos hasta una 3 horas
	  pagara a $1.00 el minuto y si el tiempo está por encima de 3 horas pagara a $.80 centavos el minuto.
	  Regrese el costo de la llamada.*/
    
    public Decimal calculaCostoLlamada(Integer intMinutos){
        Decimal decCosto;
        if(intMinutos <= 90){
            decCosto= intMinutos * 1.50;
        }else if(intMinutos >= 91 && intMinutos <= 180){
     		decCosto= intMinutos * 1.00;       
        }else if(intMinutos >= 181){
            decCosto= intMinutos * 0.80;
        }
        return decCosto;
    }
    
    /*Metodo DescuentoLlamada(): Recibirá el costo de la llamada, si este está por encima de 150 pesos haga un
	descuento del 12%a la llamada y muestre el resultado.*/
    
    public void descuentoLlamada(Decimal decPrecio){
        Decimal decDescuento;
        if(decPrecio >= 150){
            decDescuento = decPrecio - (decPrecio * 0.12);
            System.debug('Precio llamada: $' + decPrecio + ' Precio Total con descuento: $' + decDescuento);
        }
    }
    
    public static void suma(Decimal a, Decimal b){
        Decimal decSuma;
        decSuma = a + b;
        System.debug(decSuma);
    }
}