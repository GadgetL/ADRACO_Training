@isTest
public class ADR_ContactController_Test {
    @testSetup static void setup() {
        Contact objContact = TestDataFactory.createContact('Test');
        INSERT objContact;
    }
    
    @isTest static void fetchContactRecordsTest() {
        Test.startTest();
        	ADR_ContactController.fetchContactRecords();
        Test.stopTest();
    }
    
    @isTest static void fetchContactRecordsHomeworkTest() {
        Test.startTest();
        	ADR_ContactController.fetchContactRecordsHomework('Test', 'Test');
        Test.stopTest();
    }
}