public class ADR_informacionProveedor {

    public void detallesProveedor(){
		for(ADR_Proveedor__c objProveedor: [SELECT ADR_Producto__c, ADR_Fecha_Entrega__c, ADR_Tienda__r.Name, 	ADR_Localizacion__c FROM ADR_Proveedor__c]){
		system.debug('\nProducto: '+objProveedor.ADR_Producto__c+'\nFecha Entrega: '+objProveedor.ADR_Fecha_Entrega__c+'\nTienda: '+objProveedor.ADR_Tienda__r.Name+'\nLocalizacion: '+objProveedor.ADR_Localizacion__c); 
    
		}
    }
    
    public void proveedorTienda(){
        Map<Id, ADR_Proveedor__c> mapProveedor= new Map<Id, ADR_Proveedor__c>();
        for(ADR_Proveedor__c objProveedor: [SELECT ADR_Tienda__r.Id, ADR_Producto__c, ADR_Localizacion__c, ADR_Fecha_Entrega__c FROM ADR_Proveedor__c LIMIT 1]){
           mapProveedor.put(objProveedor.ADR_Tienda__r.Id,objProveedor);
		system.debug('\nTienda id--datos proveedor: '+mapProveedor); 
    
		}
    }
}