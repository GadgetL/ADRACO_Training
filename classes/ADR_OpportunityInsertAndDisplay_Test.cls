/*************************************************************************************** 
* Name: ADR_OpportunityInsertAndDisplay_Test
* Test: 
* Author: Valentín López Morales 
* Description: Required information to Opportunity test
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 14-07-22 		  | v0.1 			| Opportunity Test
*/
@isTest
public class ADR_OpportunityInsertAndDisplay_Test {
    
    /*
    * Method Name: setup
    * Description: Create test records once and then access them in each test method
    * Return Type: void
    * Parameters: 
    */
    @testSetup
    static void setup(){
        List<Opportunity> lstOpps = new List<Opportunity>();
        lstOpps.add(ADR_TestDataFactory.createOpportunity('TestOpp', 'Closed Won', Date.today()));
        lstOpps.add(ADR_TestDataFactory.createOpportunity('TestOpp2', 'Closed Won', Date.today()));
        lstOpps.add(ADR_TestDataFactory.createOpportunity('TestOpp3', 'Closed Won', Date.today()));
        
        INSERT lstOpps;
    }
    
    /*
    * Method Name: createOpportunity
    * Description: Create an opportunity record
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void createOpportunity(){
        Opportunity objOpp= ADR_TestDataFactory.createOpportunity('TestOpp4', 'Closed Won', Date.today());
        Test.startTest();
        	ADR_OpportunityInsertAndDisplay.createOpportunity(objOpp);
        Test.stopTest();
    }
    
    /*
    * Method Name: createOpportunityEmpty
    * Description: Create an empty opportunity record
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void createOpportunityEmpty(){
        Opportunity objOpp = new Opportunity();
        Test.startTest();
        	ADR_OpportunityInsertAndDisplay.createOpportunity(objOpp);
        Test.stopTest();
    }
    
    /*
    * Method Name: displayOpportunitys
    * Description: Displays a list of records of type Opportunity
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void displayOpportunitys(){
        List<Opportunity> lstOpps = new List<Opportunity>();
        Test.startTest();
        	lstOpps = ADR_OpportunityInsertAndDisplay.displayOpportunity();
        Test.stopTest();
    }
}