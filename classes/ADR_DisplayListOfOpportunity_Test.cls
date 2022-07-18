/*************************************************************************************** 
* Name: ADR_ContactEdit_Test
* Test: 
* Author: Valentín López Morales 
* Description: Required information to Opportunities test
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 14-07-22 		  | v0.1 			| Opportunity Test
*/
@isTest(SeeAllData=false)
public class ADR_DisplayListOfOpportunity_Test {
    
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
    * Method Name: lstOppAccount
    * Description: Displays the information of the Opportunities with the related accounts
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void lstOppAccount(){
        List<Opportunity> lstOpps = new List<Opportunity>();
        
        Test.startTest();
        	lstOpps=ADR_DisplayListOfOpportunity.lstOppAccount();
        Test.stopTest();
    }
    
    /*
    * Method Name: lstOppByName
    * Description: Displays the information of an Opportunity specific
    * Return Type: void
    * Parameters: 
    */
    @isTest
    Static void lstOppByName(){
        List<Opportunity> lstOpps = new List<Opportunity>();
        
        Test.startTest();
        	lstOpps=ADR_DisplayListOfOpportunity.lstOppByName('TestOpp2');
        Test.stopTest();
    }
}