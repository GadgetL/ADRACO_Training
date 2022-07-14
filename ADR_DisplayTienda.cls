/************************************************************************************************************
 * Name: ADR_DisplayTienda
 * Class test: ADR_Tienda2_Test
 * Autor: Francisco Reyes
 * Description: Consulting records of Tienda object for displaying in an lightning component.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Data consultation of records
*/
public class ADR_DisplayTienda {
     @AuraEnabled 
    public static List<ADR_Tienda__c> displayTienda(){
        return [SELECT Name,ADR_Type__c, ADR_Fecha_Inaguracion__c FROM ADR_Tienda__c Order BY CreatedDate DESC  LIMIT 5];
    }

}