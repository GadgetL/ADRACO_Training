@isTest
public class ADR_OpportunityController_Test {
    @testSetup static void setup() {
        Opportunity objOpportunity = TestDataFactory.createOpportunity('Test', 'Test', Date.valueOf('2001-01-01 01:01:01'));
        INSERT objOpportunity;
    }
    
    @isTest static void fetchOpportunityRecordsGeneralTest() {
        Test.startTest();
        	ADR_OpportunityController.fetchOpportunityRecordsGeneral();
        Test.stopTest();
    }
    
    @isTest static void fetchOpportunityRecordsFilterTest() {
        Test.startTest();
        	ADR_OpportunityController.fetchOpportunityRecordsFilter('Test');
        Test.stopTest();
    }
}