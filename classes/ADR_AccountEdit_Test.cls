/*************************************************************************************** 
* Name: ADR_AccountEdit_Test
* Test: 
* Author: Valentín López Morales 
* Description: Required information to Account Test
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 14-07-22 		  | v0.1 			| Account Test
*/ 
@isTest(SeeAllData=false)
public class ADR_AccountEdit_Test {
    
    /*
    * Method Name: setup
    * Description: Create test records once and then access them in each test method
    * Return Type: void
    * Parameters: 
    */
    @testSetup
    static void setup(){
        List<Account> lstAccount = new List<Account>();
        lstAccount = ADR_TestDataFactory.createAccountList('Test',3);
        
        INSERT lstAccount;
    }
    
    /*
    * Method Name: getLstAccounts
    * Description: Create an Account list
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void getLstAccounts(){
        List<Account> lstAccount = new List<Account>();
        Test.startTest();
        	lstAccount = ADR_AccountEdit.getLstAccounts();
        Test.stopTest();
    }
    
    /*
    * Method Name: updateAccount
    * Description: Updated a list of Account 
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void updateAccount(){
        List<Account> lstAccount = [SELECT Id, Name FROM Account LIMIT 1];
        
        lstAccount[0].Name='update test';
        
        Test.startTest();
        	ADR_AccountEdit.updateAccount(lstAccount);
        Test.stopTest();
    }
    
    /*
    * Method Name: updateAccountEmpty
    * Description: Updated a list of empty Account 
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void updateAccountEmpty(){
        List<Account> lstAccount;
        
        Test.startTest();
        	ADR_AccountEdit.updateAccount(lstAccount);
        Test.stopTest();
    }
}