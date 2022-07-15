/************************************************************************************************************
 * Name: ADR_DisplayListofContact_Test
 * Class test: ADR_DisplayListofContact_Test
 * Autor: Francisco Reyes
 * Description: Class test for the class ADR_DisplayListofContact.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 16-06-2022			| v0.1				| Creation of the methods test
*/
@isTest
public class ADR_DisplayListofContact_Test {
    @testSetup static void setup(){
        list<Contact> lstContact = TestDataFactory.lstCreateContact();
        insert lstContact;
    }
    @isTest static void fetchContactRecords(){
        Test.startTest();
        	ADR_DisplayListofContact.fetchContactRecords();
        	ADR_DisplayListofContact.fetchContactRecord('Test', 'firsttest@test.com');
        Test.stopTest();
    }

}