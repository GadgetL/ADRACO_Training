/***************************************************************************************
 * Name: ADR_AccountTriggerHandler
 * Test: ADR_AccountTriggerHandler_Test
 * Author: Valentín López Morales
 * Description: Required information to Account Trigger
****************************************************************************************
LastModifiedBy	| LastModifiedDate	| Modification Id	| Change Description	
----------------------------------------------------------------------------------------
Valentín López	| 25-06-22 			| v0.1 				| Conection with Triggers
*/
public class ADR_AccountTriggerHandler {
    
    /*
    * Method Name: createContactRelated
    * Description: Create a Contact Realted with an Account
    * Return Type: void
    * Parameters: List<Account> lstAccount
    */
    public static void createContactRelated(List<Account> lstAccount){
        system.debug('List Account: '+lstAccount);
        set<Id> setId = new set<Id>();
        for(Account objAccount : lstAccount){
            setId.add(objAccount.Id);
        }
        setContactValue(setId);
        
    }
    
    /*
    * Method Name: setContactValue
    * Description: set contact values
    * Return Type: void
    * Parameters: set<Id> setId
    */
    public static void setContactValue(set<Id> setId){
        system.debug('Insert Contact Trigger');
        List<Contact> lstContact = new List<Contact>();
        for(Id idAcc : setId){
            Contact objContact = new Contact();
            objContact.AccountId = idAcc;
            objContact.FirstName = 'Luffy';
        	objContact.LastName='D. Monkey';
        	objContact.Email='Dluffy@test.com';
            lstContact.add(objContact);
        }
        INSERT lstContact;
        system.debug('List Contact: '+lstContact);
    }

}