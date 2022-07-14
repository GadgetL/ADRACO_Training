/************************************************************************************************************
 * Name: ADR_DisplayListOfAccount
 * Class test: ADR_DisplayListOfAccount_Test
 * Autor: Francisco Reyes
 * Description: Consulting records of Account object for displaying in an lightning component.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Data consultation of records
*/
public class ADR_DisplayListOfAccount {
    @AuraEnabled //para que pueda usarse en el aura component
    public static List<Account> fetchAccountRecords(){
        return [SELECT Name, Rating, Phone, Website, Description FROM Account ORDER BY createdDate ASC LIMIT 10];
    }
    @AuraEnabled
    public static List<Account> fetchAccountRecord(string strName){
        return [SELECT Name, Rating, Phone, Website, Description FROM Account WHERE Name=:strName ORDER BY createdDate ASC LIMIT 1];
    }

}