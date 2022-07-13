@isTest(SeeAllData=false)
public class ADR_DisplayListOfContact_test {
	@isTest static void setup(){
        Contact objContact1 = TestDataFactory.createContact('Prueba','Prueba');
        Contact objContact2 = TestDataFactory.createContact('Prueba 2','Prueba 2');
        insert objContact1;
        insert objContact2;
      
    }
    @isTest static void fetchContactRecord(){
        Test.startTest();
        ADR_DisplayListOfContact.fetchContactRecord();
        Test.stopTest();
    }
    @isTest static void fetchContactRecords(){
        Test.startTest();
        ADR_DisplayListOfContact.fetchContactRecords('Prueba','');
        Test.stopTest();
    }
}