public class ADR_Tienda {

    public static void informacionTienda(){
        for (ADR_Tienda__c objTienda:[SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inauguration__c FROM ADR_Tienda__c WHERE Name = 'Tienda Norte' OR Name = 'Tienda Sur']){
    		system.debug('Nombre:' +objTienda.name + '\nTipo: ' + objTienda.ADR_Type__c + '\nFecha Inauguración: ' + objTienda.ADR_Fecha_Inauguration__c);
		}
    }
    
    public static void informacionTienda(String strTienda){
    	ADR_Tienda__c objTienda = [SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inauguration__c FROM ADR_Tienda__c WHERE Name =: strTienda LIMIT 1];    
        system.debug('Nombre:' +objTienda.name + '\nTipo: ' + objTienda.ADR_Type__c + '\nFecha Inauguración: ' + objTienda.ADR_Fecha_Inauguration__c);
    }
    
    public static List<ADR_Tienda__c> informacionTiendas(){
        List<ADR_Tienda__c> lstTienda =[SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inauguration__c FROM ADR_Tienda__c WHERE Name = 'Tienda Norte' OR Name = 'Tienda Sur'];
        
        return lstTienda; 
    }
    
    public static String tipoTienda(String strTienda){
        ADR_Tienda__c objTienda = [SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inauguration__c FROM ADR_Tienda__c WHERE Name =: strTienda LIMIT 1];
        return objTienda.ADR_Type__c;
    }
    
    public static void mapaTienda(){
        //ADR_Tienda__c objTienda = [SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inauguration__c FROM ADR_Tienda__c LIMIT 1];    
        
        Map <ID, String> mapTienda = new Map<ID, String>();
        for (ADR_Tienda__c objTienda:[SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inauguration__c FROM ADR_Tienda__c])
        	mapTienda.put(objTienda.Id, objTienda.Name);
        
        system.debug(mapTienda);
    }
    
    @AuraEnabled
    public static List<ADR_Tienda__c> fetchTiendaRecords(){
        return [SELECT Id, Name, ADR_Type__c, ADR_Account__c, ADR_Fecha_Inauguration__c FROM ADR_Tienda__c ORDER BY CreatedDate DESC LIMIT 5];
    }
}