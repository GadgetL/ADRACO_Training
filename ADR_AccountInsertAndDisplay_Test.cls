/************************************************************************************************************
 * Name: ADR_AccountInsertAndDisplay_Test
 * Class test: ADR_AccountInsertAndDisplay_Test
 * Autor: Francisco Reyes
 * Description: Class test for the class ADR_AccountInsertAndDisplay.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 16-06-2022			| v0.1				| Creation of the methods test
*/
@isTest //(SeeAllData=true) solo si es requerido ir a los datos de la org, porque es mala practica.
public class ADR_AccountInsertAndDisplay_Test {
    @testSetup static void setup(){
         Account objAccount = TestDataFactory.creatAccount('strName');
        insert objAccount;
    }
    @isTest static void createAccounts(){// otra forma es nombrarla como: static testmethod void namedeclase
        Account objAccount = TestDataFactory.creatAccount('Test');
        Account objAcc = new Account();
        Test.startTest();
       		ADR_AccountInsertAndDisplay.createAccounts(objAccount);
        	ADR_AccountInsertAndDisplay.createAccounts(objAccount);
        Test.stopTest();
    }
    static testmethod void displayAccount(){
        
        Test.startTest();
        		ADR_AccountInsertAndDisplay.displayAccoun();
        Test.stopTest();
    }

}