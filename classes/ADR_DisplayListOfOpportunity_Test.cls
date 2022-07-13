@isTest
public class ADR_DisplayListOfOpportunity_Test {
	@testSetup static void setup(){
        Opportunity objOpportunity = TestDataFactory.createOpportunity('Test', date.parse('29/07/2022'), 'Qualification');        
        Opportunity objOpportunity2 = TestDataFactory.createOpportunity('Test dos',date.parse('29/07/2022'), 'Qualification');        
        INSERT objOpportunity;
        INSERT objOpportunity2;
        List<Opportunity> lstOpportunity = new List<Opportunity>();
		lstOpportunity.add(objOpportunity);
        lstOpportunity.add(objOpportunity2);
    }
    
    @isTest static void fetchOpportunityRecord(){
        Test.startTest();
        ADR_DisplayListOfOpportunity.fetchOpportunityRecord(); 
        Test.stopTest();        
    }
    
    @isTest static void fetchOpportunityRecordName(){
        Test.startTest();
        ADR_DisplayListOfOpportunity.fetchOpportunityRecordName('','','','',''); 
        Test.stopTest();        
    }
}