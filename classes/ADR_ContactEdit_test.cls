@isTest(SeeAllData=false)
public class ADR_ContactEdit_test {
    
    @isTest static void setup(){
        Contact objContact1 = TestDataFactory.createContact('Prueba 1','Prueba 1');
        Contact objContact2 = TestDataFactory.createContact('Prueba 2','Prueba 2');
        INSERT objContact1;
        INSERT objContact2;
    }

    @isTest static void getLstContact(){
        Test.startTest();
        ADR_ContactEdit.getLstContact();
        Test.stopTest();
    }
      @isTest static void updateOpportunity(){
        
      	list<Contact> lstContact2 = [Select Id,FirstName,LastName,Title,Phone FROM Contact ORDER BY CreatedDate DESC LIMIT 2];
    	list<Contact> lstContact;
      
        Test.startTest();
        ADR_ContactEdit.updateContact(lstContact);
        ADR_ContactEdit.updateContact(lstContact2);
        Test.stopTest();
          
    }
}