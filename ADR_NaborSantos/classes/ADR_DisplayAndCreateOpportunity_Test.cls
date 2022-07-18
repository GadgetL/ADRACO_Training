@isTest
public class ADR_DisplayAndCreateOpportunity_Test {
	@testSetup static void setup(){
        Opportunity objOpportunity = TestDataFactory.createOpportunity('Test', date.parse('29/07/2022'), 'Qualification');        
        Opportunity objOpportunity2 = TestDataFactory.createOpportunity('Test dos',date.parse('29/07/2022'), 'Qualification');        
        INSERT objOpportunity;
        INSERT objOpportunity2;
        List<Opportunity> lstOpportunity = new List<Opportunity>();
		lstOpportunity.add(objOpportunity);
        lstOpportunity.add(objOpportunity2);
    }
    
    @isTest static void displayContactList(){
        Test.startTest();
        ADR_DisplayAndCreateOpportunity.displayOpporList(); 
        Test.stopTest();        
    }
    
    @isTest static void createOpportunity(){
        Opportunity objOpportunity2 = TestDataFactory.createOpportunity('Test dos',date.parse('29/07/2022'), 'Qualification'); 
        Test.startTest();
        ADR_DisplayAndCreateOpportunity.createOpportunity(objOpportunity2); 
        Test.stopTest();        
    }
    
    @isTest static void createOpportunityEmpty(){
        Opportunity objOpportunity;
        Test.startTest();
        ADR_DisplayAndCreateOpportunity.createOpportunity(null); 
        Test.stopTest();        
    }
}