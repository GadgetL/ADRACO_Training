@isTest(SeeAllData=false)
public class ADR_Tienda_test {
	@isTest static void viewTienda(){
        Test.startTest();
        ADR_Tienda.informacionTienda();
        Test.stopTest();
    }
    @isTest static void setup(){
        Test.startTest();
        ADR_Tienda.informacionTienda();
        Test.stopTest();
    }
    @isTest static void viewTiendaOne(){
        ADR_Tienda__c objTienda = TestDataFactory.createTienda('Tienda test','Mayoreo', date.parse('29/07/2022'));
        insert objTienda;
        Test.startTest();
        ADR_Tienda.informacionTienda('Tienda test');
        Test.stopTest();
        
    }
    @isTest static void lstTienda(){
        Test.startTest();
        ADR_Tienda.informacionTiendas();
        Test.stopTest();
    }
    @isTest static void typeTienda(){
        ADR_Tienda__c objTienda = TestDataFactory.createTienda('Tienda test','Mayoreo', date.parse('29/07/2022'));
        insert objTienda;
        Test.startTest();
        ADR_Tienda.tipoTienda('Tienda test');
        Test.stopTest();
        
    }
    @isTest static void mapaTienda(){
        
        ADR_Tienda__c objTienda = TestDataFactory.createTienda('Tienda test','Mayoreo', date.parse('29/07/2022'));
        insert objTienda;
        Test.startTest();
        ADR_Tienda.mapaTienda('Tienda test');
        Test.stopTest();
    }
    
}