/************************************************************************************************************
 * Name: ADR_DisplayListOfAccount_Test
 * Class test: ADR_DisplayListOfAccount_Test
 * Autor: Francisco Reyes
 * Description: Class test for the class ADR_DisplayListOfAccount.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 16-06-2022			| v0.1				| Creation of the methods test
*/
@isTest
public class ADR_DisplayListOfAccount_Test {
    @testSetup static void setup(){
        list<Account> lstAccount = TestDataFactory.lstCreateAccount();
        insert lstAccount;
    }
    @isTest static void fetchAccountRecords(){
        Test.startTest();
        	ADR_DisplayListOfAccount.fetchAccountRecords();
        	ADR_DisplayListOfAccount.fetchAccountRecord('Prueba 2');
        Test.stopTest();
    }

}