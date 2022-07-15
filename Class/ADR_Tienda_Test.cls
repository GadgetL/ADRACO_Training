/************************************************************************************************************
 * Name: ADR_Tienda_Test
 * Class test: ADR_Tienda_Test
 * Autor: Francisco Reyes
 * Description: Class test for the class ADR_Tienda.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 16-06-2022			| v0.1				| Creation of the methods test
*/
@isTest
public class ADR_Tienda_Test {
    @testSetup static void setup(){
         ADR_Tienda__c objTda = TestDataFactory.createTienda('Tienda sur', 'mayoreo', date.parse('29/07/2022'));
        insert objTda;
         ADR_Tienda__c objTda2 = TestDataFactory.createTienda('Tienda Norte', 'mayoreo', date.parse('29/07/2022'));
        insert objTda2;
         ADR_Tienda__c objTda3 = TestDataFactory.createTienda('Tienda Centro', 'menudeo', date.parse('29/07/2022'));
        insert objTda3;
    }
    @isTest static void informacionTienda(){
        ADR_Tienda objTienda = new ADR_Tienda();
        Test.startTest();
       		objTienda.informacionTienda();
        Test.stopTest();
    }
     @isTest static void informacionTienda2(){
        ADR_Tienda objTienda = new ADR_Tienda();
        Test.startTest();
       		objTienda.informacionTienda('Tienda sur');
        Test.stopTest();
    }
     @isTest static void informacionTiendas(){
        ADR_Tienda objTienda = new ADR_Tienda();
        Test.startTest();
       		objTienda.informacionTiendas();
        Test.stopTest();
    }
     @isTest static void tipoTienda(){
        ADR_Tienda objTienda = new ADR_Tienda();
        Test.startTest();
       		objTienda.tipoTienda('Tienda sur');
        Test.stopTest();
    }
     @isTest static void idTienda(){
        ADR_Tienda objTienda = new ADR_Tienda();
        Test.startTest();
       		objTienda.idTienda();
        Test.stopTest();
    }

}