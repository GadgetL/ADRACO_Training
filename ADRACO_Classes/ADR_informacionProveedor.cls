public class ADR_informacionProveedor {
    public static void detallesProveedor() {
        for(ADR_Proveedor__c objProveedor : [SELECT Id, ADR_Producto__c, ADR_Fecha_Entrega__c, ADR_Tienda__c, ADR_Localizacion__c FROM ADR_Proveedor__c]){
            ADR_Tienda__c objTienda = [Select Name FROM ADR_Tienda__c WHERE ID = :objProveedor.ADR_Tienda__c];
            system.debug('Producto: ' + objProveedor.ADR_Producto__c);
            system.debug('Fecha entrega: ' + objProveedor.ADR_Fecha_Entrega__c);
            system.debug('Tienda: ' + objTienda.Name);
            system.debug('Producto: ' + objProveedor.ADR_Localizacion__c);
        }
    }
    
    public static Map<ID, ADR_Proveedor__c> proveedorTienda(){
        Map<ID, ADR_Proveedor__c> mpMapa = new Map<ID, ADR_Proveedor__c>();
        ID idIdentificador;
        for(ADR_Proveedor__c objProveedor : [SELECT Id, ADR_Producto__c, ADR_Fecha_Entrega__c, ADR_Tienda__c, ADR_Localizacion__c FROM ADR_Proveedor__c]){
            idIdentificador = objProveedor.ADR_Tienda__c;
            mpMapa.put(idIdentificador, objProveedor);
        }
        
        return mpMapa;
    }
}