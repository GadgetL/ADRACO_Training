@isTest
public class ADR_DisplayAndCreateAccount_Test {
	@testSetup static void setup(){        
        Account objAccount = TestDataFactory.createAccount('Account Uno');
        INSERT objAccount;        
        Account objAccount2 = TestDataFactory.createAccount('Account Dos');
        INSERT objAccount2;  
        List<Account> lstAccount = new List<Account>();
    }
    
    @isTest static void displayAccountList(){              
        Test.startTest();
        ADR_DisplayAndCreateAccount.displayAccountList();
        Test.stopTest();
    }
    
    @isTest static void updateAccounts(){          
        List<Account> lstAccount = new List<Account>();
        Test.startTest();
        ADR_DisplayAndCreateAccount.updateAccounts(lstAccount);
        Test.stopTest();
    }
    
    @isTest static void updateAccountsEmpty(){          
        List<Account> lstAccountEmpty;
        Test.startTest();
        ADR_DisplayAndCreateAccount.updateAccounts(lstAccountEmpty);
        Test.stopTest();
    }
}