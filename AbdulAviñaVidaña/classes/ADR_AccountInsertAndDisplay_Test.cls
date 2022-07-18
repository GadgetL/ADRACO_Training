/**
Clase Test para insertar y mostrar una cuenta, utiliza metodos de
la clase testDataFactory
 */

@isTest(SeeAllData=false)
//(SeeAllData=false) esta etiqueta es mala practica tenerla en true, por defecto es false
public class ADR_AccountInsertAndDisplay_Test {
    @testSetup static void setup(){
        Account objAccount = TestDataFactory.createAccount('Test');
        INSERT objAccount;
    }
    
    @isTest static void createAccount(){
        Account objAccount = TestDataFactory.createAccount('Test');
        Test.startTest();
        	ADR_AccountInsertAndDisplay.createAccount(objAccount);
        System.debug('objAccount--->'+objAccount);
        Test.stopTest();
    }
     @isTest static void createAccountEmpty(){
         Account objAccountEmpty = new Account();
        Test.startTest();
        	ADR_AccountInsertAndDisplay.createAccount(objAccountEmpty);
        Test.stopTest();
    }
    //segunda forma de crear un metodo
     static testmethod void displayAccounts(){
         Test.startTest();
         	ADR_AccountInsertAndDisplay.displayAccounts();
         Test.stopTest();
    }
    
}