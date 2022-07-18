@isTest(SeeAllData=false)
public class ADR_DisplayStore_Test {
    @testSetup static void setup(){
     	ADR_Tienda__c objCreateTienda = TestDataFactory.createTienda('Tienda Sur', 'Mayoreo', date.parse('22/09/2022'));
        INSERT objCreateTienda;
        ADR_Tienda__c objCreateTiendaDos = TestDataFactory.createTienda('Tienda Sur', 'Mayoreo', date.parse('22/09/2022'));
        INSERT objCreateTiendaDos;
        ADR_Tienda__c objCreateTiendaTres = TestDataFactory.createTienda('Tienda Sur', 'Mayoreo', date.parse('22/09/2022'));
        INSERT objCreateTiendaTres;
    }
    

    @isTest static void displayLstStore(){
        Test.startTest();
        	ADR_DisplayStore.displayLstStore();
        Test.stopTest();
    }  
    
}