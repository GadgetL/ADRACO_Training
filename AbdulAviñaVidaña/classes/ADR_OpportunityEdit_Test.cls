@isTest(SeeAllData=false)
public class ADR_OpportunityEdit_Test {

    @testSetup static void setup(){
        Opportunity objOpportunity = TestDataFactory.createOpportunity('OpportunityTest','Test', Date.parse('2/05/22'));
        INSERT objOpportunity;
    }
    
    static testmethod void getLstOpportunities(){
         Test.startTest();
         	ADR_OpportunityEdit.getLstOpportunities();
         Test.stopTest();
    }
    
    @isTest static void updateOpportunities(){
         List<Opportunity> lstOpportunity= new List<Opportunity>();
        Test.startTest();
        ADR_OpportunityEdit.updateOpportunities(lstOpportunity);
        Test.stopTest();
    }
    
    @isTest static void updateOpportunityEmpty(){
        List<Opportunity> lstOpportunityEmpty= new List<Opportunity>();
        Test.startTest();
        ADR_OpportunityEdit.updateOpportunities(null);
        Test.stopTest();
    }
}