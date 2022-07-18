@isTest(SeeAllData=false)
public class ADR_DisplayListOpportunity_Test {

    @testSetup static void setup(){
        Opportunity objOpportunity = TestDataFactory.createOpportunity('Test Opportunity', 'Test', Date.parse('02/05/20'));
        INSERT objOpportunity;
    }
    
    static testmethod void fetchOpportunityAccountRecords(){
         Test.startTest();
         	ADR_DisplayListOpportunity.fetchOpportunityAccountRecords();
         Test.stopTest();
    }
    
    static testmethod void fetchContactRecord(){
         Test.startTest();
         	ADR_DisplayListOpportunity.fetchOpportunityAccountRecord('Test');
         Test.stopTest();
    }
}