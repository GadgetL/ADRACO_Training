/************************************************************************************************************
 * Name: ADR_AccountTriggerHandler
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Insert records of contact objects relating them a account.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Create a to relate for a contact with an account
*/
public class ADR_AccountTriggerHandler {
    public static void createdContactRelated(list<Account> lstAccount){
        set<id> setIdAcc = new set<id>();
        system.debug('Accounts '+ lstAccount);
        for(Account objAcco : lstAccount){
            setIdAcc.add(objAcco.Id);
        }
        setContactValue(setIdAcc);
    }
    
    public static void setContactValue(set<id> setId){
        list<Contact> lstContact = new list<Contact>();
        for(id IdAcc : setId){
            Contact objContact = new Contact(FirstName= 'Test Contact',LastName = 'Trigger update',Email = 'testTriggerupdate@adr.com', AccountId = IdAcc);
            lstContact.add(objContact);
        }
        insert lstContact;
        system.debug('Contacts insert '+lstContact);
    }

}