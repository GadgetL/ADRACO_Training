@isTest
public class ADR_AccountEditApex_Test {
    
    @testSetup static void setup() {
        Account objAccount = TestDataFactory.createAccount('Test');
        INSERT objAccount;
    }
    
    @isTest static void getLstAccountTest() {
        Test.startTest();
        	ADR_AccountEditApex.getLstAccount();
        Test.stopTest();
    }
    
    @isTest static void updateAccountTest() {
        Account objAccount = TestDataFactory.createAccount('Test');
        List<Account> lstAccount = new List<Account>();
        
        lstAccount.add(objAccount);
        
        Test.startTest();
        	ADR_AccountEditApex.updateAccount(lstAccount);
        Test.stopTest();
    }
    
    @isTest static void updateAccountTestEmpty() {
        List<Account> lstAccount = new List<Account>();
        
        Test.startTest();
        	ADR_AccountEditApex.updateAccount(lstAccount);
        Test.stopTest();
    }
}