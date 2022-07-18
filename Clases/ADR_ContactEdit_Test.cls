@isTest(SeeAllData=False)
public class ADR_ContactEdit_Test {
    @testSetup static void Setup(){
      List<Contact> lstContact= new List<Contact>();
      insert lstContact; 
    }  
	@istest static void getListContact(){
        Test.startTest();
        Adr_ContactEdit.getListContact();
        Test.stopTest();
    }
    
    @istest static void updateAccount(){
       List<Contact> lstContact= new List<Contact>();
	   Test.startTest();
       Adr_ContactEdit.updateContact(lstContact);
        Adr_ContactEdit.updateContact(null);
       Test.stopTest();
    }   
}