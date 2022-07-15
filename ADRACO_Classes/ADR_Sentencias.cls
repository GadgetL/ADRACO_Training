public class ADR_Sentencias {
    public static void insertAccount() {
        Account objAcc = new Account();
        objAcc.Name = 'Test Account Insert';
        objAcc.SLA__c = 'Silver';
        objAcc.SLASerialNumber__c = '7854';
        
        INSERT objAcc;
        
        system.debug('Objeto a insertar: ' + objAcc);
    }
    
    public static void insertContact() {
        Contact objContact = new Contact();
        objContact.FirstName = 'Juan';
        objContact.LastName = 'Perez';
        
        INSERT objContact;
    }
    
    public static void insertLstAccount() {
        List<Account> lstAccounts = new List<Account>();
        
        for(Integer x = 1; x < 4; x++) {
            Account objAcc = new Account();
            objAcc.Name = 'Test Account Insert ' + x;
            objAcc.SLA__c = 'Silver ' + x;
            objAcc.SLASerialNumber__c = '7854 ' + x;
            lstAccounts.add(objAcc);
        }
        
		INSERT lstAccounts;
        
        system.debug('Lista a insertar: ' + lstAccounts);
    }
    
    public static void updateAccount() {
        Account objAccount = [SELECT Id, Name FROM Account WHERE Name = 'Test Account Insert' LIMIT 1];
        objAccount.Name = 'New Name';
        
        UPDATE objAccount;
    }
    
    public static void deleteAccount() {
        Account objAccount = [SELECT Id, Name FROM Account WHERE Name = 'Test Account Insert' LIMIT 1];
        DELETE objAccount;
    }
}