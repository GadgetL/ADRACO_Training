public class ADR_informacionProveedor {
	/*Metodo: detallesProveedor
	 Obtener la informacion  de  los 3 proveedores
     mostrando en lista de la sig manera( Realizar uso  de for):*/
    
    public void detallesProveedor(){
        for(ADR_Proveedor__c objProveedor:[Select ADR_Producto__c,ADR_Fecha_Entrega__c,ADR_Tienda__r.Name,ADR_Localizacion__c FROM ADR_Proveedor__c]){
			System.debug('Nombre: ' + objProveedor.ADR_Producto__c + '\nFecha de entrega: ' +	objProveedor.ADR_Fecha_Entrega__c +'\nTienda: ' + objProveedor.ADR_Tienda__r.Name + '\nLocalizacion:' + objProveedor.ADR_Localizacion__c);            
        }
    }
    
    public void proveedorTienda(){
        Map<Id,ADR_Proveedor__c> mapProveedor = new Map<Id,ADR_Proveedor__c>();
     	
        for(ADR_Proveedor__c objProveedor:[Select Id, Name,ADR_Producto__c,ADR_Fecha_Entrega__c,ADR_Tienda__r.Name,ADR_Localizacion__c FROM ADR_Proveedor__c]){
        	mapProveedor.put(objProveedor.ID, objProveedor);    
        }
        System.debug(mapProveedor);
    }
    
    
}