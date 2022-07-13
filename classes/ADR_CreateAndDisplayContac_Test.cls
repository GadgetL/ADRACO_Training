@isTest(SeeAllData=false)
public class ADR_CreateAndDisplayContac_Test {
	@testSetup static void setup(){
        List<Contact> lstContact=new List<Contact>();
        lstContact=TestDataFactory.createContacts('Contact','Test',5);
        INSERT lstContact;
    }
    @isTest static void createContact(){
        Contact objContact=TestDataFactory.createContact('Contact', 'Test');
        Test.startTest();
        	ADR_CreateAndDisplayContactInformation.createContact(objContact);
        Test.stopTest();
    }
    @isTest static void createContactEmpty(){
      Contact objContact= new Contact();  
        Test.startTest();
        	ADR_CreateAndDisplayContactInformation.createContact(objContact);
        Test.stopTest();
    }
    @isTest static void displayContacts(){
        List<Contact> lstContact=new List<Contact>();
        Test.startTest();
        	ADR_CreateAndDisplayContactInformation.displayContacts();
        Test.stopTest();
    }
}