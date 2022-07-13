@isTest(SeeAllData=false)
public class ADR_DisplayListOfAccount_Test {
	@testSetup static void setup(){
        List<Contact> lstContact=new List<Contact>();
        List<Account> lstAccount=new List<Account>();
        lstContact=TestDataFactory.createContacts('Contact','Test',5);
        lstAccount=TestDataFactory.createAccounts('Test',5);
        INSERT lstContact;
        INSERT lstAccount;
    }
    @isTest static void fetchAccountRecords(){
        List<Account> lstAccount=new List<Account>();
        Test.startTest();
        	ADR_DisplayListOfAccount.fetchAccountRecords();
        Test.stopTest();
    } 
    @isTest static void fetchContactRecords(){
    	List<Contact> lstContact=new List<Contact>();  
        Test.startTest();
        	ADR_DisplayListOfAccount.fetchContactRecords();
        Test.stopTest();
    }
    @isTest static void fetchAccountRecord(){
        List<Contact> lstContact=new List<Contact>();  
        Test.startTest();
        	ADR_DisplayListOfAccount.fetchAccountRecord('Contact');
        Test.stopTest();
    }
    @isTest static void fetchContactRecord(){
        List<Contact> lstContact=new List<Contact>();  
        Test.startTest();
        	ADR_DisplayListOfAccount.fetchContactRecord('Contact','phone');
        Test.stopTest();
    }
}