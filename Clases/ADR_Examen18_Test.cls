@isTest(SeeAllData=False)
public class ADR_Examen18_Test {
    
	@istest static void getListTienda(){
        Test.startTest();
        ADR_Examen18.getListTienda();
        Test.stopTest();
    }
    
    @istest static void getListAccount(){
        Test.startTest();
        ADR_Examen18.getListAccount();
        Test.stopTest();
    }
    
    @istest static void updateAccount(){
       List<Account> lstAccount= new List<Account>();
	   Test.startTest();
       ADR_Examen18.updateAccount(lstAccount);
       Test.stopTest();
    }   
}