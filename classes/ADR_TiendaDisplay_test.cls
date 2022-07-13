@isTest(SeeAllData=false)
public class ADR_TiendaDisplay_test {
    @isTest static void viewTienda(){
        Test.startTest();
        ADR_TiendaDisplay.displayTienda();
        Test.stopTest();
    }
    @isTest static void viewAccount(){
        Test.startTest();
        ADR_TiendaDisplay.getLstAccount();
        Test.stopTest();
    }
    @isTest static void updateAccount(){
        list<Account> lstAccount2 = [Select id,Name,Phone,Website,AccountNumber from Account Order By CreatedDate DESC Limit 2];
        list<Account> lstAccount;
        Test.startTest();
        ADR_TiendaDisplay.updateAccount(lstAccount);
        ADR_TiendaDisplay.updateAccount(lstAccount2);
        Test.stopTest();
    }

}