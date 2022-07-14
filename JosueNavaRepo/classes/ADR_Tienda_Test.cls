@isTest
public class ADR_Tienda_Test {
	@testSetup static void setup(){
     	ADR_Tienda__c objCreateTienda = TestDataFactory.createTienda('Tienda Sur', 'Mayoreo', date.parse('22/09/2022'));
        INSERT objCreateTienda;
    }
    
    @isTest static void informacionTienda(){
        Test.startTest();
        	ADR_Tienda.informacionTienda();
        Test.stopTest();
    }
    
    @isTest static void informacionTiendas(){
        Test.startTest();
        	ADR_Tienda.informacionTienda('Tienda Sur');
        Test.stopTest();
    }
    
    @isTest static void informacionTiendasList(){
        Test.startTest();
        	ADR_Tienda.informacionTiendas();
        Test.stopTest();
    }
    

    
    @isTest static void informacionTiendaTipo(){
        Test.startTest();
        	ADR_Tienda.tipoTienda('Tienda Sur');
        Test.stopTest();
    }
    
    @isTest static void getMapTienda(){
        Test.startTest();
        	ADR_Tienda.getMapTienda();
        Test.stopTest();
    }
}