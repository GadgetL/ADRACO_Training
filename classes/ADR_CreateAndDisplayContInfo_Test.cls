/*************************************************************************************** 
* Name: ADR_CreateAndDisplayContInfo_Test
* Test: 
* Author: Valentín López Morales 
* Description: Required information to Contact Test
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 14-07-22 		  | v0.1 			| Contact Test
*/ 
@isTest(SeeAllData=false)
public class ADR_CreateAndDisplayContInfo_Test {
    /*
    * Method Name: setup
    * Description: Create test records once and then access them in each test method
    * Return Type: void
    * Parameters: 
    */
    @testSetup
    static void setup(){
        List<Contact> lstContact = new List<Contact>();
        lstContact.add(ADR_TestDataFactory.createContatc('Martha', 'Gloria','MG@test.com'));
        lstContact.add(ADR_TestDataFactory.createContatc('María', 'Pinal','Mp@test.com'));
        lstContact.add(ADR_TestDataFactory.createContatc('Juan', 'Garzo','JG@test.com'));
        
        INSERT lstContact;
    }
    
    /*
    * Method Name: createContact
    * Description: Create a test record of type Contact
    * Return Type: void
    * Parameters: 
	*/
    @isTest
    static void createContact(){
        Contact objContact = ADR_TestDataFactory.createContatc('Flora', 'Gloria','FG@test.com');
        Test.startTest();
        	ADR_CreateAndDisplayContactInformation.createContact(objContact);
        Test.stopTest();
    }
    
    /*
    * Method Name: createContactEmpty
    * Description: Create an empty test record of type Contact
    * Return Type: void
    * Parameters: 
	*/
    @isTest
    static void createContactEmpty(){
        Contact objContact = new Contact();
        Test.startTest();
        	ADR_CreateAndDisplayContactInformation.createContact(objContact);
        Test.stopTest();
    }
    
    /*
    * Method Name: displayContacts
    * Description: Create a list of test records of type Contact
    * Return Type: void
    * Parameters: 
	*/
    @isTest
    static void displayContacts(){
        List<Contact> lstContact = new List<Contact>();
        Test.startTest();
        	lstContact = ADR_CreateAndDisplayContactInformation.displayContacts();
        Test.stopTest();
    }
}