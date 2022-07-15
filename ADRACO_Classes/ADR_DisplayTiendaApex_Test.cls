@isTest
public class ADR_DisplayTiendaApex_Test {
    
    @testSetup static void setup() {
        ADR_Tienda__c objTienda = TestDataFactory.createTienda('Test');
        INSERT objTienda;
    }
    
    @isTest static void fetchTiendaRecordsTest() {
        Test.startTest();
        	ADR_DisplayTiendaApex.fetchTiendaRecords();
        Test.stopTest();
    }
}