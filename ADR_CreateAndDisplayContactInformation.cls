/************************************************************************************************************
 * Name: ADR_CreateAndDisplayContactInformation
 * Class test: ADR_CreateAndDisplayContact_Test
 * Autor: Francisco Reyes
 * Description: Insert and Consulting records of Contact object for displaying in an lightning component.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Data consultation and insert of records
*/
public class ADR_CreateAndDisplayContactInformation {
    @AuraEnabled
    public static void createContacts(Contact objConta){
        //system.debug('insert'+objConta);
        try{
            insert objConta;
            //system.debug('insert'+objConta);
        }catch(DmlException e){
   			System.debug('The following exception has occurred: ' + e.getMessage());
        }
    }
    @AuraEnabled
    public static list<Contact> displayContact(){
        return [SELECT Id, LastName, FirstName, AccountId, Phone, Email, Description FROM Contact Order By CreatedDate DESC LIMIT 15];
    }

}