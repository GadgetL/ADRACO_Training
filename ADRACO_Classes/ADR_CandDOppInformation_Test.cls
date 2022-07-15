@isTest
public class ADR_CandDOppInformation_Test {
    @testSetup static void setup() {
        Opportunity objOpportunity = TestDataFactory.createOpportunity('Test', 'Test', date.valueOf('2001-01-01 01:01:01'));
        INSERT objOpportunity;
    }
    
    @isTest static void createOpportunityTest() {
        Opportunity objOpportunity = TestDataFactory.createOpportunity('Test', 'Test', date.valueOf('2001-01-01 01:01:01'));
        Test.startTest();
        	ADR_CreateAndDisplayOppInformation.createOpportunity(objOpportunity);
        Test.stopTest();
    }
    
    @isTest static void createOpportunityTestEmpty() {
        Opportunity objOpportunity = new Opportunity();
        Test.startTest();
        	ADR_CreateAndDisplayOppInformation.createOpportunity(objOpportunity);
        Test.stopTest();
    }
    
    @isTest static void displayListOpportunitiesTest() {
        Test.startTest();
        	ADR_CreateAndDisplayOppInformation.displayListOpportunities();
        Test.stopTest();
    }
}