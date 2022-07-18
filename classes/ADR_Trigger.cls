/*************************************************************************************** 
* Name: ADR_Trigger
* Test: ADR_Trigger_Test
* Author: Valentín López Morales 
* Description: Example Triggers
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| Triggers
*/
public class ADR_Trigger {
    
    /*
    * Method Name: insertAccount
    * Description: Insert an Account
    * Return Type: void
    * Parameters: 
    */
    public static void insertAccount(){
        system.debug('Insert Account Trigger');
        Account objAcc = new Account();
        objAcc.Name = 'Test Account Trigger Luffy';
        objAcc.Type = 'Technology Partner';
        
        INSERT objAcc;
        system.debug('Account: '+objAcc);
    }
    
    /*
    * Method Name: insertContact
    * Description: Insert a Contact
    * Return Type: void
    * Parameters: 
    */
    public static void insertContact(){
        system.debug('Insert Contact Trigger');
        Contact objContact = new Contact();
        objContact.FirstName = 'Alma';
        objContact.LastName='López';
        objContact.Email='Almal@test.com';
        system.debug('Contact: '+objContact);
        INSERT objContact;
    }
}