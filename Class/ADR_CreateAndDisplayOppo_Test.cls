/************************************************************************************************************
 * Name: ADR_CreateAndDisplayOppo_Test
 * Class test: ADR_CreateAndDisplayOppo_Test
 * Autor: Francisco Reyes
 * Description: Class test for the class ADR_CreateAndDisplayOppo.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 16-06-2022			| v0.1				| Creation of the methods test
*/
@isTest
public class ADR_CreateAndDisplayOppo_Test {
    @isTest static void createOpportunitys(){
        Opportunity objOpportunity = TestDataFactory.createOppor('strName opportunity');
        Opportunity objOppor = new Opportunity();
        Test.startTest();
       		ADR_CreateAndDisplayOppoInformation.createOpportunitys(objOpportunity);
        	ADR_CreateAndDisplayOppoInformation.createOpportunitys(objOppor);
        Test.stopTest();
    }
    static testmethod void displayOpportunitys(){
        
        Test.startTest();
        		ADR_CreateAndDisplayOppoInformation.displayOpportunitys();
        Test.stopTest();
    }

}