public class ADR_informacionProveedor {
    public void detallesProveedor(){
        for(ADR_Proveedor__c objProveedor:[SELECT Id, Name, ADR_Producto__c, ADR_Fecha_Entrega__c, ADR_Tienda__c, ADR_Localizacion__c FROM ADR_Proveedor__c]){
            System.debug(objProveedor.Name+'\n'+objProveedor.ADR_Producto__c+'\n'+objProveedor.ADR_Fecha_Entrega__c+'\n'+objProveedor.ADR_Tienda__c+'\n'+ objProveedor.ADR_Localizacion__c);
        }
    }
    public void proveedorTienda(){
        Map <Id, ADR_Proveedor__c> mapProveedor = new Map <Id, ADR_Proveedor__c>();
        for(ADR_Proveedor__c objProveedor:[SELECT Id, Name, ADR_Producto__c, ADR_Fecha_Entrega__c, ADR_Tienda__c, ADR_Localizacion__c FROM ADR_Proveedor__c]){
        mapProveedor.put(objProveedor.ADR_Tienda__c, objProveedor);
		system.debug('-->'+mapProveedor.get(objProveedor.ADR_Tienda__c));
    
    }
}
}