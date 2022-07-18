@isTest(SeeAllData=False)
public class ADR_Tienda_Test {
    @testSetup static void setup(){
        ADR_Tienda__c objTienda = TestDataFactory.createTienda('Tienda Sur',date.parse('29/07/2022'),'Mayoreo');
        insert objTienda;
    }
    
	 @istest static void informacionTienda(){
        Test.startTest();
        ADR_Tienda.informacionTienda();
        ADR_Tienda.informacionTienda('Tienda Sur');
        Test.stopTest();
    }
    
     @istest static void informacionTiendas(){
        Test.startTest();
        ADR_Tienda.informacionTiendas();
        Test.stopTest();
    }
    
     @istest static void tipoTienda(){
        Test.startTest();
        ADR_Tienda.tipoTienda('Tienda Sur');
        Test.stopTest();
    }
     @istest static void getMapTienda(){
        Test.startTest();
        ADR_Tienda.getMapTienda();
        Test.stopTest();
    }
    
}