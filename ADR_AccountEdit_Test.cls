/************************************************************************************************************
 * Name: ADR_AccountEdit_Test
 * Class test: ADR_AccountEdit_Test
 * Autor: Francisco Reyes
 * Description: Class test for the class ADR_AccountEdit.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 16-06-2022			| v0.1				| Creation of the methods test
*/
@isTest
public class ADR_AccountEdit_Test {
    @testSetup static void setup(){
        List <Account> lstAccount = TestDataFactory.lstCreateAccount();
        insert lstAccount;
    }
    @isTest static void getLstAccounts(){
        Test.startTest();
       		ADR_AccountEdit.getLstAccounts();
        Test.stopTest();
    }
    @isTest static void updateAccount(){
        List<Account> lstAccounts = ADR_AccountEdit.getLstAccounts();
        List<Account> lstAccUpdate = new List<Account>();
        for(Account objAcc : lstAccounts){
            Account objAccUpdate = new Account(Name = objAcc.Name + 'update', Phone = '182937364729', Type ='Prospect');            
            lstAccUpdate.add(objAccUpdate);
        }
        Test.startTest();
       		ADR_AccountEdit.updateAccount(lstAccounts);
        Test.stopTest();
    }
    @isTest static void updateAccount2(){
        List<Account> lstAccounts = new List<Account>{ new Account(Name ='Prueba 1')};
        Test.startTest();
       		ADR_AccountEdit.updateAccount(lstAccounts);
        Test.stopTest();
    }

}