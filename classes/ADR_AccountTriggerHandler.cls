public class ADR_AccountTriggerHandler {
    public static void createContactRelated(List<Account> lstAccount){
        System.debug('Account List: ' + lstAccount);
        Set<Id> setIdAcc = new Set<Id>();
        for(Account objAccount: lstAccount){
            
            SetIdAcc.add(objAccount.Id);
            
        }
        setContactValue(setIdAcc);
    }
    
    public static void setContactValue(set<Id> setIdAcc){
        
        List<Contact> lstContact = new List<Contact>();
        for(Id idAcc: setIdAcc){
            Contact objContact = new Contact();
            objContact.AccountId = idAcc;
            objContact.LastName = 'Martinez';
            objContact.FirstName = 'David';
            objContact.Email = 'contact@salesforce.com';
            lstContact.add(objContact);          
        }
       // INSERT lstContact;
        System.debug('List' + lstContact);
    }
    
     
}