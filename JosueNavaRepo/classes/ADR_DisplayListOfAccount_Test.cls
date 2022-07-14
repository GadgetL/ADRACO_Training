//metodos test para display Accounts
@isTest(SeeAllData=false)
public class ADR_DisplayListOfAccount_Test {

    @testSetup static void setup(){
        Account objAccount = TestDataFactory.createAccount('Test');
        INSERT objAccount;
    }
    
    static testmethod void fetchAccountRecords(){
         Test.startTest();
         	ADR_DisplayListOfAccount.fetchAccountRecords();
         Test.stopTest();
    }
    
    static testmethod void fetchAccountRecord(){
         Test.startTest();
         	ADR_DisplayListOfAccount.fetchAccountRecord('Test');
         Test.stopTest();
    }
}