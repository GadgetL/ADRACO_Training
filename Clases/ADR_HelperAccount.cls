public class ADR_HelperAccount {
    public static void createdContactRelated(List<Account> lstAccount){
        system.debug('List Account: '+lstAccount);
        set<Id> setId = new set<Id>();
        for(Account objAccount : lstAccount){
            setId.add(objAccount.id);
        }
        setContactValue(setId);
    }
    
    public static void setContactValue(set<Id> setId){
        SYSTEM.DEBUG('Insert Contact Trigger');
        List<Contact> lstContact = new List<Contact>();
        for(Id idAcc : setId){
            Contact objContact = new Contact();
            objContact.AccountId= IdAcc;
            objContact.FirstName = 'Alma';
            objContact.LastName = 'Lopez';
            objContact.Email = 'Almal@gmail.com';
            lstContact.add(objContact);
        }
        Insert lstContact;
        system.debug('List Contact: '+lstContact);
    }
}