@isTest
public class ADR_DisplayListOfAccount_Test {
    @testSetup static void setup() {
        Account objAccount = TestDataFactory.createAccount('Test');
        INSERT objAccount;
    }
    
    @isTest static void fetchAccountRecordsTest() {
        Test.startTest();
        	ADR_DisplayListOfAccount.fetchAccountRecords();
        Test.stopTest();
    }
    
    @isTest static void fetchAccountRecordByNameTest() {
        Test.startTest();
        	ADR_DisplayListOfAccount.fetchAccountRecordByName('Test');
        Test.stopTest();
    }
}