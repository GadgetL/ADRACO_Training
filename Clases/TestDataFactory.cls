@isTest
//Inicialización o seteo de objeto que usemos
public class TestDataFactory {
    public static Account createAccount(String strName){
        Account objAccount = new Account();
        objAccount.Name= strName;
        return objAccount;
    }
    public static void createAccountR(String strName){
        Account objAccount = new Account();
        objAccount.Name= strName;
        insert objAccount;
    }
    public static Contact createContact(String strName, String strLast){
        Contact objContact = new Contact();
        objContact.FirstName= strName;
        objContact.LastName= strLast;
        return objContact;
    }
    public static Contact createContactR(String strName, String strEmail){
        Contact objContact = new Contact();
        objContact.LastName= strName;
        objContact.Email= strEmail;
        return objContact;
    }
	public static Opportunity createOpportunity(String strName){
        Opportunity objOpportunity = new Opportunity();
        objOpportunity.Name= strName;
        return objOpportunity;
    }    
    public static Opportunity createOpportunityR(String strName){
        Opportunity objOpportunity = new Opportunity();
        objOpportunity.Name= strName;
        return objOpportunity;
    }    
    
    public static ADR_Tienda__c createTienda(String strName, Date dtFecha, String strType){
        ADR_Tienda__c objTienda = new ADR_Tienda__c();
        objTienda.Name = strName;
        objTienda.ADR_Fecha_Inaguracion__c = dtFecha;
        objTienda.ADR_Type__c = strType;
        return objTienda;
    }

}