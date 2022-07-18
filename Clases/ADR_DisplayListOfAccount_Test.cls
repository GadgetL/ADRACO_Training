@isTest(SeeAllData=False)
public class ADR_DisplayListOfAccount_Test {
    @testSetup static void Setup(){
      Account objAccount = TestDataFactory.createAccount('Luis');
      insert objAccount; 
    }  
    
    @istest static void fetchAccountRecord(){
        Test.startTest();
        ADR_DisplayListOfAccount.fetchAccountRecord('Luis');
        Test.stopTest();
    }
	  @istest static void fetchAccountRecords(){
        Test.startTest();
        ADR_DisplayListOfAccount.fetchAccountRecords();
        Test.stopTest();
    }
}