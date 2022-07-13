@isTest(SeeAllData=false)
public class ADR_OpportunityInsertAndDisplay_test {
     @isTest static void setup(){
        Opportunity objOpportunity1 = TestDataFactory.createOpportunity('Prueba 1',date.parse('10/02/2022'));
        Opportunity objOpportunity2 = TestDataFactory.createOpportunity('Prueba 2',date.parse('10/02/2022'));
        Insert objOpportunity1;
        Insert objOpportunity2;
    }
	@isTest static void createNewOpportunity(){
        Opportunity objOpportunity = TestDataFactory.createOpportunity('Prueba',date.parse('10/02/2022'));
        Opportunity objOpportunity2 = new Opportunity();
        Test.startTest();
        ADR_OpportunityInsertAndDisplay.createNewOpportunity(objOpportunity);
        ADR_OpportunityInsertAndDisplay.createNewOpportunity(objOpportunity2);

        Test.stopTest();
    }
    @isTest static void displayOpportunity(){
        Test.startTest();
        ADR_OpportunityInsertAndDisplay.displayOpportunity();
        Test.stopTest();
    }
}