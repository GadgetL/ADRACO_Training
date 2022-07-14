@isTest
public class ADR_ContactInsertAndDisplay_Test {
    
    @isTest static void createContact(){
        Contact objContactTrue = TestDataFactory.createContact('Test');
        //Opportunity objOpportunityFalse = TestDataFactory.createOpportunity();
        Contact objContactFalse = new Contact();
        Test.startTest();
        	ADR_ContactInsertAndDisplay.createContact(objContactTrue);
        	ADR_ContactInsertAndDisplay.createContact(objContactFalse);
        Test.stopTest();
    }
    
    @isTest static void displayContact(){
        
        Test.startTest();
        	ADR_ContactInsertAndDisplay.displayContact();
        	
        Test.stopTest();
    }
    

}