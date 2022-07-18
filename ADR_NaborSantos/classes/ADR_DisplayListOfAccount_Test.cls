@isTest
public class ADR_DisplayListOfAccount_Test {
	@testSetup static void setup(){
        Account objAccount = TestDataFactory.createAccount('Test');        
        Account objAccount2 = TestDataFactory.createAccount('Test');        
        INSERT objAccount;
        INSERT objAccount2;
        List<Account> lstAccount = new List<Account>();
		lstAccount.add(objAccount);
        lstAccount.add(objAccount2);
    }
    
    @isTest static void fetchAccountRecords(){
        Test.startTest();
        ADR_DisplayListOfAccount.fetchAccountRecords(); 
        Test.stopTest();        
    }
    
    @isTest static void fetchAccountRecord(){
        Test.startTest();
        ADR_DisplayListOfAccount.fetchAccountRecord(''); 
        Test.stopTest();        
    }    
}