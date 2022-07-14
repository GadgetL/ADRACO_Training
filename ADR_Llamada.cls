/************************************************************************************************************
 * Name: ADR_Llamada
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Calculation of the duration time, cost and discount of a call. Use of different functions.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 18-05-2022			 | v0.1				 | Creation of static function
*/
public class ADR_Llamada {
    public  integer Tiempo_total(time tmFinal, time tmInicial){
        integer intTotalHor=tmFinal.hour() - tmInicial.hour();
        integer intTotalMin=tmFinal.minute() - tmInicial.minute();
        if(intTotalHor > 0){
            intTotalMin = intTotalMin + (intTotalHor*60); 
            return intTotalMin;
        }else{
            return intTotalMin;
        }
    }
    
    public double CalculaCostoLlamada(integer intTiempoTotal){
        If(intTiempoTotal <= 90){
            return intTiempoTotal*1.5;
        }
        else if(intTiempoTotal > 90 && intTiempoTotal <= 180){
            return intTiempoTotal*1.0;
        }
        else if(intTiempoTotal > 180){
            return intTiempoTotal*.80;
        }
        else{
            return 0;
        }
    }
    
    public void  DescuentoLlamada(double dblCostoLlamada){
        if(dblCostoLlamada > 150 ){
            System.debug('\nCosto total de la llamada con descuento es: '+ dblCostoLlamada*0.12);
        }else{
            System.debug('\nCosto total : '+ dblCostoLlamada);
        }
    }
    
    public static void suma(decimal a, decimal b){
        decimal suma;
        suma = a+b;
        system.debug('resultado: '+suma);
    }

}
/*
ADR_Llamada prueba = new ADR_Llamada();
for(ADR_Llamada__c objLlama : [Select id, ADR_Tiempo_final__c, ADR_Tiempo_inicial__c From ADR_Llamada__c]){
    prueba.DescuentoLlamada(DescuentoLlamada(prueba.Tiempo_total(objLlama.ADR_Tiempo_final__c, objLlama.ADR_Tiempo_inicial__c)));
}
ADR_Llamada.suma(4.3, 5.3);
*/