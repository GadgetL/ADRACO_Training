/************************************************************************************************************
 * Name: ADR_informacionProveedor
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Consulting records of Proveedor object. Difference between List and Map.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Displaying difference of List and Map.
*/
public class ADR_informacionProveedor {
    List<ADR_Proveedor__c> lstProvedor = [SELECT ADR_Producto__c, ADR_Fecha_Entrega__c, ADR_Tienda__r.Name, ADR_Localizacion__c FROM ADR_Proveedor__c];
    public void detallesProveedor(){
        for(ADR_Proveedor__c objTemp : lstProvedor){
            System.debug('Producto: '+objTemp.ADR_Producto__c+'\nFecha Entrega: '+objTemp.ADR_Fecha_Entrega__c+
                         '\nTienda Nombre: '+objTemp.ADR_Tienda__c+'\nLocalizacion: '+objTemp.ADR_Localizacion__c);
        }
    }
    
    public void proveedorTienda(){
        map<id,ADR_Proveedor__c> mpProvedor =new map<id,ADR_Proveedor__c> (lstProvedor);
        system.debug('Mapa de proveedores: '+ mpProvedor);
    }

}