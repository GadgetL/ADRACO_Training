@isTest
public class ADR_AccountEdit_Test {
	@testSetup static void setup(){
        Account objAccount = TestDataFactory.createAccount('Test');
        insert objAccount;
    }
	
    @isTest static void getLstAccount(){
        Test.startTest();
        	ADR_AccountEdit.getLstAccount();
        Test.stopTest();
    }
    
    @isTest static void updateAccount(){
        List <Account> lstAccount = TestDataFactory.createAccountList('Test', 2);
        Test.startTest();
        	ADR_AccountEdit.updateAccount(lstAccount);
        Test.stopTest();
    }
    
    @isTest static void updateAccounts(){
        List <Account> lstAccountFalse = new List<Account>();
        
        List <Account> lstAccountTrue = TestDataFactory.createAccountList('Test', 2);
        Test.startTest();
        	ADR_AccountEdit.updateAccount(lstAccountFalse);
        	ADR_AccountEdit.updateAccount(lstAccountTrue);
        Test.stopTest();
    }
}