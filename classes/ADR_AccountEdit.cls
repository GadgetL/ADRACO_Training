/*************************************************************************************** 
* Name: ADR_AccountEdit
* Test: ADR_AccountEdit_Test
* Author: Valentín López Morales 
* Description: The required information to edit and display Accounts in Aura Component
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 14-07-22 		  | v0.1 			| Conection with Account
*/ 
public class ADR_AccountEdit {
    
    /*
    * Method Name: getLstAccounts
    * Description: gets a list of ten Accounts
    * Return Type: List<Account>
    * Parameters: 
    */
    @AuraEnabled//This tag is important to use the method in Aura Component
    public static list<Account> getLstAccounts(){
        return[SELECT Id,Name,Type,Phone,Website FROM Account ORDER BY CreatedDate DESC LIMIT 10];
    }
    
    /*
    * Method Name: updateAccount
    * Description: Return true if the Accounts list was successfully update and false otherwise
    * Return Type: Boolean
    * Parameters: List<Account> lstAccounts
    */
    @AuraEnabled//This tag is important to use the method in Aura Component
    public static boolean updateAccount(list<Account> lstAccounts){
        try{
            UPDATE lstAccounts;
            return true;
        }catch(Exception e){
            system.debug('Exception--->'+e.getMessage());
            return false;
        }
    }
}