/*************************************************************************************** 
* Name: ADR_DisplayListOfContact_Test
* Test: 
* Author: Valentín López Morales 
* Description: Required information to Contact test
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 14-07-22 		  | v0.1 			| Contact Test
*/
@isTest(SeeAllData=false)
public class ADR_DisplayListOfContact_Test {
    
    /*
    * Method Name: setup
    * Description: Create test records once and then access them in each test method
    * Return Type: void
    * Parameters: 
    */
    @testSetup
    static void setup(){
        List<Contact> lstContact = new List<Contact>();
        lstContact.add(ADR_TestDataFactory.createContatc('Martha', 'Gloria', 'mg@test.com'));
        lstContact.add(ADR_TestDataFactory.createContatc('María', 'Pinal', 'mp@test.com'));
        lstContact.add(ADR_TestDataFactory.createContatc('Juan', 'Garzo','jg@test.com'));
        
        INSERT lstContact;
    }
    
    /*
    * Method Name: listContactRecords
    * Description: Displays a list of records of type Contact
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void listContactRecords(){
        List<Contact> lstContact = new List<Contact>();
        
        Test.startTest();
        	lstContact=ADR_DisplayListOfContact.listContactRecords();
        Test.stopTest();
    }
    
    /*
    * Method Name: listContactNameEmai
    * Description: Displays a list of Contacts with a specific name  or email
    * Return Type: void
    * Parameters: 
    */
    @isTest
    Static void listContactNameEmai(){
        List<Contact> lstContact = new List<Contact>();
        
        Test.startTest();
        	lstContact=ADR_DisplayListOfContact.listContactNameEmail('Gloria', 'jg@test.com');
        Test.stopTest();
    }
}