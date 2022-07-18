@isTest(SeeAllData=False)
public class ADR_CreateAndShowContactInformation_Test {
    
    @testSetup static void Setup(){
      Contact objContact = TestDataFactory.createContact('Juan','Dominguez');
      insert objContact; 
    }  
    
    @istest static void createNewContact(){
        Contact objContact = TestDataFactory.createContact('Juan','Dominguez');
        insert objContact; 
        Test.startTest();
        ADR_CreateAndDisplayContactInformation.createNewContact(objContact);
        ADR_CreateAndDisplayContactInformation.createNewContact(null);
        Test.stopTest();
    }
    
     @istest static void displayContact(){
        Test.startTest();
        ADR_CreateAndDisplayContactInformation.displayContact();
        Test.stopTest();
    }
    
}