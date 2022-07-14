public class ADR_Trigger {
	public Static void InsertAccount(){
        Account objAcc = new Account();
        objAcc.Name = 'Trigger Account before and after 6';
        objAcc.SLASerialNumber__c = '9991';
        
        INSERT objAcc;
        System.debug('::After:--->'+objAcc);  
    }
    
    public static void insertContact(){
        Account objAcc = new Account();
        objAcc.Name = 'Name before update';
        objAcc.SLASerialNumber__c = '3628';
        INSERT objAcc;
        
        Account objAccount = [SELECT id, Name FROM Account WHERE NAME =: 'Name before update' LIMIT 1];
        
        Contact objContact = new Contact();
        objContact.LastName = 'Luis';
        objContact.FirstName = 'Torres';
        objContact.Email = 'luist@salesforces.com';
        objContact.AccountId = objAccount.Id;
        INSERT objContact;
        System.debug('Insert:' + objContact);
    }

}