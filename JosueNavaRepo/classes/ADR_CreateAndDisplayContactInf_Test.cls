//clase de testeo 
@isTest(SeeAllData=false)
public class ADR_CreateAndDisplayContactInf_Test {
	@testSetup static void setup(){
        Contact objContact = TestDataFactory.createContact('prueba','test');
        INSERT objContact;
    }
    
    @isTest static void createContact(){
         Contact objContact = TestDataFactory.createContact('pruebaTest','Test');
        Test.startTest();
        	ADR_CreateAndDisplayContactInf.createContact(objContact);
        Test.stopTest();
    }
    
    @isTest static void createContactEmpty(){
         Contact objContactEmpty = new Contact();
        Test.startTest();
        	ADR_CreateAndDisplayContactInf.createContact(objContactEmpty);
        Test.stopTest();
    }
    
    static testmethod void displayAccounts(){
         Test.startTest();
         	ADR_CreateAndDisplayContactInf.displayContact();
         Test.stopTest();
    }
}