public class ADR_informacionProveedor {
    public void detallesProveedor(){
         for ( ADR_Proveedor__c objProvedor : [SELECT ADR_Producto__c, ADR_Fecha_Entrega__c,ADR_Localizacion__c, ADR_Tienda__r.Name FROM ADR_Proveedor__c]){
            System.debug(objProvedor.ADR_Producto__c);
             System.debug(objProvedor.ADR_Fecha_Entrega__c);
              System.debug(objProvedor.ADR_Tienda__r.Name);
              System.debug(objProvedor.ADR_Localizacion__c);
             
        }
        
    }
    public void proveedorTienda(){ 
        Map<Id,ADR_Proveedor__c> mapProveedor = new Map<Id,ADR_Proveedor__c>();
                 
        for ( ADR_Proveedor__c objProvedor : [SELECT ADR_Producto__c, ADR_Fecha_Entrega__c,ADR_Localizacion__c, ADR_Tienda__r.id FROM ADR_Proveedor__c]){
                  mapProveedor.put(objProvedor.ADR_Tienda__r.id,objProvedor);
             
        }
        System.debug(mapProveedor);
        
    }
    
    
}