/************************************************************************************************************
 * Name: ADR_ContactEdit_Test
 * Class test: ADR_ContactEdit_Test
 * Autor: Francisco Reyes
 * Description: Class test for the class ADR_ContactEdit.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 16-06-2022			| v0.1				| Creation of the methods test
*/
@isTest
public class ADR_ContactEdit_Test {
    @testSetup static void setup(){
        List <Contact> lstContact = TestDataFactory.lstCreateContact();
        insert lstContact;
    }
    @isTest static void getLstContacts(){
        Test.startTest();
       		ADR_ContactEdit.getLstContacts();
        Test.stopTest();
    }
    @isTest static void updateContact(){
        List<Contact> lstContacts = ADR_ContactEdit.getLstContacts();
        List<Contact> lstContUpdate = new List<Contact>();
        for(Contact objCont : lstContacts){
            Contact objContUpdate = new Contact(FirstName = objCont.FirstName + 'update', Email=objCont.FirstName+'@edit.com');            
            lstContUpdate.add(objContUpdate);
        }
        Test.startTest();
       		ADR_ContactEdit.updateContact(lstContacts);
        Test.stopTest();
    }
    @isTest static void updateContact2(){
        List<Contact> lstContacts = new List<Contact>{ new Contact(FirstName ='Prueba 1')};
        Test.startTest();
       		ADR_ContactEdit.updateContact(lstContacts);
        Test.stopTest();
    }

}