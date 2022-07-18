@isTest(SeeAllData=False)
public class ADR_DisplayListOfContact_Test {
     @testSetup static void Setup(){
      Contact objContact = TestDataFactory.createContactR('Hernandez','her@gmail.com');
      insert objContact; 
    }  
	 @istest static void fetchContactRecord(){
        Test.startTest();
        ADR_DisplayListOfContact.fetchContactRecord('Luis','her@gmail.com');
        Test.stopTest();
    }
	@istest static void fetchContactRecords(){
        Test.startTest();
       ADR_DisplayListOfContact.fetchContactRecords();
        Test.stopTest();
    }
}