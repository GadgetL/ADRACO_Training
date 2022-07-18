@isTest
public class ADR_CreateAndDisplayContactTest {
	
    @testSetup static void setup(){
        string strFirstName = 'Test';
        string strLastName = 'Testing';
        string strEmail = 'Test@gmail.com';
        Contact objContact = TestDataFactory.createContatc(strFirstName, strLastName, strEmail);
        INSERT objContact;
    }
    
    
    
    @isTest
    static void ADR_CreateAndDisplayContactInformation(){
        Contact objContact = new Contact();
        Test.startTest();
        ADR_CreateAndDisplayContactInformation.displayContactList();
        ADR_CreateAndDisplayContactInformation.createNewContact(objContact);
        Test.stopTest();
    }
}