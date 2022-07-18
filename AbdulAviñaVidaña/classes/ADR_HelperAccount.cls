public class ADR_HelperAccount {
	
    public Static void CreateContactRelated(List<Account> lstAccount){
        set<Id> setId = new set<Id>();
        System.debug('list Account: '+lstAccount);
        for(Account objAccount: lstAccount){
            setId.add(objAccount.Id);
        }
        setContactValue(setId);
    }
    
    public Static void setContactValue(set<Id> setId){
        List<Contact> lstCont = new List<Contact>();
        for(Id idAcc: setId){
            Contact objContact = new Contact();
            objContact.AccountId = idAcc;
            objContact.FirstName = 'Ruben';
        objContact.LastName = 'Lopez';
        objContact.Email = 'Merik@adraco.com';
         	lstCont.add(objContact);
        }
        INSERT lstCont;
        System.debug('Lista de contactos: '+lstCont);
    }
}