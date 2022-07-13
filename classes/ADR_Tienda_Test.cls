@isTest
public class ADR_Tienda_Test {
    @testSetup static void setup(){        
        ADR_Tienda__c objTienda = TestDataFactory.createTienda('Tienda Sur', 'Mayoreo', date.parse('29/07/2022'));
        INSERT objTienda;        
        ADR_Tienda__c objTiendaCen = TestDataFactory.createTienda('Tienda Centro', 'Mayoreo', date.parse('29/07/2022'));
        INSERT objTiendaCen; 
        ADR_Tienda__c objTiendaN = TestDataFactory.createTienda('Tienda Norte', 'Mayoreo', date.parse('29/07/2022'));
        INSERT objTiendaN; 
    }
    
	@isTest static void informacionTienda(){              
        Test.startTest();
        ADR_Tienda.informacionTienda();
        Test.stopTest();
    }
    
    @isTest static void informacionOtherTienda(){
		ADR_Tienda objTiendaClase = new ADR_Tienda();           
        Test.startTest();
        objTiendaClase.informacionTienda('Tienda Centro');
        Test.stopTest();
    }
    
    @isTest static void informacionTiendas(){
		ADR_Tienda objTiendaClase = new ADR_Tienda();          
        Test.startTest();
        objTiendaClase.informacionTiendas();
        Test.stopTest();
    }
    
    @isTest static void tipoTienda(){
        ADR_Tienda objTiendaClase = new ADR_Tienda();            
        Test.startTest();
        objTiendaClase.tipoTienda('Tienda Norte');
        Test.stopTest();        
    }    
    
    @isTest static void getMapTienda(){
        ADR_Tienda objTiendaClase = new ADR_Tienda();         
        Test.startTest();
        objTiendaClase.getMapTienda();
        Test.stopTest();        
    } 
}