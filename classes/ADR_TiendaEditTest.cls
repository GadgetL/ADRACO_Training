@isTest
public class ADR_TiendaEditTest {
	
    @isTest
    static void getLstTiendas(){
        Test.startTest();
        ADR_TiendaEdit.getLstTiendas();
        Test.stopTest();    
    }
    
    @isTest
    static void updateTiendas(){
        List<ADR_Tienda__c> lstTiendas;
        List<ADR_Tienda__c> lstTiendas2 = [SELECT Id, Name, CreatedDate, ADR_Type__c FROM ADR_Tienda__c LIMIT 2]; 
        Test.startTest();
        ADR_TiendaEdit.updateTiendas(lstTiendas);
        ADR_TiendaEdit.updateTiendas(lstTiendas2);
        Test.stopTest();
    }
    
   
}