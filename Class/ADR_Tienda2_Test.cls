/************************************************************************************************************
 * Name: ADR_Tienda2_Test
 * Class test: ADR_Tienda2_Test
 * Autor: Francisco Reyes
 * Description: Class test for the class ADR_DisplayTienda.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 16-06-2022			| v0.1				| Creation of the methods test
*/
@isTest
public class ADR_Tienda2_Test {
     @testSetup static void setup(){
         ADR_Tienda__c objTda = TestDataFactory.createTienda('Tienda sur', 'mayoreo', date.parse('29/07/2022'));
        insert objTda;
         ADR_Tienda__c objTda2 = TestDataFactory.createTienda('Tienda Norte', 'mayoreo', date.parse('29/07/2022'));
        insert objTda2;
         ADR_Tienda__c objTda3 = TestDataFactory.createTienda('Tienda Centro', 'menudeo', date.parse('29/07/2022'));
        insert objTda3;
    }    
    @isTest static void displayTienda(){
        Test.startTest();
       		ADR_DisplayTienda.displayTienda();
        Test.stopTest();
    }

}