@isTest(SeeAllData=false)
/*así la clase test puede o no acceder a toda la data dentro de la org
 * por defecto esta en 'false' -- > @isTest(SeeAllData=true);*/
public class ADR_AccountInsertAndDisplay_Test {
    @testSetup static void setup(){
        //Account objAccount = new Account();
        //objAccount.Name = 'Test';
        Account objAccount = TestDataFactory.createAccount('Test');        
        INSERT objAccount;
    }
    
    @isTest static void createAccount(){
        Account objAccount = TestDataFactory.createAccount('Test');  
        INSERT objAccount;
        Test.startTest();        
        ADR_AccountInsertAndDisplay.createAccount(objAccount);
        Test.stopTest();
    }
    
    static testmethod void createAccountEmpty(){
        Account objAccountEmpty = new Account();         
        Test.startTest();
        ADR_AccountInsertAndDisplay.createAccount(objAccountEmpty);        
        Test.stopTest();
    }
    
    @isTest static void displayAccount(){
        Test.startTest();        
        ADR_AccountInsertAndDisplay.displayAccount();
        Test.stopTest();
    }
}