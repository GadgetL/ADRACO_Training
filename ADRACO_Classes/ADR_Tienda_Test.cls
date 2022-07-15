@isTest
public class ADR_Tienda_Test {
    @testSetup static void setup() {
        ADR_Tienda__c objTienda = TestDataFactory.createTienda('Test');
        INSERT objTienda;
    }

    @isTest static void informacionTiendaSinParams() {
        ADR_Tienda objTiendaApex = new ADR_Tienda();
        Test.startTest();
        	objTiendaApex.informacionTienda();
        Test.stopTest();
    }
    
    @isTest static void informacionTiendaConParams() {
        ADR_Tienda objTiendaApex = new ADR_Tienda();
        Test.startTest();
        	objTiendaApex.informacionTienda('Test');
        Test.stopTest();
    }
    
     @isTest static void informacionTiendas() {
        ADR_Tienda objTiendaApex = new ADR_Tienda();
        Test.startTest();
        	objTiendaApex.informacionTiendas();
        Test.stopTest();
    }
    
    @isTest static void tipoTiendaConParams() {
        ADR_Tienda objTiendaApex = new ADR_Tienda();
        Test.startTest();
        	objTiendaApex.tipoTienda('Test');
        Test.stopTest();
    }
    
    @isTest static void generarMapa() {
        ADR_Tienda objTiendaApex = new ADR_Tienda();
        Test.startTest();
        	objTiendaApex.generarMapa();
        Test.stopTest();
    }
}