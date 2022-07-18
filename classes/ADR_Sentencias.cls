/*************************************************************************************** 
* Name: ADR_DisplayListOfAccount
* Test: ADR_DisplayListOfAccount_Test
* Author: Valentín López Morales 
* Description: Example of sentences
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| Connection of sentences with Triggers
*/ 
public class ADR_Sentencias {
    
    /*
    * Method Name: insertAccount
    * Description: Displays object Account before and after insertion
    * Return Type: void 
    * Parameters: 
    */
    public static void insertAccount(){
        Account objAcc = new Account();
        objAcc.Name = 'Test Account Insert';
        objAcc.Phone = '55555';
        system.debug('Before: '+objAcc);
        INSERT objAcc;
        system.debug('After: '+objAcc);
    }
    
    /*
    * Method Name: insertLstAccount
    * Description: Displays a list of Accounts before and after insertion
    * Return Type: void
    * Parameters: 
    */
    public static void insertLstAccount(){
        List<Account> lstAccount = new List<Account>();
        for(integer x=1; x<=4; x++){
            Account objAccount = new Account();
            objAccount.Name = 'Test Account Insert' + x;
            objAccount.Phone = x+'555'+x;
            lstAccount.add(objAccount);
        	system.debug('Before: '+objAccount);
        }
        INSERT lstAccount;
        system.debug('After: '+lstAccount);
    }
    
    /*
    * Method Name: updateAccount
    * Description: Displays an Account before and after updated
    * Return Type: void
    * Parameters: 
    */
    public static void updateAccount(){
        Account objAccount = [SELECT Id, Name FROM Account WHERE Name = 'Test Account Insert' LIMIT 1];
         system.debug('Update: '+objAccount);
        objAccount.Name = 'Test Update Insert';
        objAccount.Phone = '1111111';
        
        UPDATE objAccount;
        system.debug('Update: '+objAccount);
    }
    
    /*
    * Method Name: updateLstAccount
    * Description: Displays a list of Accounts before and after updated
    * Return Type: void
    * Parameters: 
    */
    public static void updateLstAccount(){
        List<Account> lstAccount = [SELECT Id, Name FROM Account LIMIT 4];
        integer cont = 0;
        system.debug('Before: '+lstAccount);
        for(Account objAccount : lstAccount){
            objAccount.Name='Update Insrt'+cont;
            objAccount.Phone='654678'+cont;
            cont +=1;
        }
        UPDATE lstAccount;
        system.debug('After: '+lstAccount);
        
    }
    
    /*
    * Method Name: deleteAccount
    * Description: Displays an Account before and after deleting
    * Return Type: void
    * Parameters: 
    */
    public static void deleteAccount(){
        Account objAccount = [SELECT Id, Name FROM Account WHERE Name = 'Test Account Insert1' LIMIT 1];
        
        system.debug('Before: '+objAccount);
        DELETE objAccount;
        system.debug('After: '+objAccount);
    }
}