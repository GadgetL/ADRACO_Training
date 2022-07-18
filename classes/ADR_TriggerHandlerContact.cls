public class ADR_TriggerHandlerContact {
	public static void createContactRelated(List<Contact> lstContact){
        system.debug('Lista Contact' + lstContact);
        set <Id> setId = new set<Id>();
        for(Contact objContact: lstContact){
            setId.add(objContact.Id);
        }
        setAccountValue(setId);
    }
    
    public static void setAccountValue(set<Id> setId){
        system.debug('Insert Account Trigger');
        List<Account> lstAccount = new List<Account>();
        for(Id idAcc: setId){
            Account objAccount = new Account();
            objAccount.Id = idAcc;
            objAccount.Name = 'Rodrigo';
            lstAccount.add(objAccount);
        }
        UPDATE lstAccount;
        System.debug('Lista de account' + lstAccount);
    }
}