/*************************************************************************************** 
* Name: ADR_TiendaEdit
* Test: ADR_TiendaEdit_Test
* Author: Valentín López Morales 
* Description: The required information to edit Tiendas in Aura Component
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 13-07-22 		  | v0.1 			| Conection with Tiendas 
*/ 
public class ADR_TiendaEdit {
    
   /*
    * Method Name: getLstTiendas
    * Description: gets a list of five Tiendas
    * Return Type: List<ADR_Tienda__c>
    * Parameters: 
    */
    @AuraEnabled//This tag is important to use the method in Aura Component
    public static list<ADR_Tienda__c> getLstTiendas(){
        return[SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inauguracion__c, ADR_Account__c FROM ADR_Tienda__c ORDER BY CreatedDate DESC LIMIT 5];
    }
}