@isTest(SeeAllData=False)
public class ADR_OpportunityInsertAndDisplay_Test {
    
    @testSetup static void Setup(){
      Opportunity objOpportunity = TestDataFactory.createOpportunity('Finalizando');
      insert objOpportunity; 
    }  
    
	@istest static void createOpportunity(){
        Opportunity objOpportunity = TestDataFactory.createOpportunity('Finalizando');
        Test.startTest();
        ADR_OpportunityInsertAndDisplay.createOpportunity(objOpportunity);
        ADR_OpportunityInsertAndDisplay.createOpportunity(null);
        Test.stopTest();
    }
    
     @istest static void displayOpportunity(){
        Test.startTest();
        ADR_OpportunityInsertAndDisplay.displayOpportunity();
        Test.stopTest();
    }
}