public class ADR_TriggerHandler {

    public static void createContactRelated(List<Account> lstAccount){
        system.debug('List Account: '+lstAccount);
        set<Id> setId = new set<Id>();
        for(Account objAccount : lstAccount){
            setId.add(objAccount.Id);
        }
        setContactValue(setId);
        
    }
    
    public static void setContactValue(set<Id> setId){
        system.debug('Insert Contact Trigger');
        List<Contact> lstContact = new List<Contact>();
        for(Id idAcc : setId){
            Contact objContact = new Contact();
            objContact.AccountId = idAcc;
            objContact.FirstName = 'Enrique';
        	objContact.LastName='Reyes';
        	objContact.Email='Ereyes@test.com';
            lstContact.add(objContact);
        }
        INSERT lstContact;
        system.debug('List Contact: '+lstContact);
    }
}