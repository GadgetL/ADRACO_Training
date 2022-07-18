public class ADR_informacionProveedor {
    public static void detallesProveedor(){
        for(ADR_Proveedor__c objProveedor : [SELECT ADR_Producto__c, ADR_Fecha_Entrega__c, Name, ADR_Tienda__r.Name, ADR_Localizacion__c FROM ADR_Proveedor__c]){      
			system.debug('\nProducto: ' + objProveedor.ADR_Producto__c + '\n'+ 'Fecha Entrega: ' + objProveedor.ADR_Fecha_Entrega__c +
                         '\nTienda: ' + objProveedor.ADR_Tienda__r.Name + '\nLocalizacion: ' + objProveedor.ADR_Localizacion__c); 
    	}
    }
    
    public static void proveedorTienda(){
        Map<Id, ADR_Proveedor__c> mapProveedor = new Map<Id, ADR_Proveedor__c>();
        for(ADR_Proveedor__c objProveedor : [SELECT ADR_Producto__c, ADR_Fecha_Entrega__c, Name, ADR_Tienda__c, ADR_Localizacion__c FROM ADR_Proveedor__c]){      
			mapProveedor.put(objProveedor.ADR_Tienda__c, objProveedor);
        }
		system.debug('mapProveedor: ' + mapProveedor);
    }
}