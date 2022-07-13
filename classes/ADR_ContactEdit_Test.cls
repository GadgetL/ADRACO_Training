@isTest(SeeAllData=false)
public class ADR_ContactEdit_Test {
	@testSetup static void setup(){
        List<Contact> lstContact=new List<Contact>();
        lstContact=TestDataFactory.createContacts('Contact','Test',5);
        INSERT lstContact;
    }
    @isTest static void getLstContacts_test(){
        List<Contact> lstContact=new List<Contact>();
        Test.startTest();
        	ADR_ContactEdit.getLstContacts();
        Test.stopTest();
    }
    @isTest static void getLstContacts(){
        List<Contact> lstContact=new List<Contact>();
        Test.startTest();
        	ADR_ContactEdit.updateContact(lstContact);
        Test.stopTest();
    }
    @isTest static void getLstContactsEmpty(){
        Test.startTest();
        ADR_ContactEdit.updateContact(null);
        Test.stopTest();
    }
}