public class ADR_Tienda {

    public void informacionTienda(){     
        for(ADR_Tienda__c objTienda : [SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inauguracion__c FROM ADR_Tienda__c WHERE ADR_Type__c = 'Mayoreo' OR ADR_Type__c = 'Menudeo'])
            system.debug('\nNombre: ' + objTienda.Name +
                '\nTipo: ' + objTienda.ADR_Type__c +
                '\nFecha de inauguracion: ' + objTienda.ADR_Fecha_Inauguracion__c);
    }
    
    public void informacionTienda(string strTienda){
        ADR_Tienda__c objTienda = [SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inauguracion__c FROM ADR_Tienda__c WHERE Name = :strTienda LIMIT 1];
        system.debug('\nNombre: ' + objTienda.Name +
                '\nTipo: ' + objTienda.ADR_Type__c +
                '\nFecha de inauguracion: ' + objTienda.ADR_Fecha_Inauguracion__c);
    }
    
    public List<ADR_Tienda__c> informacionTiendas(){
        List<ADR_Tienda__c> lstTiendas = [SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inauguracion__c FROM ADR_Tienda__c];
        return lstTiendas;
    }
    
    public string tipoTienda(string strTienda){
        ADR_Tienda__c objTienda = [SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inauguracion__c FROM ADR_Tienda__c WHERE Name = :strTienda LIMIT 1];
        return objTienda.ADR_Type__c;
    }
    
    public void generarMapa(){
        Map<ID, string> mapTiendas = new Map<ID, string>();
        for(ADR_Tienda__c objTienda : [SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inauguracion__c FROM ADR_Tienda__c])
            mapTiendas.put(objTienda.Id, objTienda.Name);
        system.debug(mapTiendas);
    }
}