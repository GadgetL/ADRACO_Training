public class ADR_AccountTriggerHandler {
    public static void createContactRelated(List<Account> lstAccount){
        System.debug('List Account--> ' + lstAccount);
        set<Id> setId = new set<Id>();
        for(Account objAccount : lstAccount){
         	setId.add(objAccount.Id);   
        }
        setContactValue(setId);
    }
    
    public static void setContactValue(set<Id> setId){
        System.debug('Insert Contact Trigger-->');
        List<Contact> lstContact = new List<Contact>();
        for(Id idAcc : setId){
            Contact objContact = new Contact();
            objContact.FirstName = 'Name New Helper';
            objContact.LastName = 'Help New List';
            objContact.email = 'helper_new@email.com';     
            objContact.AccountId = idAcc;
            lstContact.add(objContact);
        }
        INSERT lstContact;
        System.debug('List Contact-> ' + lstContact);
    }    
}