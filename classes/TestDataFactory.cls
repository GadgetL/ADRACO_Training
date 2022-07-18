@isTest
public class TestDataFactory {
    
    public static Account createAccount(string strName){
        Account objAccount = new Account();
        objAccount.Name = strName;
        return objAccount;
    }
    
    public static List<Account> createAccountList(string strName, integer intcont){
        List<Account> lstAccount = new List<Account>();
        Account objAccount = new Account();
        for(integer x=0; x<intCont; x++){
            lstAccount.add(createAccount(strName+x));
        }
        
        return lstAccount;
    }
    
    public static ADR_Tienda__c createTienda(string strNameTienda, string strtypeTienda, Date dtFechaTienda){
        ADR_Tienda__c objTienda = new ADR_Tienda__c();
        objTienda.Name = strNameTienda;
        objTienda.ADR_Type__c = strTypeTienda;
        objTienda.ADR_Fecha_Inauguracion__c = dtFechaTienda;
        return objTienda;
    }
    
    public static Contact createContatc(string strFirstName, string strLastName, string strEmail){
        Contact objContact = new Contact();
        objContact.FirstName = strFirstName;
        objContact.LastName = strLastName;
        objContact.Email = strEmail;
        return objContact;
    }
    
    public static Opportunity createOpportunity(string strName, string strStage, date dtClose){
        Opportunity objOpp = new Opportunity();
        objOpp.Name = strName;
        objOpp.StageName = strStage;
        objOpp.CloseDate = dtClose;
        return objOpp;
    }

    
}