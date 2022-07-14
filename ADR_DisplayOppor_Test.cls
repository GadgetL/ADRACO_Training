/************************************************************************************************************
 * Name: ADR_DisplayOppor_Test
 * Class test: ADR_DisplayOppor_Test
 * Autor: Francisco Reyes
 * Description: Class test for the class ADR_DisplayOpportunity.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 16-06-2022			| v0.1				| Creation of the methods test
*/
@isTest
public class ADR_DisplayOppor_Test {
     @isTest static void fetchOpportunityRecords(){
        Test.startTest();
        	ADR_DisplayOpportunity.fetchOpportunityRecords();
        	ADR_DisplayOpportunity.fetchOpportunityRecor('Burlington Textiles Corp of America');
        Test.stopTest();
    }

}