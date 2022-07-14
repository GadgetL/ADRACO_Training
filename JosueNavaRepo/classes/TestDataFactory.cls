//Test data para los aura components
@isTest
public class TestDataFactory {
    //crea una cuenta
    public static Account createAccount(String strName){
         Account objAccount = new Account();
        objAccount.Name=strName;
        return objAccount;
    }
    
    //crea una lista de cuentas
    public static List<Account> createAccountList(String strName, Integer cont){
         List<Account> lstAccount = new List<Account>();
        Account objAccount = new Account();
        for(Integer x=0; x<cont; x++){
            lstAccount.add(createAccount('test'+x));
        }
        return lstAccount;
    }
    //actualizacion de cuenta
   public static void updateAccount(List<Account> lstAccount){
        try{
            UPDATE lstAccount;
        }catch(Exception e){
            System.debug('Exception-->'+e.getMessage());
        }
    }
    
    // creacion de tienda
    public static ADR_Tienda__c createTienda(String strName, String strType, Date dteInaguration){
         ADR_Tienda__c objCreateTienda = new ADR_Tienda__c();
        objCreateTienda.Name=strName;
        objCreateTienda.ADR_Type__c = strType;
        objCreateTienda.ADR_Fecha_Inaguracion__c= dteInaguration;
        return objCreateTienda;
    }
    
    //creacion de contacto
    public static Contact createContact(String strFirstName, String strLastName){
         Contact objContact = new Contact();
        	objContact.FirstName=strFirstName;
        	objContact.LastName=strLastName;
        return objContact;
    }
    
    //metodo duplicado por pruebas se puede utilizar el de arriba
    public static Contact createContactDos(String strLastName, String strEmail){
         Contact objContact = new Contact();
        	objContact.LastName=strLastName;
        	objContact.Email=strEmail;
        return objContact;
    }
    
    //actualiza contacto
    public static void updateContact(List<Contact> lstContact){
        try{
            UPDATE lstContact;
        }catch(Exception e){
            System.debug('Exception-->'+e.getMessage());
        }
    }
    
    //creacion de oportunidad
    public static Opportunity createOpportunity(String strName,String StageName, Date dateCloseDate){
         Opportunity objOpportunity = new Opportunity();
        	objOpportunity.Name=strName;
        	objOpportunity.StageName=StageName;
        	objOpportunity.CloseDate=dateCloseDate;
        return objOpportunity;
    }
    
    //actualizacion de oportunidades
    public static boolean updateOpportunities(List<Opportunity> lstOpportunities){
         try{
            UPDATE lstOpportunities;
             return true;
        }catch(Exception e){
            System.debug('Exception-->'+e.getMessage());
            return false;
        }
    }
}