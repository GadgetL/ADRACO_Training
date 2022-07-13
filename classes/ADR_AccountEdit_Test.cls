@isTest(SeeAllData=false)
public class ADR_AccountEdit_Test {
	 @testSetup static void setup(){
        INSERT TestDataFactory.createAccounts('Test',10);
    }
    @isTest static void getLstAccounts(){
        List <Account> lstAccount=new List<Account>();
        Test.startTest();
        	ADR_AccountEdit.getLstAccounts();
        Test.stopTest();
    }
    @isTest static void updateAccount(){
        List <Account> lstAccount=new List<Account>();
        Test.startTest();
        	ADR_AccountEdit.updateAccount(lstAccount);
        Test.stopTest();
    }
    @isTest static void updateEmptyAccount(){
        Test.startTest();
        	ADR_AccountEdit.updateAccount(null);
        Test.stopTest();
    }
}