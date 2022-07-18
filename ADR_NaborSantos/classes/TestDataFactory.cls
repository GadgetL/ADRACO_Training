@isTest
public class TestDataFactory {
    public static Account createAccount(String strName){
        Account objAccount = new Account();
        objAccount.Name = strName;
        return objAccount;
    }    
    
    public static ADR_Tienda__c createTienda(String strName, String strTipo, date dateInaguracion){
        ADR_Tienda__c objTienda = new ADR_Tienda__c();
        objTienda.Name = strName;
        objTienda.ADR_Type__c= strTipo;
        objTienda.ADR_Fecha_Inaguracion__c = dateInaguracion;
        return objTienda;
    }
    
    public static Contact createContact(String srtFirstName, String strLastName){
        Contact objContact = new Contact();
        objContact.FirstName = srtFirstName;
        objContact.LastName = strLastName;
        return objContact;
    }
    
    public static Opportunity createOpportunity(String srtFirstName, date dateCloseDate, String strStageName){
        Opportunity objOpportunity = new Opportunity();
        objOpportunity.Name = srtFirstName;
        objOpportunity.CloseDate = dateCloseDate;
        objOpportunity.StageName = strStageName;
        return objOpportunity;
    }
}