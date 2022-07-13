@isTest(SeeAllData=false)
public class ADR_OpportunityInsertAndDisplay_Test {
	@testSetup static void setup(){
        List<Opportunity> lstOpportunity=new List<Opportunity>();
        lstOpportunity=TestDataFactory.createOpportunity('Test','Stage',date.today(),5);
        INSERT lstOpportunity;
    }
    @isTest static void createOpportunity(){
        Opportunity objOpportunity= TestDataFactory.createOpportunity('Test','Stage',date.today());
        Test.startTest();
        	ADR_OpportunityInsertAndDisplay.createOpportunity(objOpportunity);
        Test.stopTest();
    }
    @isTest static void createOpportunityEmpty(){
        Opportunity objOpportunity= new Opportunity();
        Test.startTest();
        	ADR_OpportunityInsertAndDisplay.createOpportunity(objOpportunity);
        Test.stopTest();
    }
    @isTest static void displayOpportunities(){
        List<Opportunity> lstContact=new List<Opportunity>();
        Test.startTest();
        	ADR_OpportunityInsertAndDisplay.displayOpportunities();
        Test.stopTest();
    }
    @isTest static void displayOpportunities2(){
        List<Opportunity> lstContact=new List<Opportunity>();
        Test.startTest();
        	ADR_OpportunityInsertAndDisplay.displayOpportunities2();
        Test.stopTest();
    }
}