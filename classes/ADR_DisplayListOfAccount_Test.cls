@isTest

public class ADR_DisplayListOfAccount_Test {
    
    @testSetup static  void setup(){
        List <Account> lstAccount = TestDataFactory.createAccountList('Test', 2);
    }
	
	@isTest static void fetchAccountRecords(){
        
        Test.startTest();
        	ADR_DisplayListOfAccount.fetchAccountRecords();
        	
        Test.stopTest();
    }
    
    @isTest static void fecthOpportunityRecord(){
        
        Test.startTest();
        	ADR_DisplayListOfAccount.fetchAccountRecord('Test');
        	
        Test.stopTest();
    }
    
    
}