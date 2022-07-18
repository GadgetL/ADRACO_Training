/*************************************************************************************** 
* Name: ADR_Llamada
* Test: ADR_Llamada_Test
* Author: Valentín López Morales 
* Description: Required information to register Llamada
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| Conection with Account
*/ 
public class ADR_Llamada {
    /*
     * En la lista de registra las dos llamadas
     * lstLlamada[0]->Hora inicial
     * lstLlamada[1]->Minuto inicial
     * lstLlamada[2]->Hora final
     * lstLlamada[3]->Minuto final
     */
    
    /*
    * Method Name: tiempo_Total
    * Description: Calculate the total time of a call
    * Return Type: Integer
    * Parameters: List<Integer> lstLlamada
    */
    public Integer tiempo_Total(List<Integer> lstLlamada){
        Integer intMinutoTotal;
        system.debug(lstLlamada);
        //Validamos las horas y minutos.
        intMinutoTotal = validarHora(lstLlamada);
        system.debug('MinutoTotal: '+ intMinutoTotal);
        return intMinutoTotal;
    }
    
    /*
    * Method Name: calculaCostoLlamada
    * Description: Calculate the cost time of a call
    * Return Type: Double
    * Parameters: Integer intMinuto
    */
    public Double calculaCostoLlamada(Integer intMinuto){
        double dblCosto;
        if(intMinuto<=90){
            //Menor a 1 hora con 30 min.
            dblCosto = intMinuto * 1.50;
            system.debug('La llamda fue menor a 1 hora con 30 min');
        }else if(intMinuto>90 && intMinuto<=180){
            //Entre 1 hora con 31 min. y 3 horas.
            dblCosto = intMinuto * 1.00;
            system.debug('La llamda esta entre 1 hora con 31 min. y 3 horas');
        }else{
            //Mayor a 3 horas.
            dblCosto = intMinuto * 0.80;
            system.debug('La llamda fue mayor a 3 horas');
        }
        return dblCosto;
    }
    
    /*
    * Method Name: descuentoLlamada
    * Description: Calculate the discount for a call
    * Return Type: void
    * Parameters: double dblCosto
    */
    public void descuentoLlamada(double dblCosto){
        double dblDescuento;
        if(dblCosto>150){
            dblDescuento = dblCosto - (dblCosto * 0.12);
            System.debug('Su costo total es mayor a $150');
            System.debug('Felicidades tiene descuento');
            System.debug('Sin descuento: $'+ dblCosto);
            System.debug('Con descuento: $' + dblDescuento);
        }else{
            System.debug('Su costo total es menor a $150');
            System.debug('Lo sentimos no tiene descuento');
            System.debug('El pago es: $' + dblCosto);
        }
    }
    
    /*
    * Method Name: validarHora
    * Description: Validate that the hours are correct
    * Return Type: integer
    * Parameters: list<Integer> lstLlamada
    */
    public integer validarHora(list<Integer> lstLlamada){
        Integer intMinutoInicial;
        Integer intMinutoFinal;
        integer intMinutoTotal;
        
        if((lstLlamada[0]<24 && lstLlamada[2]<24) && (lstLlamada[1]<60 && lstLlamada[3]<60)){
            //Convertir horas a minutos
            intMinutoInicial = (lstLlamada[0]*60) + lstLlamada[1];
            system.debug('MinutoInicial: '+ intMinutoInicial);
            intMinutoFinal = (lstLlamada[2]*60) + lstLlamada[3];
            system.debug('MinutoFinal: '+ intMinutoFinal);
            //Obtener el minuto total
            if(intMinutoInicial > intMinutoFinal)
                intMinutoTotal = intMinutoInicial - intMinutoFinal;
            else
                intMinutoTotal = intMinutoFinal - intMinutoInicial;
        }
        else{
            System.debug('Error en los horarios.');
            System.debug('La hora a pasado de las 23 hrs o el minuto de los 59 min.');
            intMinutoTotal=0;
        }
        
        return intMinutoTotal;
    }
    
    /*
    * Method Name: sumaAB
    * Description: sum two decimal
    * Return Type: void
    * Parameters: Decimal decA, Decimal decB
    */
    public static void sumaAB(Decimal decA, Decimal decB){
        Decimal decSuma;
        decSuma = decA + decB;
        system.debug('Suma: '+decSuma);
    }
}