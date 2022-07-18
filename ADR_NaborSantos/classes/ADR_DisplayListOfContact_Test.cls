@isTest
public class ADR_DisplayListOfContact_Test {
	@testSetup static void setup(){
        Contact objContact = TestDataFactory.createContact('Test', 'Contact');        
        Contact objContactTwo = TestDataFactory.createContact('Test dos', 'Contact dos');        
        INSERT objContact;
        INSERT objContactTwo;
        List<Contact> lstContact = new List<Contact>();
		lstContact.add(objContact);
        lstContact.add(objContactTwo);
    }
    
    @isTest static void fetchContactRecords(){
        Test.startTest();
        ADR_DisplayListOfContact.fetchContactRecords(); 
        Test.stopTest();        
    }
    
    @isTest static void fetchAccountRecord(){
        Test.startTest();
        ADR_DisplayListOfContact.fetchContactRecord('', ''); 
        Test.stopTest();        
    }    
}