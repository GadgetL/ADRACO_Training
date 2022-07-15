@isTest(seeAllData = false)
public class ADR_CreateAccount_Test {
    
    @testSetup static void setup() {
        Account objAccount = TestDataFactory.createAccount('Nombre');
        INSERT objAccount;
    }
    
    @isTest static void createAccount() {
        Account objAccount = TestDataFactory.createAccount('Nombre 2');
        Test.startTest();
        	ADR_CreateAccount.createAccount(objAccount);
        Test.stopTest();
    }
    
    @isTest static void createAccountEmpty() {
        Account objAccount = new Account();
        Test.startTest();
        	ADR_CreateAccount.createAccount(objAccount);
        Test.stopTest();
    }
    
    @isTest static void displayAccount() {
        Test.startTest();
        	ADR_CreateAccount.displayAccount();
        Test.stopTest();
    }
}