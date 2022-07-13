@isTest
public class TestDataFactory {
    public static Account createAccount(string strName){
        Account objAccount=new Account();
        objAccount.Name=strName;
        return objAccount;
    }
    public static List<Account> createAccounts(string strName,integer cont){
        List<Account> lstAccounts=new List<Account>();
        
        for(integer x=0;x<cont;x++){
            lstAccounts.add(createAccount('test'+x));
        }
        return lstAccounts;
    } 
    public static ADR_Tienda__c createTienda(string strName,string strType,date dateFecha, string strIdAccount){
        ADR_Tienda__c objTienda=new ADR_Tienda__c();
        objTienda.Name=strName;
        objTienda.ADR_Type__c=strType;
        objTienda.ADR_Fecha_Inaguracion__c=dateFecha;
        objTienda.ADR_Account__c=strIdAccount;
        return objTienda;
    }
    public static Contact createContact(string strFirstName, string strLastName){
        Contact objContact=new Contact();
        objContact.FirstName=strFirstName;
    	objContact.LastName=strLastName;
        return objContact;
    }
    public static List<Contact> createContacts(string strFirstName,string strLastName,integer cont){
        List<Contact> lstContacts=new List<Contact>();
        
        for(integer x=0;x<cont;x++){
            lstContacts.add(createContact(strFirstName+x, strLastName+x));
        }
        return lstContacts;
    }
    public static Opportunity createOpportunity(string strName, string strStageName, date dateCloseDate){
        Opportunity objOpportunity=new Opportunity();
        objOpportunity.Name=strName;
        objOpportunity.StageName=strStageName;
        objOpportunity.CloseDate=dateCloseDate;
        return objOpportunity;
    }
    public static List<Opportunity> createOpportunity(string strName,string strStageName, date dateCloseDate,integer cont){
        List<Opportunity> lstOpportunity=new List<Opportunity>();
        
        for(integer x=0;x<cont;x++){
            lstOpportunity.add(createOpportunity(strName+x, strStageName+x, dateCloseDate));
        }
        return lstOpportunity;
    }
}