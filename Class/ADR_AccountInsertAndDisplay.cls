/************************************************************************************************************
 * Name: ADR_AccountInsertAndDisplay
 * Class test: ADR_AccountInsertAndDisplay_Test
 * Autor: Francisco Reyes
 * Description: Insert and Consulting records of account object for displaying in an lightning component.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Data consultation and insert of records
*/
public class ADR_AccountInsertAndDisplay {
    @AuraEnabled
    public static void createAccounts(Account objAcco){
        system.debug('insert'+objAcco);
        try{
            insert objAcco;
            //system.debug('insert'+objAcco);
        }catch(DmlException e){
   			System.debug('The following exception has occurred: ' + e.getMessage());
        }
    }
    @AuraEnabled
    public static list<Account> displayAccoun(){
        return [SELECT id, Name, AccountNumber, Phone, Website FROM Account Order By CreatedDate DESC LIMIT 10];
    }

}