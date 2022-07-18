@isTest
public class ADR_CreateAndDisplayContactInf_Test {
	@testSetup static void setup(){
        Contact objContact = TestDataFactory.createContact('Test', 'Contact');        
        Contact objContactTwo = TestDataFactory.createContact('Test dos', 'Contact dos');        
        INSERT objContact;
        INSERT objContactTwo;
        List<Contact> lstContact = new List<Contact>();
		lstContact.add(objContact);
        lstContact.add(objContactTwo);
    }
    
    @isTest static void displayContactList(){
        Test.startTest();
        ADR_CreateAndDisplayContactInformation.displayContactList(); 
        Test.stopTest();        
    }
    
    @isTest static void createNewContact(){
        Contact objContact = TestDataFactory.createContact('New', 'Contact'); 
        Test.startTest();
        ADR_CreateAndDisplayContactInformation.createNewContact(objContact); 
        Test.stopTest();        
    }
    
    @isTest static void createNewContactEmpty(){
        Contact objContact; 
        Test.startTest();
        ADR_CreateAndDisplayContactInformation.createNewContact(objContact); 
        Test.stopTest();        
    }
}