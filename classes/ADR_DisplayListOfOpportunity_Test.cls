@isTest
public class ADR_DisplayListOfOpportunity_Test {
    @testSetup static  void setup(){
        List <Opportunity> lstOpportunity = TestDataFactory.createOpportunityList('Test', 2);
    }
	@isTest static void fetchOpportunityRecords(){
        
        Test.startTest();
        	ADR_DisplayListOfOpportunity.fetchOpportunityRecords();
        	
        Test.stopTest();
    }
    
    @isTest static void fetchOpportunityRecord(){
        
        Test.startTest();
        	ADR_DisplayListOfOpportunity.fetchOpportunityRecord('Test');
        	
        Test.stopTest();
    }
}