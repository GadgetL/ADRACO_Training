public class ADR_informacionProveedor {
    
    
    public void detallesProveedor(){
        	list <ADR_Proveedor__c> lstTienda = [SELECT ADR_Producto__c,ADR_Tienda__c,ADR_Localizacion__c,ADR_Fecha_Entrega__c FROM ADR_Proveedor__c];

		for(ADR_Proveedor__c objTda : lstTienda ){
			String Tienda = + '\n' + 'Producto: ' + objTda.ADR_Producto__c + '\n' + 'Fecha: ' + objTda.ADR_Fecha_Entrega__c + '\n' + 'Nombre ' + objTda.ADR_Tienda__c + '\n' + 'Localizacion: ' + objTda.ADR_Localizacion__c;
    		System.debug(Tienda);
    	}
	}

}