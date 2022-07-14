@isTest
public class ADR_ContactEdit_Test {
	@testSetup static void setup(){
        Contact objContact = TestDataFactory.createContact('Test');
        insert objContact;
    }
    
    @isTest static void getLstContact(){
        Test.startTest();
        	ADR_ContactEdit.getLstContact();
        Test.stopTest();
    }
    
    @isTest static void updateContact(){
        List <Contact> lstContactFalse = new List<Contact>();
        
        List <Contact> lstContactTrue = TestDataFactory.createContactList('Test', 2);
        Test.startTest();
        	ADR_ContactEdit.updateContact(lstContactFalse);
        	ADR_ContactEdit.updateContact(lstContactTrue);
        Test.stopTest();
    }
    
}