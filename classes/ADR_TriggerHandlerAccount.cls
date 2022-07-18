public class ADR_TriggerHandlerAccount {
    public static void createContactRelated(List<Account> lstAccount){
        system.debug('Lista Account' + lstAccount);
        set <Id> setId = new set<Id>();
        for(Account objAccount: lstAccount){
            setId.add(objAccount.Id);
        }
        setContactValue(setId);
    }
    
    public static void setContactValue(set<Id> setId){
        system.debug('Insert Contact Trigger');
        List<Contact> lstContact = new List<Contact>();
        for(Id idAcc: setId){
            Contact objContact = new Contact();
            objContact.AccountId = idAcc;
            objContact.FirstName = 'Rodrigo';
            objContact.LastName = 'Narvaez';
            objContact.Email = 'RodriN@test.com';
            lstContact.add(objContact);
        }
        INSERT lstContact;
        System.debug('Lista de Contact' + lstContact);
    }
}