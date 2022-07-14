@isTest
public class ADR_Opportunity_Test {
	@testSetup static void setup(){
        ADR_Tienda__c objTienda = TestDataFactory.createTienda('Tienda Sur',date.parse('22/09/2022'), 'Minorista');
        insert objTienda;
    }
	
    @isTest static void informacionTienda(){
        Test.startTest();
        	ADR_Tienda.informacionTienda();
        Test.stopTest();
    }
}