/*************************************************************************************** 
* Name: ADR_AccountInsetAndDisplay
* Test: ADR_AccountInsetAndDisplay_Test
* Author: Valentín López Morales 
* Description: Required information to insert and display Accounts in Aura Component
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| Conection with Account
*/ 
public class ADR_AccountInsetAndDisplay {
    
    /*
    * Method Name: createAccount
    * Description: Create an Account record
    * Return Type: void
    * Parameters: Account objAccount
    */
    @AuraEnabled
    public static void createAccount(Account objAccount){
        system.debug('objAccount: '+objAccount);
        try{
            system.debug('objAccount: '+objAccount);
            INSERT objAccount;
        }catch(DmlException e){
            system.debug('The following exception has ocurred: '+e.getMessage());
        }
    }
    
    /*
    * Method Name: displayAccount
    * Description: gets a list of ten Accounts
    * Return Type: List<Account>
    * Parameters: 
    */
    @AuraEnabled
    public static List<Account> displayAccount(){
        return [SELECT Id, Name, AccountNumber, Phone, Website FROM Account ORDER BY CreatedDate DESC LIMIT 10];
    }

}