/*************************************************************************************** 
* Name: ADR_Tienda_Test
* Test: 
* Author: Valentín López Morales 
* Description: Required information to Tienda test
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 14-07-22 		  | v0.1 			| Tienda Test
*/
@isTest(SeeAllData=false)
public class ADR_Tienda_Test {
    
    /*
    * Method Name: setup
    * Description: Create test records once and then access them in each test method
    * Return Type: void
    * Parameters: 
    */
    @testSetup
    public static void setup(){
        Date dtFecha = Date.today();
        List<ADR_Tienda__c> lstTiendas = new List<ADR_Tienda__c>();
        lstTiendas.add(ADR_TestDataFactory.createTienda('Tienda Sur', 'Mayoreo', dtFecha));
        lstTiendas.add(ADR_TestDataFactory.createTienda('Tienda Norte', 'Mayoreo', dtFecha));
        lstTiendas.add(ADR_TestDataFactory.createTienda('Tienda Este', 'Menudeo', dtFecha));
        lstTiendas.add(ADR_TestDataFactory.createTienda('Tienda Centro', 'Menudeo', dtFecha));
        INSERT lstTiendas;
    }
    
    /*
    * Method Name: informacionTienda
    * Description: Displays the information of Tiendas
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void informacionTienda(){
        //En caso de que no el metodo no tenga "static"
        ADR_Tienda Tienda = new ADR_Tienda();
        Test.startTest();
        	Tienda.informacionTienda();
        Test.stopTest();
    }
    
    /*
    * Method Name: informacionTienda
    * Description: Displays the information a Tienda specific
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void informacionNameTienda(){
        string strName = 'Tienda Sur';
        Test.startTest();
            ADR_Tienda.informacionTienda(strName);
        Test.stopTest();
    }
    
    /*
    * Method Name: informacionListTiendas
    * Description: Return a Tienda list
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void informacionListTiendas(){
        List<ADR_Tienda__c> lstTiendas = new List<ADR_Tienda__c>();
        Test.startTest();
        	lstTiendas = ADR_Tienda.informacionTiendas();
        Test.stopTest();
        system.debug('lstTiendas--->'+lstTiendas);
   	}
    
    /*
    * Method Name: informacionTipoTienda
    * Description: Return the type of Tienda
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void informacionTipoTienda(){
        string strTienda = 'Tienda Sur';
        string strTipo;
        Test.startTest();
            strTipo = ADR_Tienda.tipoTienda(strTienda);
        Test.stopTest();
        system.debug('Tipo--->'+strTipo);
    }
    
    /*
    * Method Name: informacionMapTienda
    * Description: Conversion of Tienda object to map
    * Return Type: void
    * Parameters: 
    */
    @isTest
    static void informacionMapTienda(){
        Test.startTest();
            ADR_Tienda.mapTienda();
        Test.stopTest();
    }
}