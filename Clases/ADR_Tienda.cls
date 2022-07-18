public class ADR_Tienda {
    public static void informacionTienda(){
        for(ADR_Tienda__c objTienda : [SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inaguracion__c FROM ADR_Tienda__c WHERE Name = 'Tienda Sur' OR Name = 'Tienda Norte']){      
			system.debug('\nName: ' + objTienda.Name + '\n'+ 'Type: ' + objTienda.ADR_Type__c + '\n' + 'Fecha de Inaguración: ' + objTienda.ADR_Fecha_Inaguracion__c); 
    	}
    }
    
    public static void informacionTienda(string strTienda){
		ADR_Tienda__c objTienda = [SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inaguracion__c FROM ADR_Tienda__c WHERE Name = :strTienda LIMIT 1];
 		system.debug('\nName: ' + objTienda.Name + '\n'+ 'Type: ' + objTienda.ADR_Type__c + '\n' + 'Fecha de Inaguración: ' + objTienda.ADR_Fecha_Inaguracion__c);
    }
    
    public static List <ADR_Tienda__c> informacionTiendas(){
        list <ADR_Tienda__c> lstTienda = [SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inaguracion__c FROM ADR_Tienda__c WHERE Name = 'Tienda Sur' OR Name = 'Tienda Norte'];
        return lstTienda;
    }
    
    public static string tipoTienda(string srtTienda){
		ADR_Tienda__c objTienda = [SELECT ADR_Type__c FROM ADR_Tienda__c WHERE Name = :srtTienda LIMIT 1];
        return objTienda.ADR_Type__c;
    }
    
    public static void getMapTienda(){
		Map<Id, String> mapTienda = new Map<Id, String>();
        for(ADR_Tienda__c objTienda : [SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inaguracion__c FROM ADR_Tienda__c]){      
			mapTienda.put(objTienda.Id, objTienda.Name);
        }
		system.debug('mapTienda-->' + mapTienda);
    }
    
    
}