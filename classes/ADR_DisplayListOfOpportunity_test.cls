@isTest(SeeAllData=false)
public class ADR_DisplayListOfOpportunity_test {
    @isTest static void setup(){
        Opportunity objOpportunity1 = TestDataFactory.createOpportunity('Prueba 1',date.parse('10/02/2022'));
        Opportunity objOpportunity2 = TestDataFactory.createOpportunity('Prueba 2',date.parse('10/02/2022'));
        insert objOpportunity1;
        insert objOpportunity2;
    }
     @isTest static void fetchOpportunityRecords(){
        Test.startTest();
        ADR_DisplayListOfOpportunity.fetchOpportunityRecords();
        Test.stopTest();
    }
    @isTest static void fetchOpportunityRecord(){
        Test.startTest();
        ADR_DisplayListOfOpportunity.fetchOpportunityRecord('Prueba 1');
        Test.stopTest();
    }

}