@isTest(SeeAllData=false) 
public class ADR_AccountInsertAndDisplay_Test {
    
    //Metodo para generar data que se va a utilizar
    @testSetup static void setup(){
        Account objAccount = TestDataFactory.createAccount('Test');
        insert objAccount;
    }
    
    @isTest static void createAccount(){
        Account objAccount = TestDataFactory.createAccount('Test');
        Test.startTest();
        	ADR_AccountInsertAndDisplay.createAccount(objAccount);
        Test.stopTest();
    }
    
    @isTest static void createAccountEmpty(){
        Account objAccountEmpty = new Account();
        Test.startTest();
        	ADR_AccountInsertAndDisplay.createAccount(objAccountEmpty);
        Test.stopTest();
    }
    
    static testmethod void displayAccount(){
        
        Test.startTest();
        	ADR_AccountInsertAndDisplay.displayAccount();
        Test.stopTest();
    }
}