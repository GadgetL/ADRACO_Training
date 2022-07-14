@isTest
public class ADR_Tienda_Test {
     @testSetup static void setup(){
        ADR_Tienda__c objTienda = TestDataFactory.createTienda('Tienda Sur',date.parse('22/09/2022'), 'Minorista');
        insert objTienda;
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
    
    @isTest static void mapaTienda(){
        Test.startTest();
        	ADR_Tienda.mapaTienda();
        Test.stopTest();
    }
	
	@isTest static void fetchTiendaRecords(){
        Test.startTest();
        	ADR_Tienda.fetchTiendaRecords();
        Test.stopTest();
    }    
    
}