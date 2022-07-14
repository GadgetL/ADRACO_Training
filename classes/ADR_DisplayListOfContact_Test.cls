@isTest
public class ADR_DisplayListOfContact_Test {
    @testSetup static  void setup(){
        List <Contact> lstContact = TestDataFactory.createContactList('Test', 2);
    }
	
    @isTest static void fetchContactRecords(){
        
        Test.startTest();
        	ADR_DisplayListOfContact.fetchContactRecords();
        	
        Test.stopTest();
    }
    
    @isTest static void fetchContactRecord(){
        
        Test.startTest();
        	ADR_DisplayListOfContact.fetchContactRecord('Test','Test');
        	
        Test.stopTest();
    }

}