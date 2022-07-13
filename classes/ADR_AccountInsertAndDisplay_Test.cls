@isTest(SeeAllData=false)
public class ADR_AccountInsertAndDisplay_Test {
    @testSetup static void setup(){
        Account objAccount=new Account();
        objAccount.Name='Test';
        INSERT objAccount;
    }
    @isTest static void createAccount(){
        Account objAccount=new Account();
        objAccount=TestDataFactory.createAccount('test');
        Test.startTest();
        	ADR_AccountInsertAndDisplay.createAccount(objAccount);
        	ADR_AccountInsertAndDisplay.displayAccounts();
        Test.stopTest();
    }
    static testmethod void displayAccounts(){
        Account objAccount=new Account();
        objAccount.Name='Test';
        INSERT objAccount;
        Test.startTest();
        	ADR_AccountInsertAndDisplay.displayAccounts();
        Test.stopTest();
        
    }
}