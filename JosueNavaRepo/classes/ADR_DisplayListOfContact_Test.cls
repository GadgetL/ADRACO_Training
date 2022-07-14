@isTest(SeeAllData=false)
public class ADR_DisplayListOfContact_Test {

    @testSetup static void setup(){
        Contact objContact = TestDataFactory.createContactDos('Test','test@gmail.com');
        INSERT objContact;
    }
    
    static testmethod void fetchContactRecords(){
         Test.startTest();
         	ADR_DisplayListOfContact.fetchContactRecords();
         Test.stopTest();
    }
    
    static testmethod void fetchContactRecord(){
         Test.startTest();
         	ADR_DisplayListOfContact.fetchContactRecord('strLastName', 'strEmail');
         Test.stopTest();
    }
}