@isTest
public class TestDataFactory {
    public static Contact createContact(String strName,String strLastName){
        Contact objContact = new Contact();
        objContact.FirstName=strName;
        objContact.LastName=strLastName;
        
        return objContact;
    }
    
    public static Opportunity createOpportunity(String strName,date dateClose){
        Opportunity objOpportunity = new Opportunity();
        objOpportunity.Name=strName;
        objOpportunity.CloseDate = dateClose;
        objOpportunity.StageName = strName;
        
        return objOpportunity;
    }
    public static Account createAccount(String strName){
        Account objAccount = new Account();
        objAccount.Name=strName;
        
        return objAccount;
    }
    public static list<Account> createAccountList(String strName,Integer cont){
        List<Account> lstAccount = new list<Account>();
    
        for(Integer x=0;x<cont;x++){
            lstAccount.add(createAccount('Test' + x));
        }
        
        
        return lstAccount;
    }
    public static ADR_Tienda__c createTienda(String strName,string strType, date dateFecha){
        ADR_Tienda__c objTienda = new ADR_Tienda__c();
        objTienda.Name = strName;
        objTienda.ADR_Type__C = strType;
        objTienda.Fecha_inauguracion__c = dateFecha;
        return objTienda;
    }
}