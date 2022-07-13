public class ADR_Tienda {
    public static void InformacionTienda(){
      for(ADR_Tienda__c objTienda: [SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inaguracion__c, ADR_Account__c FROM ADR_Tienda__c WHERE Name= 'Tienda Sur' OR  Name= 'Tienda Norte']){
    		System.debug('Nombre:'+objTienda.name+'\nType:'+objTienda.ADR_Type__c+'\nFecha de inaguración:'+objTienda.ADR_Fecha_Inaguracion__c);
		}  
    }
    public static void InformacionTienda(string strTienda){
       ADR_Tienda__c objTienda=[SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inaguracion__c, ADR_Account__c FROM ADR_Tienda__c WHERE Name=:strTienda LIMIT 1];
       System.debug('Nombre:'+objTienda.name+'\nType:'+objTienda.ADR_Type__c+'\nFecha de inaguración:'+objTienda.ADR_Fecha_Inaguracion__c); 
    }


    public static List<ADR_Tienda__c> InformacionTiendas(){
       List<ADR_Tienda__c> lstTienda=[SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inaguracion__c, ADR_Account__c FROM ADR_Tienda__c];
  		return lstTienda;
    }
    public static string TipoTienda(string strTienda){
        ADR_Tienda__c objTienda=[SELECT ADR_Type__c FROM ADR_Tienda__c WHERE Name=:strTienda LIMIT 1];
		return objTienda.ADR_Type__c;
    }
    public static Map<String, String> MapaTienda(){
        Map<String, String> mapTienda= new Map<String,String>();
        for(ADR_Tienda__c objTienda:[SELECT Id, Name FROM ADR_Tienda__c]){
				mapTienda.put(objTienda.Id,objTienda.name);
		}
        return mapTienda;
    }
}