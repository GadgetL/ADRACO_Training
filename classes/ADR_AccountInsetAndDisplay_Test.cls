/*************************************************************************************** 
* Name: ADR_AccountInsetAndDisplay_Test
* Test: 
* Author: Valentín López Morales 
* Description: Required information to Account Test
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 14-07-22 		  | v0.1 			| Account Test
*/ 
@isTest(SeeAllData=false)//Se pone debido a las buenas practicas
public class ADR_AccountInsetAndDisplay_Test {
    
    /*
    * Method Name: setup
    * Description: Create test records once and then access them in each test method
    * Return Type: void
    * Parameters: 
    */
    @testSetup//This tag is important for Testing
    static void setup() {
        Account objAccount = ADR_TestDataFactory.createAccount('Test Test');
        INSERT objAccount;
    }
    
    /*
    * Method Name: createAccount
    * Description: Create a test record of type Account
    * Return Type: void
    * Parameters: 
	*/
    @isTest//This tag is important for Testing
    static void createAccount(){
        Account objAccount = ADR_TestDataFactory.createAccount('Test Test');
        Account objAcc = new Account();
        Test.startTest();
        	ADR_AccountInsetAndDisplay.createAccount(objAccount);
        	ADR_AccountInsetAndDisplay.createAccount(objAcc);
        	//ADR_AccountInsetAndDisplay.createAccount(null);//OJO: Truena
        Test.stopTest();
    }
    
    /*
    * Method Name: createAccount
    * Description: Create an empty test record of type Account
    * Return Type: void
    * Parameters: 
	*/
    @isTest//This tag is important for Testing
    static void createAccountEmpty(){
        Account objAccountEmpty = new Account();
        Test.startTest();
        	ADR_AccountInsetAndDisplay.createAccount(objAccountEmpty);
        	//ADR_AccountInsetAndDisplay.createAccount(null);//OJO: Truena
        Test.stopTest();
    }
    
    /*
    * Method Name: displayAcoount
    * Description: Displays Account list
    * Return Type: void
    * Parameters: 
	*/
    //Otra forma de realizar métodos test y la etiqueta @isTest no es necesaria
    static testmethod void displayAcoount() {
        Test.startTest();
        	ADR_AccountInsetAndDisplay.displayAccount();
        Test.stopTest();
    }

}