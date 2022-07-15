public class ADR_Llamada {
    public Integer tiempoTotal(Time tmTiempoInicial, Time tmTiempoFinal) {
        Integer intResultado;
        
        if(tmTiempoFinal.hour() == tmTiempoInicial.hour()){
            intResultado = tmTiempoFinal.minute() - tmTiempoInicial.minute();
        }
        else{
            intResultado = ((tmTiempoFinal.hour() - tmTiempoInicial.hour()) * 60) - 60;
            if(tmTiempoFinal.minute() > tmTiempoInicial.minute()){
                intResultado += 60 + (tmTiempoFinal.minute() - tmTiempoInicial.minute());
            }
            else {
                intResultado += 60 - (tmTiempoInicial.minute() - tmTiempoFinal.minute());
            }
        }
        
        return intResultado;
    }
    
    public Double calculaCostoLlamada(Integer intMinutos) {
        Double dobResultado;
        if(intMinutos <= 90) dobResultado = intMinutos * 1.5;
        else if(intMinutos > 90 && intMinutos <= 180) dobResultado = intMinutos * 1.0;
        else dobResultado = intMinutos * 0.8;
        
        return dobResultado;
    }
    
    public Double descuentoLlamada(Double dobCosto) {
        Double dobCostoFinal;
        if(dobCosto > 150.0) dobCostoFinal = dobCosto * 0.88;
        else dobCostoFinal = dobCosto;
        
        return dobCostoFinal;
    }
}