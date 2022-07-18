public class ADR_Tienda {
    public void informacionTienda(){
    	list <ADR_Tienda__c> lstTienda = [SELECT id,Name,ADR_Type__c,ADR_Fecha_Inauguracion__c FROM ADR_Tienda__c WHERE Name='Tienda norte' OR Name ='Tienda centro' ];

		for(ADR_Tienda__c objTda : lstTienda ){
			String Tienda = + '\n' + 'Nombre: ' + objTda.Name + '\n' + 'Tipo: ' + objTda.ADR_Type__c + '\n' + 'Fecha de inauguracion: ' + objTda.ADR_Fecha_Inauguracion__c;
    		System.debug(Tienda);
    } 
  }
    public void informacionTienda(String strTienda ){
        ADR_Tienda__c objTienda = [SELECT Name,ADR_Type__c,ADR_Fecha_Inauguracion__c FROM ADR_Tienda__c WHERE Name=:strTienda LIMIT 1];
    	System.debug(objTienda.Name +'\n'+ objTienda.ADR_Type__c +'\n'+objTienda.ADR_Fecha_Inauguracion__c );
    }
    
    public LIST <ADR_Tienda__c> informacionTiendas(){
    	list <ADR_Tienda__c> lstTienda = [SELECT id,Name,ADR_Type__c,ADR_Fecha_Inauguracion__c FROM ADR_Tienda__c WHERE Name='Tienda norte' OR Name ='Tienda centro' ];
		return lstTienda;
    }
    
    public String tipoTienda(String strTienda){
        ADR_Tienda__c objTienda = [SELECT Name,ADR_Type__c,ADR_Fecha_Inauguracion__c FROM ADR_Tienda__C WHERE Name =: strTienda LIMIT 1];
    	return objTienda.ADR_Type__c;
    }    
  }