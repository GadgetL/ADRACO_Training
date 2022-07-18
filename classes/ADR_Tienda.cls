/*************************************************************************************** 
* Name: ADR_Tienda
* Test: ADR_Tienda_Test
* Author: Valentín López Morales 
* Description: Required information to object Tienda
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| Connection with Tienda
*/
public class ADR_Tienda {
    
   /*
    * Method Name: informacionTienda
    * Description: Displays the information of the Tiendas
    * Return Type: void
    * Parameters: 
    */
    public void informacionTienda(){
        for (ADR_Tienda__c objTda : [SELECT Name,ADR_Type__c,ADR_Fecha_Inauguracion__c FROM ADR_Tienda__c WHERE Name = 'Tienda Sur' OR  Name = 'Tienda norte']){
            System.debug(objTda.Name +'\n'+ objTda.ADR_Type__c +'\n'+objTda.ADR_Fecha_Inauguracion__c );
    	}
    }
    
    /*
    * Method Name: informacionTienda
    * Description: Displays a specific Tienda
    * Return Type: void
    * Parameters: string strTienda
    */
    public static void informacionTienda(string strTienda){
        ADR_Tienda__c objTienda = [SELECT Name,ADR_Type__c,ADR_Fecha_Inauguracion__c FROM ADR_Tienda__c WHERE Name =: strTienda LIMIT 1];
        System.debug(objTienda.Name +'\n'+ objTienda.ADR_Type__c +'\n'+objTienda.ADR_Fecha_Inauguracion__c );
    }
    
    /*
    * Method Name: informacionTiendas
    * Description: Displays a list of Tiendas
    * Return Type: List<ADR_Tienda__c>
    * Parameters: 
    */
    public static List<ADR_Tienda__c> informacionTiendas(){
        List<ADR_Tienda__c> lstTiendas = [SELECT Name,ADR_Type__c,ADR_Fecha_Inauguracion__c FROM ADR_Tienda__c WHERE Name= 'Tienda Sur' OR  Name= 'Tienda Norte'];
        
        return lstTiendas;
    }
    
    /*
    * Method Name: tipoTienda
    * Description: Displays the type of Tienda
    * Return Type: String
    * Parameters: string strtienda
    */
    public static string tipoTienda(string strtienda){ 
        ADR_Tienda__c objTienda = [SELECT Name,ADR_Type__c,ADR_Fecha_Inauguracion__c FROM ADR_Tienda__c WHERE Name =: strTienda LIMIT 1]; 
        
        return objTienda.ADR_Type__c;
    }
    
    /*
    * Method Name: mapTienda
    * Description: Object Tienda to map conversion
    * Return Type: void
    * Parameters: 
    */
    public static void mapTienda(){
        Map<Id, String> mapTienda =  new Map<Id, String>();
        for (ADR_Tienda__c objTienda : [SELECT Id,Name,ADR_Type__c,ADR_Fecha_Inauguracion__c FROM ADR_Tienda__c]){
            mapTienda.put(objTienda.Id, objTienda.Name);
        }
        System.debug('mapTienda--->'+mapTienda);
    } 
}