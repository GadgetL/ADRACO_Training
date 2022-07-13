@isTest(SeeAllData=false)
public class ADR_Tienda_Test {
    @testSetup static void setup(){
		INSERT TestDataFactory.createTienda('Test','Type Test',date.today(),'0018a00001pcPIRAA2');
    }
	@isTest static void InformacionTienda(){
        ADR_Tienda__c objTienda=new ADR_Tienda__c();
        
        Test.startTest();
        	ADR_Tienda.InformacionTienda();
        Test.stopTest();
    
    }
    @isTest static void InformacionTiendaParams(){
        ADR_Tienda__c objTienda=new ADR_Tienda__c();
 
        Test.startTest();
        	ADR_Tienda.InformacionTienda('Test');
        Test.stopTest();
    
    }
    @isTest static void InformacionTiendas(){
        ADR_Tienda__c objTienda=new ADR_Tienda__c();
        Test.startTest();
        	ADR_Tienda.InformacionTiendas();
        Test.stopTest();
    
    }
    @isTest static void TipoTienda(){
        ADR_Tienda__c objTienda=new ADR_Tienda__c();
        Test.startTest();
        	ADR_Tienda.TipoTienda('Test');
        Test.stopTest();
    
    }
    @isTest static void MapaTienda(){
        ADR_Tienda__c objTienda=new ADR_Tienda__c();
        Test.startTest();
        	ADR_Tienda.MapaTienda();
        Test.stopTest();
    
    }
    
}