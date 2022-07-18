@isTest
public class ADR_DisplayListofAccountTest {
	
    @testSetup static void setup(){
        
        String strFirstName = 'Test';
        String strLastName  = 'Contact';
        String strEmail = 'Test@gmail.com';
        Contact objContact = TestDataFactory.createContatc(strFirstName, strLastName, strEmail);
        INSERT objContact;
        
    }
    
    @isTest
    static void ADR_DisplayListofAccountTest(){
        List<Account> lstAccount = new List<Account>();
        List<Contact> lstContact = new List<Contact>();
        Contact objContact = new Contact();
        lstContact.add(objContact);
        Test.startTest();
        ADR_DisplayListofAccount.fetchAccountRecords();
        ADR_DisplayListofAccount.fetchAccountRecords('Test');
        lstContact = ADR_DisplayListofAccount.fetchContactRecords('Test', 'Test@gmail.com');
        Test.stopTest();
		
    }
}