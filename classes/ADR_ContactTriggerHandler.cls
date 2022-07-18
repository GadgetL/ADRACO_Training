/*************************************************************************************** 
* Name: ADR_ContactTriggerHandler
* Test: ADR_ContactTriggerHandler_Test
* Author: Valentín López Morales 
* Description: Required information to Contact Trigger
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| onection with Triggers
*/
public class ADR_ContactTriggerHandler {
    
    /*
    * Method Name: createContactRelated
    * Description: Receive a list of contacts to update
    * Return Type: void
    * Parameters: List<Contact> lstContact
    */
    public static void accountContactRelated(List<Contact> lstContact){
        system.debug('List Contact: '+lstContact);
        set<Id> setId = new set<Id>();
        for(Contact objContact : lstContact){
            setId.add(objContact.Id);
            
        }
        system.debug('SetId: '+setId);
        Contact objCont = [SELECT Id, Name, Account.Name FROM Contact WHERE Id IN: setId LIMIT 1];
        System.debug('Triger Contact: '+objCont);
        updateAccountValue(objCont);
        
    }
    
    /*
    * Method Name: updateAccountValue
    * Description: update contact values 
    * Return Type: void
    * Parameters: Contact objContact
    */
    public static void updateAccountValue(Contact objContact){
        system.debug('Update Account Trigger');
        Account objAccount = [SELECT Id, Name FROM Account WHERE Id =: objContact.AccountId];
        objAccount.Name = objContact.Name;
        
        UPDATE objAccount;
        system.debug('Update Account: '+objAccount);
    }

}