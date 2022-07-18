/*************************************************************************************** 
* Name: ADR_ContactEdit_Test
* Test: 
* Author: Valentín López Morales 
* Description: Required information to Contact test
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 14-07-22 		  | v0.1 			| Contact Test
*/
@isTest(SeeAllData=false)
public class ADR_ContactEdit_Test {
    
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
    * Method Name: getLstContacts
    * Description: Displays the information of Contacts
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void getLstContacts(){
        List<Contact> lstContact = new List<Contact>();
        Test.startTest();
        	lstContact = ADR_ContactEdit.getLstContacts();
        Test.stopTest();
    }
    
    /*
    * Method Name: updateContact
    * Description: Update the information of Contact
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void updateContact(){
        List<Contact> lstContact = [SELECT Id, FirstName, LastName FROM Contact LIMIT 1];
        
        lstContact[0].LastName='update LastName';
        
        Test.startTest();
        	ADR_ContactEdit.updateContact(lstContact);
        Test.stopTest();
    }
    
    /*
    * Method Name: updateContactEmpty
    * Description: Update the information an empty Contact
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void updateContactEmpty(){
        List<Contact> lstContact;
        
        Test.startTest();
        	ADR_ContactEdit.updateContact(lstContact);
        Test.stopTest();
    }
}