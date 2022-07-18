@isTest
public class ADR_ContactEditTest {
	
    @isTest
    static void ADR_ContactEdit(){
        string strFirstName = 'Test';
        string strLastName = 'Testing';
        string strEmail = 'Test@gmail.com';
        Contact objContact = TestDataFactory.createContatc(strFirstName, strLastName, strEmail);
        INSERT objContact;
        List<Contact> lstContact = new List<Contact>();
        lstContact.add(objContact);
        Test.startTest();
        ADR_ContactEdit.getLstContacts();
        ADR_ContactEdit.updateContact(lstContact);
        Test.stopTest();
    }
    
    
    
}