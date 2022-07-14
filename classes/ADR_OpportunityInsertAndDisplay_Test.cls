@isTest
public class ADR_OpportunityInsertAndDisplay_Test {
	
    
	
    @isTest static void createOpportunity(){
        Opportunity objOpportunityTrue = TestDataFactory.createOpportunity('Test');
        //Opportunity objOpportunityFalse = TestDataFactory.createOpportunity();
        Opportunity objOpportunityFalse = new Opportunity();
        Test.startTest();
        	ADR_OpportunityInsertAndDisplay.createOpportunity(objOpportunityTrue);
        	ADR_OpportunityInsertAndDisplay.createOpportunity(objOpportunityFalse);
        Test.stopTest();
    }
    
    @isTest static void displayOpportunity(){
        
        Test.startTest();
        	ADR_OpportunityInsertAndDisplay.displayOpportunity();
        	
        Test.stopTest();
    }
}