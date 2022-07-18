@isTest(SeeAllData=false)
public class ADR_ContactEdit_Test {
		@testSetup static void setup(){
        Contact objContact = TestDataFactory.createContact('prueba','test');
        INSERT objContact;
    }
    
    static testmethod void displayContacts(){
         Test.startTest();
         	ADR_ContactEdit.getLstContacts();
         Test.stopTest();
    }
    
    @isTest static void updateContact(){
         List<Contact> lstContact = new List<Contact>();
        Test.startTest();
        ADR_ContactEdit.updateContacts(lstContact);
        Test.stopTest();
    }
    
    @isTest static void updateContactEmpty(){
        List<Contact> lstContact = new List<Contact>();
        Test.startTest();
        ADR_ContactEdit.updateContacts(null);
        Test.stopTest();
    }
}