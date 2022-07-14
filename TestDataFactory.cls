/************************************************************************************************************
 * Name: TestDataFactory
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Creation DataFactory for use the class test.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | List the Contacts objects
*/
@isTest
public class TestDataFactory {
    public static Account creatAccount(string strName){
        Account objAccount = new Account(Name =strName);
        return objAccount;
    }
    public static List<Account> lstCreateAccount(){
        List<Account> lstAccount = new List<Account>{ new Account(Name ='Prueba 1'), new Account(Name ='Prueba 2'), new Account(Name ='Prueba 3')};
        return lstAccount;
    }
    
    public static ADR_Tienda__c createTienda(string strName, string strType, date dtFechaInaguracion){
        ADR_Tienda__c objTienda = new ADR_Tienda__c(Name=strName, ADR_Type__c=strType, ADR_Fecha_Inaguracion__c=dtFechaInaguracion);
        return objTienda;
    }
    public static Contact createContact(){
        Contact objContact = new Contact(FirstName='Prueba', LastName='Test');
        return objContact;
    }
    public static List<Contact> lstCreateContact(){
        List<Contact> lstContact = new List<Contact>{
            	new Contact(FirstName='Prueba', LastName='Test'),
                new Contact(FirstName='First', LastName='Test', Email='firsttest@test.com'),
                new Contact(FirstName='Kim', LastName='Shain')};
        return lstContact;
    }
     public static Opportunity createOppor(string strName){
        Opportunity objOpportunity = new Opportunity(Name=strName);
        return objOpportunity;
    }

}