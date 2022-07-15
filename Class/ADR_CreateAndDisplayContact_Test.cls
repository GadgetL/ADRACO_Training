/************************************************************************************************************
 * Name: ADR_CreateAndDisplayContact_Test
 * Class test: ADR_CreateAndDisplayContact_Test
 * Autor: Francisco Reyes
 * Description: Class test for the class ADR_CreateAndDisplayContact.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 16-06-2022			| v0.1				| Creation of the methods test
*/
@isTest
public class ADR_CreateAndDisplayContact_Test {
    
    @isTest static void createContacts(){
        Contact objContact = TestDataFactory.createContact();
        Contact objCont = new Contact();
        Test.startTest();
       		ADR_CreateAndDisplayContactInformation.createContacts(objContact);
        	ADR_CreateAndDisplayContactInformation.createContacts(objCont);
        Test.stopTest();
    }
    static testmethod void displayContact(){
        
        Test.startTest();
        		ADR_CreateAndDisplayContactInformation.displayContact();
        Test.stopTest();
    }

}