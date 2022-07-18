@isTest(SeeAllData=false)
public class ADR_ContactEdit_Test {
    @testSetup static void setup(){
        Contact objContact = TestDataFactory.createContact('Test', 'Contact');        
        Contact objContactTwo = TestDataFactory.createContact('Test dos', 'Contact dos');        
        INSERT objContact;
        INSERT objContactTwo;
        List<Contact> lstContact = new List<Contact>();
		lstContact.add(objContact);
        lstContact.add(objContactTwo);
    }
    
    @isTest static void getLstContacts(){
        Test.startTest();
        ADR_ContactEdit.getLstContacts(); 
        Test.stopTest();        
    }
    
    @isTest static void updateContacts(){
        List<Contact> lstContact = new List<Contact>();
        Test.startTest();
        ADR_ContactEdit.updateContacts(lstContact); 
        Test.stopTest(); 
    }
    
    @isTest static void updateContactsEmpty(){
        List<Contact> lstContact;
        Test.startTest();
        ADR_ContactEdit.updateContacts(lstContact); 
        Test.stopTest(); 
    }
}