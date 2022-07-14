/************************************************************************************************************
 * Name: ADR_DisplayListofContact
 * Class test: ADR_DisplayListofContact_Test
 * Autor: Francisco Reyes
 * Description: Consulting records of Contact object for displaying in an lightning component.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Data consultation of records
*/
public class ADR_DisplayListofContact {
    @AuraEnabled 
    public static List<Contact> fetchContactRecords(){
        return [SELECT FirstName, LastName, AccountId, Email, ADR_Departamento_tipo__c FROM Contact ORDER BY createdDate LIMIT 10];
    }
    @AuraEnabled 
    public static List<Contact> fetchContactRecord(string strLastName, string strEmail){
        return [SELECT FirstName, LastName, AccountId, Email, ADR_Departamento_tipo__c FROM Contact WHERE LastName=:strLastName OR  Email=:strEmail ORDER BY createdDate LIMIT 3];
    }

}