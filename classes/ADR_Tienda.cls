public class ADR_Tienda {
    public void informacionTienda(){
      for (ADR_Tienda__c objTda : [SELECT Name,ADR_Type__c,Fecha_Inauguracion__c FROM ADR_Tienda__c WHERE Name= 'Tienda Sur' OR  Name= 'Tienda norte']){
    System.debug(objTda.Name +'\n'+ objTda.ADR_Type__c +'\n'+objTda.Fecha_Inauguracion__c );   
      }
    }
    public void informacionTienda(String strTienda){
	ADR_Tienda__c objTienda= [SELECT Name,ADR_Type__c,Fecha_Inauguracion__c FROM ADR_Tienda__c WHERE Name= :strTienda LIMIT 1];
      System.debug(objTienda.Name +'\n'+ objTienda.ADR_Type__c +'\n'+objTienda.Fecha_Inauguracion__c );   

    }
     public List<ADR_Tienda__c> informacionTiendas(){
         List<ADR_Tienda__c> lstTienda = [SELECT Name,ADR_Type__c,Fecha_Inauguracion__c FROM ADR_Tienda__c WHERE Name= 'Tienda Sur' OR  Name= 'Tienda norte'];
    
         return lstTienda;
    }
    public String tipoTienda(String strTienda){
        ADR_Tienda__c objTienda= [SELECT Name,ADR_Type__c,Fecha_Inauguracion__c FROM ADR_Tienda__c WHERE Name= :strTienda LIMIT 1];
        
        return objTienda.ADR_Type__c;
    }
    
    public void mapaTienda(String strTienda){
       Map<id , String> mapTienda = new Map<id,String>(); 
       ADR_Tienda__c objTienda=[SELECT id,Name,ADR_Type__c,Fecha_Inauguracion__c FROM ADR_Tienda__c WHERE Name= :strTienda LIMIT 1];
     
        mapTienda.put(objTienda.id, objTienda.Name); 
        System.debug(mapTienda);
        
    }
}