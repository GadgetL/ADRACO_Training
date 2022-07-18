@isTest(SeeAllData=True)
public class ADR_AccountInsertAndDisplay_Test {

    @istest static void createNewAccount(){
        Account objAccount= new Account();
        objAccount.Name='Text';
        insert objAccount;
        Test.startTest();
        ADR_AccountInsertAndDisplay.displayAccounts();
        Test.stopTest();
    }
    static testmethod void createNewAccount2(){
        Account objAccount= new Account();
        objAccount.Name='Text';
        insert objAccount;
        Test.startTest();
        ADR_AccountInsertAndDisplay.displayAccounts();
        Test.stopTest();
    }
}