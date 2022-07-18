/*
Clase test de opportunity, utiliza metodos de la clase testDataFactory
 */
@isTest(SeeAllData=false)
public class ADR_CreateOpportunity_Test {

     @testSetup static void setup(){
        Opportunity objOpportunity = TestDataFactory.createOpportunity('OpportunityTest','Test', Date.parse('2/05/22'));
        INSERT objOpportunity;
    }
    
    @isTest static void createOpportunity(){
        Opportunity objOpportunity = TestDataFactory.createOpportunity('OpportunityTest','Test', Date.parse('2/05/22'));
        Test.startTest();
        	ADR_CreateOpportunity.createOpportunity(objOpportunity);
        System.debug('objOpportunity--->'+objOpportunity);
        Test.stopTest();
    }
    
    @isTest static void createOpportunityEmpty(){
        Opportunity objOpportunityEmpty = new Opportunity();
        Test.startTest();
        	ADR_CreateOpportunity.createOpportunity(objOpportunityEmpty);
        System.debug('objOpportunityEmpty--->'+objOpportunityEmpty);
        Test.stopTest();
    }
    
    static testmethod void displayOpportunity(){
         Test.startTest();
         	ADR_CreateOpportunity.displayOpportunity();
         Test.stopTest();
    }
}