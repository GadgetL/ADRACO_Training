@isTest(SeeAllData=false)
public class ADR_DisplayListOfAccount_test {
	 @isTest static void setup(){
        Account objAccount1 = TestDataFactory.createAccount('Prueba');
        Account objAccount2 = TestDataFactory.createAccount('Prueba 2');
        insert objAccount1;
        insert objAccount2;
      
    }
    @isTest static void fetchAccountRecords(){
        Test.startTest();
        ADR_DisplayListOfAccount.fetchAccountRecords();
        Test.stopTest();
    }
    
        @isTest static void fetchAccountRecord(){
        Test.startTest();
        ADR_DisplayListOfAccount.fetchAccountRecord('Prueba');
        Test.stopTest();
    }
}