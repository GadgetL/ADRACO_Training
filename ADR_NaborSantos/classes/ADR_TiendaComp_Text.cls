@isTest
public class ADR_TiendaComp_Text {
	@testSetup static void setup(){        
        ADR_Tienda__c objTienda = TestDataFactory.createTienda('Tienda Sur', 'Mayoreo', date.parse('29/07/2022'));
        INSERT objTienda;        
        ADR_Tienda__c objTiendaCen = TestDataFactory.createTienda('Tienda Centro', 'Mayoreo', date.parse('29/07/2022'));
        INSERT objTiendaCen; 
        ADR_Tienda__c objTiendaN = TestDataFactory.createTienda('Tienda Norte', 'Mayoreo', date.parse('29/07/2022'));
        INSERT objTiendaN; 
    }
    
    @isTest static void lstTiendasApex(){              
        Test.startTest();
        ADR_TiendaComp.lstTiendasApex();
        Test.stopTest();
    }
}