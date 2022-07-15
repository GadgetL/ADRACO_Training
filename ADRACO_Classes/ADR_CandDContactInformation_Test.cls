@isTest
public class ADR_CandDContactInformation_Test {
    @testSetup static void setup() {
        Contact objContact = TestDataFactory.createContact('Test');
        INSERT objContact;
    }
    
    @isTest static void createContactTest() {
        Contact objContact = TestDataFactory.createContact('Test');
        Test.startTest();
        	ADR_CreateAndDisplayContactInformation.createContact(objContact);
        Test.stopTest();
    }
    
    @isTest static void createContactTestEmpty() {
        Contact objContact = new Contact();
        Test.startTest();
        	ADR_CreateAndDisplayContactInformation.createContact(objContact);
        Test.stopTest();
    }
    
    @isTest static void displayListContactsTest() {
        Test.startTest();
        	ADR_CreateAndDisplayContactInformation.displayListContacts();
        Test.stopTest();
    }
}