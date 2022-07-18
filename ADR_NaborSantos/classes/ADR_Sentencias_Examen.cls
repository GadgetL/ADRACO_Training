public class ADR_Sentencias_Examen {
    
    public static void insertA(){
        Account objAccount = new Account();
        objAccount.Name = 'Account Sentences';
        objAccount.Phone = '9345768736';
        objAccount.Type = 'Channel Partner / Reseller';
        INSERT objAccount;
    }
    public static void insertContact(){
        Account objAccount = new Account();
        objAccount.Name = 'Account Sentences';
        objAccount.Phone = '9345768736';
        objAccount.Type = 'Channel Partner / Reseller';
        INSERT objAccount;
        String strAccountId = objAccount.Id;
        System.debug('Cuenta Creada --> ' + objAccount);
        for(Integer i = 1; i <= 2; i++){
            Contact objContact = new Contact();
            objContact.AccountId = strAccountId;
            objContact.FirstName = 'Contact ' + i;
            objContact.LastName = 'Account ' + strAccountId;
            objContact.Phone = '978654768' + i;
            objContact.Languages__c = 'English';
            INSERT objContact;
            System.debug('Contacto Creado --> ' + objContact);
        }        
        List<Contact> ltsContactQuery = [SELECT Id, FirstName, LastName, Languages__c, CreatedDate FROM Contact ORDER BY CreatedDate DESC];
        System.debug('Contactos --> ' + ltsContactQuery);
    }
    
    public static void updateContact(){
        List<Contact> ltsContact =[SELECT Id, FirstName, LastName, Languages__c FROM Contact ORDER BY CreatedDate DESC LIMIT 2];
        for(Contact objContact:ltsContact){
            objContact.FirstName = 'Contact';
            objContact.LastName = 'Account';
            objContact.Languages__c = 'Spanish';            
            System.debug('Contacto Actualizado --> ' + objContact);            
        }
        UPDATE ltsContact;        
        System.debug('Update  --> ' + ltsContact);
        List<Contact> ltsContactQuery = [SELECT Id, FirstName, LastName, Languages__c, CreatedDate FROM Contact ORDER BY CreatedDate DESC];
        System.debug('Contactos --> ' + ltsContactQuery);
    }
    
	public static void contactDelete(Id contactId){
        Contact objContact =[SELECT Id, FirstName FROM Contact WHERE Id=:contactId];
        DELETE objContact;
        System.debug('Delete');
        List<Contact> ltsContactQuery = [SELECT Id, FirstName, LastName, Languages__c, CreatedDate FROM Contact ORDER BY CreatedDate DESC];
        System.debug('Contactos --> ' + ltsContactQuery);
    }    
}