@isTest(SeeAllData=false)
public class ADR_AccountInsertAndDisplay_test {
    @isTest static void createAccount(){
        Account objAccount = TestDataFactory.createAccount('Test');
        //objAccount.Name='Test';
        insert objAccount;
         Test.startTest();
        ADR_AccountInsertAndDisplay.createNewAccount(objAccount);
        System.debug('objAccount---->' + objAccount);
        Test.stopTest();
    }
    static testmethod void createAccount2(){
        Account objAccount = TestDataFactory.createAccount('Test');
        //objAccount.Name='Test';
        insert objAccount;
        Test.startTest();
        ADR_AccountInsertAndDisplay.displayAccounts();
        Test.stopTest();
    }

}