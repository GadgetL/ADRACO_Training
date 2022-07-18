/*************************************************************************************** 
* Name: ADR_DisplayListOfAccount_Test
* Test: 
* Author: Valentín López Morales 
* Description: Required information to test list of Account
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 14-07-22 		  | v0.1 			| Account Test
*/ 
@isTest(SeeAllData=false)
public class ADR_DisplayListOfAccount_Test {
    
    /*
    * Method Name: setup
    * Description: Create test records once and then access them in each test method
    * Return Type: void
    * Parameters: 
    */
    @testSetup
    static void setup(){
        List<Account> lstAccount = new List<Account>();
        
        lstAccount=ADR_TestDataFactory.createAccountList('Test', 3);
        
        INSERT lstAccount;
    }
    
    /*
    * Method Name: fetchAccountRecords
    * Description: Displays a list of records of type Account
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void fetchAccountRecords(){
        List<Account> lstAccount = new List<Account>();
        
        Test.startTest();
        	lstAccount=ADR_DisplayListOfAccount.fetchAccountRecords();
        Test.stopTest();
    }
    
    /*
    * Method Name: fetchAccountRecord
    * Description: displays a list of accounts with a specific name 
    * Return Type: void
    * Parameters: 
    */
    @isTest
    Static void fetchAccountRecord(){
        List<Account> lstAccount = new List<Account>();
        
        Test.startTest();
        	lstAccount=ADR_DisplayListOfAccount.fetchAccountRecord('Test1');
        Test.stopTest();
    }
}