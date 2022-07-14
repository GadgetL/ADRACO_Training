@isTest(SeeAllData=false)
public class ADR_AccountEdit_Test {
 		@testSetup static void setup(){
        Account objAccount = TestDataFactory.createAccount('Test');
        INSERT objAccount;
      }
    
    @isTest static void getLstAccount(){
        Test.startTest();
        ADR_AccountEdit.getLstAccount();
        Test.stopTest();
    }
    
     @isTest static void updateAccount(){
         List<Account> lstAccount = new List<Account>();
        Test.startTest();
        ADR_AccountEdit.updateAccount(lstAccount);
        Test.stopTest();
    }
    
    @isTest static void updateAccountEmpty(){
        List<Account> lstAccount = new List<Account>();
        Test.startTest();
        ADR_AccountEdit.updateAccount(null);
        Test.stopTest();
    }
    
}