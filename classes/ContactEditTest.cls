@isTest
public class ContactEditTest {
	
    @testSetup static void setup(){
        String strFirstName = 'Test';
        String strLastName  = 'Contact';
        String strEmail = 'Test@gmail.com';
        Contact objContact = TestDataFactory.createContatc(strFirstName, strLastName, strEmail);
        INSERT objContact;
        List<Contact> lstContact = new List<Contact>();
        lstContact.add(objContact);
    }
    
    
    
    @isTest
    static void ContactEdit(){
        List<Contact> lstContact = new List<Contact>();
        Test.startTest();
        lstContact = ADR_ContactEdit.getLstContacts();
        ADR_ContactEdit.updateContact(lstContact);
        ADR_ContactEdit.updateContact(NULL);
        Test.stopTest();
    }
    
}