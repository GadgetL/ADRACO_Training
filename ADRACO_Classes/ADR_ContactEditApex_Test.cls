@isTest
public class ADR_ContactEditApex_Test {
    @testSetup static void setup() {
        Contact objContact = TestDataFactory.createContact('Test');
        INSERT objContact;
    }
    
    @isTest static void getLstContactTest() {
        Test.startTest();
        	ADR_ContactEditApex.getLstContact();
        Test.stopTest();
    }
    
    @isTest static void updateContactTestEmpty() {
        List<Contact> lstContact = new List<Contact>();
        
        Test.startTest();
        	ADR_ContactEditApex.updateContact(lstContact);
        Test.stopTest();
    }
    
    @isTest static void updateContactTest() {
        Contact objContact = TestDataFactory.createContact('Test1');
        List<Contact> lstContact = new List<Contact>();
        lstContact.add(objContact);
        
        Test.startTest();
        	ADR_ContactEditApex.updateContact(lstContact);
        Test.stopTest();
    }
}