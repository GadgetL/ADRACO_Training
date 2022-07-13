@isTest(SeeAllData=false)
public class ADR_DisplayListOfTienda_Test {
	@testSetup static void setup(){
		INSERT TestDataFactory.createTienda('Test','Type Test',date.today(),'0018a00001pcPIRAA2');
    }
	@isTest static void fetchTiendaRecords(){
        ADR_Tienda__c objTienda=new ADR_Tienda__c();
        
        Test.startTest();
        	ADR_DisplayListOfTienda.fetchTiendaRecords();
        Test.stopTest();
    
    }
}