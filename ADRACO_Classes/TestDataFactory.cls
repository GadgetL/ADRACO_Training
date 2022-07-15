@isTest
public class TestDataFactory {
    public static Account createAccount(String strName) {
        Account objAccount = new Account();
        objAccount.Name = strName;
        return objAccount;
    } 
    
    public static ADR_Tienda__c createTienda(String strName) {
        ADR_Tienda__c objTienda = new ADR_Tienda__c();
        objTienda.Name = strName;
        objTienda.ADR_Type__c = 'Menudeo';
        return objTienda;
    } 
    
    public static Contact createContact(String strLastName) {
        Contact objContact = new Contact();
        objContact.LastName = strLastName;
        return objContact;
    } 
    
    public static Opportunity createOpportunity(String strName, String strStage, Date dtCloseDate) {
        Opportunity objOpportunity = new Opportunity();
        objOpportunity.Name = strName;
        objOpportunity.StageName = strStage;
        objOpportunity.CloseDate = dtCloseDate;
        return objOpportunity;
    } 
}