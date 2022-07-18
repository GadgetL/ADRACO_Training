@isTest(SeeAllData=False)
public class ADR_DisplayListOfOpportunities_Test {
    @testSetup static void Setup(){
      Opportunity objOpportunity = TestDataFactory.createOpportunityR('Terminado');
      insert objOpportunity; 
    }  
	 @istest static void fetchOpportunityRecord(){
        Test.startTest();
        ADR_DisplayListOfOpportunities.fecthOpportunityRecord('Terminado');
        Test.stopTest();
    }
 
	  @istest static void fetchOpportunityRecords(){
        Test.startTest();
        ADR_DisplayListOfOpportunities.fetchOpportunityRecords();
        Test.stopTest();
    }
}