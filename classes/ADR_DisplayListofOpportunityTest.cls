@isTest
public class ADR_DisplayListofOpportunityTest {
    @testSetup static void setup(){
        String strName = 'Test';
        String strStage = 'Prospecting';
        date dtClose = System.today();
        Opportunity objOpp = TestDataFactory.createOpportunity(strName, strStage, dtClose);
        INSERT objOpp;
    }
    
    
    @isTest
    static void ADR_DisplayListofOpportunity(){
        Opportunity objOpp = new Opportunity();
        Test.startTest();
        ADR_DisplayListofOpportunity.fetchOpportunityRecords();
        ADR_DisplayListofOpportunity.fetchOpportunityRecord('Test');
        Test.stopTest();
    }
}