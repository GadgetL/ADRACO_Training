@isTest
public class ADR_DisplayListofContactTest {
		
    @testSetup static void setup(){
        String strFirstName = 'Test';
        String strLastName  = 'Contact';
        String strEmail = 'Test@gmail.com';
        Contact objContact = TestDataFactory.createContatc(strFirstName, strLastName, strEmail);
        INSERT objContact;
        
    }
    
    @isTest
    static void ADR_DisplayListofContact(){
        Contact objContact = new Contact();
        Test.startTest();
        ADR_DisplayListofContact.fetchContactRecords();
        ADR_DisplayListofContact.fetchContactRecord('Test', '@Test');
    }
}