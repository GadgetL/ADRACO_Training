/***************************************************************************************
 * Name: ADR_informacionProveedor
 * Test: ADR_informacionProveedor_Test
 * Author: Valentín López Morales
 * Description: Requiered information to Proveedor
****************************************************************************************
LastModifiedBy	| LastModifiedDate	| Modification Id	| Change Description	
----------------------------------------------------------------------------------------
Valentín López	| 23-06-22 			| v0.1 				| Conection with Proveedor
*/
public class ADR_informacionProveedor {
    
    /*
    * Method Name: detallesProveedor
    * Description: Displays the details of the Proveedor
    * Return Type: void
    * Parameters: 
    */
    public void detallesProveedor(){
        for(ADR_Proveedor__c objProveedor: [SELECT Name, ADR_Fecha_Entrega__c, ADR_Producto__c, ADR_Tienda__r.Name, ADR_Localizacion__c FROM ADR_Proveedor__c]){
            System.debug('Proveedor: '+objProveedor.Name);
            System.debug('Producto: '+objProveedor.ADR_Producto__c);
            System.debug('Fecha Entrega: '+objProveedor.ADR_Fecha_Entrega__c);
            System.debug('Tienda: '+objProveedor.ADR_Tienda__r.Name);
            System.debug('Localización: '+objProveedor.ADR_Localizacion__c);
            
        }
    }
    
    /*
    * Method Name: proveedorTienda
    * Description: Object Proveedor to map conversion
    * Return Type: 
    * Parameters: 
    */
    public void proveedorTienda(){
        Map<Id,ADR_Proveedor__c> mapProveedor = new Map<Id,ADR_Proveedor__c>();
        for(ADR_Proveedor__c objProveedor: [SELECT Name, ADR_Fecha_Entrega__c, ADR_Producto__c, ADR_Tienda__c, ADR_Localizacion__c FROM ADR_Proveedor__c]){
            mapProveedor.put(objProveedor.ADR_Tienda__c, objProveedor);
            System.debug('MapProveedor: '+mapProveedor.get(objProveedor.ADR_Tienda__c));
        }
    }

}