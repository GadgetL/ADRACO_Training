@isTest(SeeAllData=false)
public class ADR_DisplayListOfOpportunity_Test {
	@testSetup static void setup(){
        List<Opportunity> lstOpportunity=new List<Opportunity>();
        lstOpportunity=TestDataFactory.createOpportunity('Test','Stage',date.today(),5);
        INSERT lstOpportunity;
    }
    @isTest static void fetchOpportunityRecords(){
        List<Opportunity> lstOpportunity=new List<Opportunity>();
        Test.startTest();
        	ADR_DisplayListOfOpportunity.fetchOpportunityRecords();
        Test.stopTest();
    }
    @isTest static void fetchOpportunityRecord(){
        List<Opportunity> lstOpportunity=new List<Opportunity>();
        Test.startTest();
        	ADR_DisplayListOfOpportunity.fetchOpportunityRecord('Test');
        Test.stopTest();
    }
}