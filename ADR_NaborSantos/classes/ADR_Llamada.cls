public class ADR_Llamada {
    public integer tiempoTotal(string strTiempInicial, string strTiempFinal){
        Integer intHoraInicial = Integer.valueOf(strTiempInicial.substring(0,2));
        Integer intMinutoInicial = Integer.valueOf(strTiempInicial.substring(3));
        Integer intHoraFinal = Integer.valueOf(strTiempFinal.Substring(0,2));
        Integer intMinutoFinal = Integer.valueOf(strTiempFinal.Substring(3));
      	
        Integer intHoraResultado = intHoraFinal - intHoraInicial;
        Integer intMinutoResultado = intMinutoFinal - intMinutoInicial;
        
        if(intMinutoResultado < 0){
            intMinutoResultado += 60;
            intHoraResultado -= 1;
        }
        
        integer intHora = (intHoraResultado * 60) + intMinutoResultado;
        return intHora;
    }    
    
    public decimal calculaCostoLlamada(Integer intMinutos){
        decimal decTotal = 0;
        if(intMinutos<90){
            decTotal = intMinutos * 1.50;
        }
        else if(intMinutos>90 && intMinutos < 180){
            decTotal = intMinutos * 1.0;
        }
        else if(intMinutos>181){
            decTotal = intMinutos * 0.80;
        }
        
        return decTotal.setScale(2, RoundingMode.CEILING);
    }
    
    public decimal descuentoLlamada(decimal decCostoLlamada){
        decimal decCostoDesc = 0;
        if(decCostoLlamada > 150){
            decCostoDesc = decCostoLlamada * 0.12;
        }
        
        decCostoDesc = decCostoLlamada - decCostoDesc;
        return decCostoDesc.setScale(2, RoundingMode.CEILING);
    }
}