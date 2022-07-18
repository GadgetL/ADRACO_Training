@isTest(SeeAllData=false)
public class ADR_AccountInsertAndDisplay_Test {
	
    @isTest static void creatAccount(){
        Account objAccount = new Account();
        objAccount.Name = 'Test';
        Test.startTest();
        INSERT objAccount;
        Test.stopTest();
    }
    
     static  testmethod void creatAccount2(){
        Account objAccount = new Account();
        objAccount.Name = 'Test';
        INSERT objAccount;
         Test.startTest();
         ADR_AccountInsertAndDisplay.displayAccounts();
          ADR_AccountInsertAndDisplay.creatAccount(objAccount);
         Test.stopTest();
    }
}