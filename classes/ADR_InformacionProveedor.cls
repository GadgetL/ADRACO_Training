public class ADR_InformacionProveedor {
    Public void DetallesProveedor(){
        for(ADR_Proveedor__c objProveedor: [SELECT Name,ADR_Producto__c, ADR_Fecha_Entrega__c, ADR_Tienda__r.Name, ADR_Localizacion__c FROM ADR_Proveedor__c]){
    		System.debug('Proveedor:'+objProveedor.name+'\nProducto:'+objProveedor.ADR_Producto__c+'\nFecha de Entrega:'+objProveedor.ADR_Fecha_Entrega__c+'\nTienda:'+objProveedor.ADR_Tienda__r.Name+'\nLocalización:'+objProveedor.ADR_Localizacion__c);
		}  
    }
    public void ProveedorTienda(){
       	Map<String, String> mapProveedor= new Map<String,String>();
        for(ADR_Proveedor__c objProveedor:[SELECT Name,ADR_Tienda__r.Id FROM ADR_Proveedor__c]){
				mapProveedor.put(objProveedor.Id,objProveedor.name);
		}
        System.debug('mapProveedor-->'+mapProveedor);
    }
}