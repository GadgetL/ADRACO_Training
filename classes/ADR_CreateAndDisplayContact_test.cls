@isTest(SeeAllData=false)
public class ADR_CreateAndDisplayContact_test {
    @isTest static void setup(){
        Contact objContact1 = TestDataFactory.createContact('Prueba 1','Prueba 1');
        Contact objContact2 = TestDataFactory.createContact('Prueba 2','Prueba 2');
        INSERT objContact1;
        INSERT objContact2;
    }


    @isTest static void displayContactList(){
        
        Test.startTest();
        ADR_CreateAndDisplayContactInformation.displayContactList();

        Test.stopTest();
    }
     @isTest static void createNewContact(){
        Contact objContact = TestDataFactory.createContact('Prueba','Prueba');
        Contact objContact2;
        Test.startTest();
        ADR_CreateAndDisplayContactInformation.createNewContact(objContact);
		ADR_CreateAndDisplayContactInformation.createNewContact(objContact2);
        Test.stopTest();
    }
}