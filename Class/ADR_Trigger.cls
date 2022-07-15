/************************************************************************************************************
 * Name: ADR_Trigger
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Insert Contact and Account for to use a Trigger.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Data consultation of records
*/
public class ADR_Trigger {
    public static void insertlstAccount(){
        list<Account> lstAcco = new list<Account>{
            new Account(Name = 'Test Account Relate Contact', SLASerialNumber__c = '9993')
        };
        insert lstAcco;
    }
    
    public static void insertContact(){
        Contact objContact = new Contact(FirstName = 'Test Insert',LastName = '1Contact',AccountId = '0018a00001opGkuAAE',Email = 'testContact1@adr.com');
        insert objContact;
    }

}